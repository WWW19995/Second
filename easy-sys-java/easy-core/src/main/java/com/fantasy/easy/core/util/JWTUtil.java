package com.fantasy.easy.core.util;

import java.nio.charset.StandardCharsets;
import java.security.Key;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.crypto.spec.SecretKeySpec;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.JwsHeader;
import io.jsonwebtoken.JwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;


/**
 * Created by fantasy on 2020/7/30.
 */
public class JWTUtil {
	
	private static Logger LOG = LoggerFactory.getLogger(JWTUtil.class);

    private static final long EXPIRE = 60 * 1000 * 20; //过期时间
//    private static final long EXPIRE = 5 * 1000 ; //过期时间

    //The JWT signature algorithm we will be using to sign the token
    private  static SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;

    private static byte[] apiKeySecretBytes = null;
    
    // 如果没有配置easy-sys.JWT-Key 那么直接使用默认值
    static {
    	apiKeySecretBytes = SpringUtil.getValue("easy-sys.JWT-Key", "newtrekWangfdsfsfsfsdfsdfdfsfffhthtrte").getBytes(StandardCharsets.UTF_8);
    }
    		
    private static Key signingKey = new SecretKeySpec(apiKeySecretBytes, signatureAlgorithm.getJcaName());

    /**
     * 生成token
     *
     * @param claims 要传送消息map
     * @return
     */
    public static String generate(Map<String,Object> claims) {
        Date nowDate = new Date();
        //过期时间,设定为一分钟
        Date expireDate = new Date(System.currentTimeMillis() + EXPIRE);
        //头部信息,可有可无
        Map<String, Object> header = new HashMap<>(2);
        header.put("typ", "jwt");

        return Jwts.builder().setHeader(header)
                // .setSubject("weimi")//主题
                // .setIssuer("weimi") //发送方
                .setClaims(claims)  //自定义claims
                .setIssuedAt(nowDate)//当前时间
                .setExpiration(expireDate) //过期时间
                .signWith(signingKey, signatureAlgorithm)//签名算法和key
                .compact();
    }

    /**
     * 生成token
     * @param header  传入头部信息map
     * @param claims  要传送消息map
     * @return
     */
    public static String generate( Map<String, Object> header,Map<String,Object> claims) {
        Date nowDate = new Date();
        //过期时间,设定为一分钟
        Date expireDate = new Date(System.currentTimeMillis() + EXPIRE);

        return Jwts.builder().setHeader(header)
                // .setSubject("weimi")//主题
                .setIssuer("weimi") //发送方
                .setClaims(claims)  //自定义claims
                .setIssuedAt(nowDate)//当前时间
                .setExpiration(expireDate) //过期时间
                .signWith(signingKey, signatureAlgorithm)//签名算法和key
                .compact();
    }

    /**
     * 校验是不是jwt签名
     * @param token
     * @return
     */
    public static boolean isSigned(String token){
        return  Jwts.parserBuilder()
                .setSigningKey(signingKey).build()
                .isSigned(token);
    }

    /**
     * 校验签名是否正确
     * @param token
     * @return
     */
    public static boolean verify(String token){
        try {
            Jwts.parserBuilder()
                    .setSigningKey(signingKey).build()
                    .parseClaimsJws(token);
            return true;
        }catch (JwtException  e){
        	LOG.debug(e.getMessage());
            return false;
        }
    }

    /**
     * 获取payload 部分内容（即要传的信息）
     * 使用方法：如获取userId：getClaim(token).get("userId");
     * @param token
     * @return
     */
    public static Claims getClaim(String token) {
        Claims claims = null;
        try {
            claims = Jwts.parserBuilder()
                    .setSigningKey(signingKey).build()
                    .parseClaimsJws(token)
                    .getBody();
        } catch (Exception e) {
            throw e;
        }
        return claims;
    }

