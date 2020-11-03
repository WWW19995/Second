/**
 * GlobalAttributes.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.core.vo;

import com.fantasy.easy.core.entity.SysUserEntity;

/**
 * @author Fantasy Lan
 * @since 2019年12月5日 : 上午12:08:06
 */
public class GlobalAttributes {

	private SysUserEntity userEntity;
	
	private boolean isException;

	private boolean isLogin;


	public boolean isLogin() {
		return isLogin;
	}

	public void setLogin(boolean login) {
		isLogin = login;
	}

	public SysUserEntity getUserEntity() {
		return userEntity;
	}

	public void setUserEntity(SysUserEntity userEntity) {
		this.userEntity = userEntity;
	}

	/**
	 * @return the isException
	 */
	public boolean isException() {
		return isException;
	}

	/**
	 * @param isException the isException to set
	 */
	public void setException(boolean isException) {
		this.isException = isException;
	}
	
	
}
