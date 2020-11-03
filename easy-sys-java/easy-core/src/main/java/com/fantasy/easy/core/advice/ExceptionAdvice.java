/**
 * ExceptionAdvice.java
 * @author Fantasy Lan
 */
package com.fantasy.easy.core.advice;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.exception.EasyApplicationException;
import com.fantasy.easy.core.vo.EasyMessage;

import io.jsonwebtoken.ExpiredJwtException;

import java.lang.reflect.UndeclaredThrowableException;
import java.util.stream.Collectors;

/**
 * @author Fantasy Lan
 * @since 2019年12月4日 : 下午10:32:29
 * 统一异常处理
 */
@RestControllerAdvice
public class ExceptionAdvice {
	
	private static Logger LOG = LoggerFactory.getLogger(ExceptionAdvice.class);

    @ExceptionHandler(EasyApplicationException.class)
    public EasyMessage handleEasyApplicationException(EasyApplicationException e){
    	LOG.debug("ControllerAdvice统一错误handleEasyApplicationException处理");
    	SessionSubjectUtils.setIsException(true);
        return EasyMessage.failMessage(e.getErrorCode(), e.getMessage(), null);
    }
    
    @ExceptionHandler(Exception.class)
    public EasyMessage handleException(Exception e){
    	LOG.debug("ControllerAdvice统一错误handleException处理");
        if(e instanceof EasyApplicationException){
            return handleEasyApplicationException((EasyApplicationException)e);
        }

    	SessionSubjectUtils.setIsException(true);
    	e.printStackTrace();

        return EasyMessage.failMessage("系统错误", e.getMessage(), null);
    }

    @ExceptionHandler(UndeclaredThrowableException.class)
    public EasyMessage handleUndeclaredThrowableException(UndeclaredThrowableException e){
        if(e.getUndeclaredThrowable() instanceof EasyApplicationException){
            return handleEasyApplicationException((EasyApplicationException)e.getUndeclaredThrowable());
        } else {
            return handleException(e);
        }
    }
    
    @ExceptionHandler(ExpiredJwtException.class)
    public EasyMessage handleExpiredJwtException(ExpiredJwtException e){
    	return EasyMessage.tokenExpiredMessage();
    }
    
    
    /**
     * 处理不带任何注解的参数绑定校验异常
     * @param e
     * @return
     */
    @ExceptionHandler(BindException.class)
    public EasyMessage handleBingException(BindException e) {
        String errorMsg = e.getBindingResult().getAllErrors()
                .stream()
                .map(objectError -> ((FieldError)objectError).getField() + ((FieldError)objectError).getDefaultMessage())
                .collect(Collectors.joining(","));
        SessionSubjectUtils.setIsException(true);
        return EasyMessage.failMessage("系统错误", errorMsg, null);
    }

    /**
     * 处理 @RequestBody参数校验异常
     * @param e
     * @return
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public EasyMessage handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        String errorMsg = e.getBindingResult().getAllErrors()
                .stream()
                .map(objectError -> ((FieldError)objectError).getDefaultMessage())
                .collect(Collectors.joining(","));
        SessionSubjectUtils.setIsException(true);
        return EasyMessage.failMessage("系统错误", errorMsg, null);
    }
}
