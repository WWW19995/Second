package com.fantasy.easy.core.advice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.ResponseBodyAdvice;

import com.alibaba.fastjson.JSON;
import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.vo.EasyMessage;
/**
 * @author Fantasy Lan
 * @since 2019年12月4日 : 下午10:32:29
 * 修改返回统一返回值
 * */
@RestControllerAdvice
// 需要继承ResponseBodyAdvice，重写方法
public class ResponseAdvice implements ResponseBodyAdvice<Object> {
	
	private static Logger LOG = LoggerFactory.getLogger(ResponseAdvice.class);
			
	// 这个方法用来判断是否要执行beforeBodyWrite方法。
	@SuppressWarnings("rawtypes")
	@Override
	public boolean supports(MethodParameter methodParameter, Class aClass) {
		// 在实际项目中可以添加注解来判断哪些需要进行数据的修改
		// 只有需要统一返回值的类才需要返回true，返回false则不会执行下面的方法
		// 特别注意下这个统一返回的时候的判断
		return !SessionSubjectUtils.isException();
	}

	@SuppressWarnings("rawtypes")
	@Override
	public Object beforeBodyWrite(Object data, MethodParameter methodParameter, MediaType mediaType, Class aClass,
			ServerHttpRequest serverHttpRequest, ServerHttpResponse serverHttpResponse) {
		LOG.debug("返回统一的数据");
		//处理返回值是String的情况
		if (data instanceof String) {
			return JSON.toJSONString(EasyMessage.successStringMessage(data));
		}
		// 返回封装的数据
		return EasyMessage.successMessage(data);
	}
}