package com.fantasy.easy.sys.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.fantasy.easy.core.entity.SysUserEntity;
import com.fantasy.easy.sys.role.SysRoleEntity;

@Mapper
public interface SysUserMapper extends BaseMapper<SysUserEntity> {
    /**
     * 查询用户的所有权限
     * @param userId  用户ID
     */
    List<String> queryAllAuthByUserId(Long userId);

    /**
     * 根据用户名查询用户
     */
    SysUserEntity selectOne (@Param("userName") String userName) ;

    /**
     * 查询用户的所有菜单ID
     */
    List<Long> queryAllMenuId(Long userId);

    /**
     * 自定义sql分页
     * @param page
     * @return
     */
    IPage<SysUserEntity> getUserByRole(IPage<SysUserEntity> page, @Param("v") SysRoleEntity roleEntity);
}