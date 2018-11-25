package com.pro.exp.service.sys.interfaces;

import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.service.BaseService;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/23 16:22
 */
public interface SysEmployeeService extends BaseService<SysEmployee ,String> {
    SysEmployee selectByEmail(String email);
}
