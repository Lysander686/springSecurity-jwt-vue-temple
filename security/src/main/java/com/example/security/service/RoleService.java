package com.example.security.service;

import com.example.security.util.RetResult;

import java.util.Map;

/*
 * @Date:2019/1/7
 * @Description：
 */
public interface RoleService {

    RetResult getRoleListByCond(Map<String, Object> map);

    RetResult getAllRoleList(Map<String, Object> map);

    RetResult getRoleListByPerId(Map<String, Object> map);

    RetResult addRoleById(Map<String, Object> map);

    RetResult delRoleById(Map<String, Object> map);

    RetResult updateById(Map<String, Object> map);
}
