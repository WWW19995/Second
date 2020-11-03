package com.fantasy.easy.core.annotation;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface EasyPermissionAction {
    String auth(); // 简单的需要权限，对应菜单上面的权限点
}