    /**
     * 获取头部信息map
     * 使用方法 : getHeader(token).get("alg");
     * @param token
     * @return
     */
    @SuppressWarnings("rawtypes")
	public static JwsHeader getHeader(String token) {
        JwsHeader header = null;
        try {
            header = Jwts.parserBuilder()
                    .setSigningKey(signingKey).build()
                    .parseClaimsJws(token)
                    .getHeader();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return header;
    }

    /**
     * 获取jwt发布时间
     */
    public static Date getIssuedAt(String token) {
        return getClaim(token).getIssuedAt();
    }

    /**
     * 获取jwt失效时间
     */
    public static Date getExpiration(String token) {
        return getClaim(token).getExpiration();
    }

    /**
     * 验证token是否失效
     *
     * @param token
     * @return true:过期   false:没过期
     */
    public static boolean isExpired(String token) {
        try {
            final Date expiration = getExpiration(token);
            return expiration.before(new Date());
        } catch (ExpiredJwtException expiredJwtException) {
            return true;
        }
    }

    /**
     * 直接Base64解密获取header内容
     * @param token
     * @return
     */
    public static String getHeaderByBase64(String token){
        String header = null;
        if (isSigned(token)){
            try {
                byte[] header_byte = Base64.getDecoder().decode(token.split("\\.")[0]);
                header = new String(header_byte);
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }
        return header;
    }

    /**
     * 直接Base64解密获取payload内容
     * @param token
     * @return
     */
    public static String getPayloadByBase64(String token){
        String payload = null;
        if (isSigned(token)) {
            try {
                byte[] payload_byte = Base64.getDecoder().decode(token.split("\\.")[1]);
                payload = new String(payload_byte);
            }catch (Exception e){
                e.printStackTrace();
                return null;
            }
        }
        return payload;
    }

    public static void main(String[] args) {
        //用户自定义信息claims
        Map<String,Object> map = new HashMap<>();
        map.put("userId","test122");
        String token =  generate(map);
        LOG.debug(token);

        LOG.debug("claim:" + getClaim(token).get("userId"));
        LOG.debug("header:" + getHeader(token));
        Claims claims=getClaim(token);

        LOG.debug("签名验证：" + verify("eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJmYW50YXN5IiwiaWF0IjoxNTk2MDcyNTI4LCJzdWIiOiJuZXd0cmVrV2FuZyIsImlzcyI6Im5ld3RyZWtXYW5nIiwidXNlcklkIjo1NTU1LCJ1c2VyTmFtZSI6ImFhZGRhc2RzYSIsImV4cCI6MTU5NjA3MzUyOH0.OhtDzbvQ-2XFGfLEEhYoY9gsHTkB3_xLDF-uED8KIuE"));

        LOG.debug("getHeaderByBase64:" + getHeaderByBase64(token));

        LOG.debug("getPayloadByBase64:" + getPayloadByBase64("eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJmYW50YXN5IiwiaWF0IjoxNTk2MDcyNTI4LCJzdWIiOiJuZXd0cmVrV2FuZyIsImlzcyI6Im5ld3RyZWtXYW5nIiwidXNlcklkIjo1NTU1LCJ1c2VyTmFtZSI6ImFhZGRhc2RzYSIsImV4cCI6MTU5NjA3MzUyOH0.OhtDzbvQ-2XFGfLEEhYoY9gsHTkB3_xLDF-uED8KIuE"));

        SimpleDateFormat sdf=new SimpleDateFormat("yyyy‐MM‐dd hh:mm:ss");
        LOG.debug("签发时间:"+sdf.format(claims.getIssuedAt()));
        LOG.debug("过期时间:"+sdf.format(claims.getExpiration()));
        LOG.debug("当前时间:"+sdf.format(new Date()) );
        LOG.debug("是否过期：" + isExpired("eyJ0eXAiOiJqd3QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VySWQiOiJ0ZXN0MTIyIiwiaWF0IjoxNTk2NjEwNDY5LCJleHAiOjE1OTY2MTA0NzR9.Y_ASNV86fPkHs4dCrqwrC3n09-E0EICpyWYTezFwJOk"));

    }
}