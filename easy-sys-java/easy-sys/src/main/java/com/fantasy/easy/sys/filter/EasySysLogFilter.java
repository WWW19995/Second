/**
 * fantasy
 */
package com.fantasy.easy.sys.filter;

import java.io.IOException;
import java.util.Date;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.sys.log.SysLogEntity;
import com.fantasy.easy.sys.log.mapper.SysLogMapper;

/**
 * @author fantasy 2020年7月27日 下午12:22:49
 */
@Component
@Order(1) //过滤器加载的顺序 默认Integer.MAXVALUE
@WebFilter(urlPatterns = "/*",filterName = "easySysLogFilter") //拦截所有路径
public class EasySysLogFilter implements Filter {
	
	private static Logger LOG = LoggerFactory.getLogger(EasySysLogFilter.class);

	@Autowired
	private SysLogMapper sysLogMapper;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
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
		Date start = new Date();
		try{
			chain.doFilter(request, response);
		}finally {
			try {
				SysLogEntity logEntity = new SysLogEntity();
				Date end = new Date();
				logEntity.setLogLatency(end.getTime() - start.getTime() );
				logEntity.setLogStart(start);
				logEntity.setLogEnd(end);
				logEntity.setCreateTime(new Date());
				logEntity.setLogIp(req.getRemoteAddr());
				logEntity.setLogUri(req.getRequestURI());
				logEntity.setLogStatus(resp.getStatus());
				logEntity.setLogMethod(req.getMethod());
				logEntity.setLogUserId(SessionSubjectUtils.getUserId());
				sysLogMapper.insert(logEntity);
			}catch (Exception e) {
				LOG.error(e.getLocalizedMessage());
			}
		}
	}

}