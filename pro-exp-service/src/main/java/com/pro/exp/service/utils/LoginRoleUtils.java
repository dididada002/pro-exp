package com.pro.exp.service.utils;

import com.hejun.lib.common.HttpStatus;
import com.hejun.lib.common.exception.ApiRuntimeException;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.dao.entity.SysRole;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.sys.interfaces.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import java.util.Optional;

/**
 * Description: hejun-edu
 * Created by JT on 2018/10/16 16:40
 */
@Component
public class LoginRoleUtils {

    @Autowired
    private RedisService redisService;

    @Autowired
    private SysRoleService sysRoleService;

    private static LoginRoleUtils loginRoleUtils;

    @PostConstruct
    public void init() {
        loginRoleUtils = this;
        loginRoleUtils.sysRoleService = this.sysRoleService;
        loginRoleUtils.redisService = this.redisService;
    }

    public static String getLoginRoleId(String employeeId) {
        String sysRoleId = loginRoleUtils.redisService.get(RedisKeys.USER_ROLE+employeeId);
        if (Optional.ofNullable(sysRoleId).isPresent()) {
            return sysRoleId;
        } else {
            throw new ApiRuntimeException(HttpStatus.INTERNAL_SERVER_ERROR, 1, "信息丢失，请重新登录，如果仍然有相同问题请联系管理员");
        }
    }

    public static SysRole getLoginRole(String employeeId) {
        String loginRoleId = getLoginRoleId(employeeId);
        SysRole sysRole = loginRoleUtils.sysRoleService.selectByPrimaryKey(loginRoleId);
        return sysRole;
    }
}
