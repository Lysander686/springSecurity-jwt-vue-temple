package com.example.security.service;

import com.example.security.entity.Permission;
import com.example.security.entity.User;
import com.example.security.util.RetResult;

import java.util.List;

/* @Author:YangWenbin
 * @Description：
 * @Date:20:44 2019/1/5
 * @ModifiedBy:
 */

public interface UserService {


    User findByUsername(String username);


    RetResult login(String username, String password);

    RetResult getUserInfo(String username);

    /* 获取菜单树
     * @param username
     * @return
     */
    RetResult getMenuTree(String username);

    Object getAllMenuTree(List<Permission> permissionList);

    List<Permission> getMenuTreeByPid(Long per_parent_id);


}
