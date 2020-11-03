/**
 * fantasy
 */
package com.fantasy.easy.sys.filter;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.fantasy.easy.core.Const;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.core.util.JWTUtil;
import com.fantasy.easy.core.vo.EasyMessage;
import com.fantasy.easy.sys.user.service.SysUserService;

import io.jsonwebtoken.ExpiredJwtException;

/**
 * @author fantasy 2020年7月27日 下午12:22:49
 */
@Component
@Order(10) //过滤器加载的顺序 默认Integer.MAXVALUE
@WebFilter(urlPatterns = "/*",filterName = "easyLoginFilter") //拦截所有路径
public class EasyLoginFilter implements Filter {

	@Value("${easy-sys.noAuthPath}")
	public String noAuthPath;
	public String[] noAuthPaths;

	@Autowired
	private SysUserService sysUserService;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		if(StringUtils.isBlank(noAuthPath)){
			noAuthPaths = new String[0];
		}else{
			noAuthPaths = noAuthPath.split(",");
		}
	}

	@Override
	public void destroy() {

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see javax.servlet.Filter#doFilter(javax.servlet.ServletRequest,
	 * javax.servlet.ServletResponse, javax.servlet.FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		try{
			if(checkAllow(req) || checkLogin(req)){
				SessionSubjectUtils.setLocal(req.getSession(false));
				chain.doFilter(request, response);
			}else {
				try {
					Long userId = getLoginUserIdByToken(req);
					if(userId != null){
						SysUserEntity userEntity =  sysUserService.getUserByUserId(userId);
						sysUserService.buildSession(userEntity, req);
						chain.doFilter(request, response);
					}else{
						resp.setHeader("content-type", "text/html;charset=UTF-8");
						OutputStream out = response.getOutputStream();
						out.write(JSON.toJSONString(EasyMessage.failMessage("login error", "请登录", null)).getBytes("UTF-8"));
					}
				} catch (Exception e) {
					if(e instanceof ExpiredJwtException) {
						resp.setHeader("content-type", "text/html;charset=UTF-8");
						OutputStream out = response.getOutputStream();
						out.write(JSON.toJSONString(EasyMessage.tokenExpiredMessage()).getBytes("UTF-8"));
					} else {
						throw e;
					}
				}
				
			}
		}finally {
			SessionSubjectUtils.remove(); // 释放掉, 防止线程重用的时候，数据不对
		}
	}

	private boolean checkAllow(HttpServletRequest req){
		String uri = req.getRequestURI();
		for (String path: noAuthPaths) {
			if(path.equals(uri)){
				return true;
			}
		}
		return false;
	}

	private boolean checkLogin(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		if(session == null){
			return false;
		}
		if (session.getAttribute(Const.USER_INFO_SESSION) == null){
			return false;
		}
		return true;
	}

	private Long getLoginUserIdByToken(HttpServletRequest req){
		String token = req.getHeader("X-Token");
		if(token == null){
			return null;
		}
		try {
			Long userId = Long.parseLong(JWTUtil.getClaim(token).get("userId").toString());
			return userId;
		}catch (Exception e){
			throw e;
		}
	}
}