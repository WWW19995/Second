/**
 * SessionSubjectUtils.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.core;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.core.vo.GlobalAttributes;

/**
 * @author Fantasy Lan
 * @since 2019年12月5日 : 上午12:11:25
 */
public class SessionSubjectUtils {
	
	private static Logger LOG = LoggerFactory.getLogger(SessionSubjectUtils.class);

	private static ThreadLocal<GlobalAttributes> local = new ThreadLocal<GlobalAttributes>();
	
	public static void setIsException(boolean isException) {
		getLocal().setException(isException);
	}
	
	public static boolean isException() {
		return getLocal().isException();
	}
	
	private static GlobalAttributes getLocal(){
		GlobalAttributes l = local.get();
		if(l == null) {
			l = new GlobalAttributes();
			local.set(l);
		}
		return l;
	}

	public static SysUserEntity getUserEntity(){
		return getLocal().getUserEntity();
	}

	public static void setLocal(HttpSession session){
		LOG.debug("设置SessionSubjectUtils，setLocal");
		GlobalAttributes l = local.get();
		if(l == null) {
			l = new GlobalAttributes();
			local.set(l);
		}
		setIsException(false); // 防止被重用的时候状态不对，这个为true的时候就不会去返回统一的数据
		// 只有Session不为空的时候才可以设置
		if(session != null){
			SysUserEntity userEntity = (SysUserEntity) session.getAttribute(Const.USER_INFO_SESSION);
			l.setUserEntity(userEntity);
			if(userEntity == null){
				setLogin(false);
			}else{
				setLogin(true);
			}
		}
	}

	public static Long getUserId() {
		SysUserEntity userEntity = getUserEntity();
		if(userEntity == null){
			return 0L;
		}else{
			return userEntity.getUserId();
		}
	}

	public static void setLogin(boolean login){
		getLocal().setLogin(login);
	}

	public static boolean isLogin() {
		return getLocal().isLogin();
	}

	public static void remove() {
		local.remove();
	}
}
