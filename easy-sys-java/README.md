# easy-sys-java

#### 介绍
easy-sys是一个通用的后台管理系统，实现了用户、菜单、角色、国际化管理四大模块。
其中菜单模块可以管理系统菜单，并且管理菜单对应的权限。角色管理中可以管理角色拥有哪些权限及菜单，角色拥有哪些用户。国际化管理中实现了系统中所有的国际化的后台管理，省去了用户需要在json文件中维护国际化的麻烦。
easy-sys-java是easy-sys后端的Java语言实现。地址[https://gitee.com/fantasylan/easy-sys-java](https://gitee.com/fantasylan/easy-sys-java)
easy-sys-go是easy-sys后端的golang语言的实现。地址[https://gitee.com/fantasylan/easy-sys-go](https://gitee.com/fantasylan/easy-sys-go)
easy-sys-ui是easy-sys的前端框架项目地址[https://gitee.com/fantasylan/easy-sys-ui](https://gitee.com/fantasylan/easy-sys-ui)

Demo演示环境地址：[https://www.fantasylan.cn/sys](https://www.fantasylan.cn/sys)
文档地址：[http://easy-sys.fantasylan.cn](http://easy-sys.fantasylan.cn/)

微信号：Fantasy_Lan

#### 软件架构
使用第三方jar包如下：
    io.jsonwebtoken.jjwt-impl,用于JWT鉴权
	fastjson,格式化json工具
	commons-lang3,通用工具类jar,使用说明[https://www.jianshu.com/p/1886903ed14c](https://www.jianshu.com/p/1886903ed14c)
	mybatis与数据库交互的ORM库
	mybatis-plus，这是Mybatis的增强，文档[https://baomidou.com/guide/](https://baomidou.com/guide/)
	spring-boot-starter-web,springboot依赖

#### 开发环境安装

1.  openjdk下载安装[https://mirrors.huaweicloud.com/openjdk/](https://mirrors.huaweicloud.com/openjdk/)
2.  eclipse win64位下载安装[https://www.genuitec.com/eclipse-packages/get/?pack=eclipse-jee&platform=win64](https://www.genuitec.com/eclipse-packages/get/?pack=eclipse-jee&platform=win64)
3.  配置Java环境变量[https://www.cnblogs.com/cnwutianhao/p/5487758.html](https://www.cnblogs.com/cnwutianhao/p/5487758.html),JAVA_HOME设置为openjdk的解压目录

#### 快速开始

1.  下载代码，在git命令行使用命令git clone https://gitee.com/fantasylan/easy-sys-java.git 
2.  打开Eclipse，菜单File>Import>Maven下面Existing Maven Projects 点击Browse选择下载的代码文件夹，点击Finish即可导入项目。
3.  启动应用，打开easy-sys模块中com.fantasy.easy.sys下的EasySysApplication文件，右键Run as Java Application
3.  运行起动前端项目easy-sys-ui，浏览器打开[http://localhost:8080](http://localhost:8080)

