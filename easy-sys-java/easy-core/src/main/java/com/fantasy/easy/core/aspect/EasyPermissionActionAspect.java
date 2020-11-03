package com.fantasy.easy.core.aspect;

import java.lang.reflect.Method;

import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import com.fantasy.easy.core.SessionSubjectUtils;
import com.fantasy.easy.core.annotation.EasyPermissionAction;
import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.core.exception.EasyApplicationException;

/**
 * 基础的权限拦截
 * */
@Aspect
@Component
public class EasyPermissionActionAspect {
	
	private static Logger LOG = LoggerFactory.getLogger(EasyPermissionActionAspect.class);
	
	@Value("${easy-sys.demo:false}")
	public boolean isDemo;
	@Value("${easy-sys.demoSuperUser:''}")
	public String demoSuperUser;
	@Value("${easy-sys.demoNotAllowAuth:''}")
	public String demoNotAllowAuth;

    // 定义切点
    @Pointcut("@annotation(com.fantasy.easy.core.annotation.EasyPermissionAction)")
    public void annotationPoinCut(){}

    //使用上面的切点进行环绕鉴权
    @Around(value = "annotationPoinCut()")
    public Object processEasyPermissionAction(ProceedingJoinPoint joinPoint) throws Throwable{
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        EasyPermissionAction action = method.getAnnotation(EasyPermissionAction.class);
        LOG.debug("注解式拦截: "+action.auth()+ "  ANNOTATION 调用方法："+ method.getName() + " 调用类：" + signature.getDeclaringTypeName());
        SysUserEntity user = SessionSubjectUtils.getUserEntity();
        if( user != null && user.getPermissions().contains(action.auth())){ // 判断是否有权限
        	if(checkDemoAllow(action.auth(), user.getName())) {
        		return joinPoint.proceed(); //调用目标方法
        	}
        	throw new EasyApplicationException("Demo演示环境这次请求还是算了吧");
        }else{
            throw new EasyApplicationException("权限不足,缺少权限：" + action.auth());
        }
    }
    
    public boolean checkDemoAllow(String auth, String userName) {
    	if(isDemo) {
    		if(StringUtils.equals(userName, demoSuperUser)) {
    			return true;
    		}
    		String[] demoNotAllowAuthList = demoNotAllowAuth.split(",");
    		for (String notAllowAuth : demoNotAllowAuthList) {
				if(StringUtils.contains(auth, notAllowAuth)) {
					return false;
				}
			}
    	}
    	return true;
    }
}