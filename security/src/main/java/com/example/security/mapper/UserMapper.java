package com.example.security.mapper;

import com.example.security.entity.User;

/*
 * @Date:2019/1/4
 * @Description：
 */

public interface UserMapper {

    User selectByUserName(String username);

    String selectPasswordByUsername(String username);

    Integer selectUserNameIsExist(String username);

    User selectUserByUsername(String username);
}
