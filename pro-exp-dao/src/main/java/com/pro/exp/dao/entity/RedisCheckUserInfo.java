package com.pro.exp.dao.entity;

import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/23 16:07
 */
@Data
public class RedisCheckUserInfo {
    private String username;

    private String password;

    private String email;

    private String mobile;

    private String code;
}
