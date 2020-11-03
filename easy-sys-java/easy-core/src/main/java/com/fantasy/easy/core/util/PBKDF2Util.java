package com.fantasy.easy.core.util;


import java.math.BigInteger;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;

import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fantasy.easy.core.advice.ExceptionAdvice;

public class PBKDF2Util {

	private static Logger LOG = LoggerFactory.getLogger(ExceptionAdvice.class);
 
    public static final String PBKDF2_ALGORITHM = "PBKDF2WithHmacSHA1";
 
 
    public static final int SALT_BYTE_SIZE = 32 / 2;         //盐的长度
    public static final int HASH_BIT_SIZE = 128 * 4;         //生成密文的长度
    public static final int PBKDF2_ITERATIONS = 1000;        //迭代次数

    /**
     * @auther: Ragty
     * @describe: 对输入的密码进行验证
     * @param: [attemptedPassword(待验证密码), encryptedPassword(密文), salt(盐值)]
     * @return: boolean
     * @date: 2018/11/2
     */
    public static boolean authenticate(String attemptedPassword, String encryptedPassword, String salt) {
        String encryptedAttemptedPassword = "";
        if(attemptedPassword == null || encryptedPassword == null || salt == null){
            return false;
        }
        try{
            // 用相同的盐值对用户输入的密码进行加密
            encryptedAttemptedPassword = getEncryptedPassword(attemptedPassword, salt);
        }catch (Exception e){
            LOG.debug("获取加密的时候报错" + e.getLocalizedMessage());
        }
        // 把加密后的密文和原密文进行比较，相同则验证成功，否则失败
        return encryptedAttemptedPassword.equals(encryptedPassword);
    }

    /**
     * @auther: Ragty
     * @describe: 生成密文
     * @param: [password(明文密码), salt(盐值)]
     * @return: java.lang.String
     * @date: 2018/11/2
     */
    public static String getEncryptedPassword(String password, String salt) throws NoSuchAlgorithmException,
            InvalidKeySpecException {
 
        KeySpec spec = new PBEKeySpec(password.toCharArray(), salt.getBytes(), PBKDF2_ITERATIONS, HASH_BIT_SIZE);
        SecretKeyFactory f = SecretKeyFactory.getInstance(PBKDF2_ALGORITHM);
        byte[] b = f.generateSecret(spec).getEncoded();
        return toHex(b);
    }

    /**
     * @auther: Ragty
     * @describe: 通过加密的强随机数生成盐(最后转换为16进制)
     * @param: []
     * @return: java.lang.String
     * @date: 2018/11/2
     */
    public static String generateSalt() throws NoSuchAlgorithmException {
        SecureRandom random = SecureRandom.getInstance("SHA1PRNG");
        byte[] salt = new byte[SALT_BYTE_SIZE];
        random.nextBytes(salt);
        return toHex(salt);
    }

    /**
     * @auther: Ragty
     * @describe: 二进制字符串转十六进制字符串
     * @param: [array]
     * @return: java.lang.String
     * @date: 2018/11/2
     */
    private static String toHex(byte[] array) {
        BigInteger bi = new BigInteger(1, array);
        String hex = bi.toString(16);
        int paddingLength = (array.length * 2) - hex.length();
        if (paddingLength > 0)
            return String.format("%0" + paddingLength + "d", 0) + hex;
        else
            return hex;
    }

    public static void main(String[] args) throws  Exception {
        String salt = "eff2f4ea075481cf784f2b1251b13c35";
        LOG.debug("salt =" + salt);
        String  a = getEncryptedPassword("123456", salt);
        LOG.debug(a);
        LOG.debug("--------------");
        LOG.debug(String.valueOf(authenticate("123456", a, salt)));
//        for (int i = 0; i < 100; i++) {
//            LOG.debug(generateSalt());
//        }
    }
}