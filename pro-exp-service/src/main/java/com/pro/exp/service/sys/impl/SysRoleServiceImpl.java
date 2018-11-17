package com.pro.exp.service.sys.impl;

import com.pro.exp.common.Constants;
import com.pro.exp.dao.entity.SysRole;
import com.pro.exp.dao.interfaces.SysRoleMapper;
import com.pro.exp.service.sys.interfaces.SysRoleService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:08
 */
@Service
public class SysRoleServiceImpl implements SysRoleService {
    @Autowired
    SysRoleMapper mapper;


    @Override
    public Boolean deleteByPrimaryKey(String id) {
        SysRole baseCourse = new SysRole();
        baseCourse.setSysRoleId(id);
        baseCourse.setSysIsactive(Constants.NOT_ACTIVE);
        return mapper.updateByPrimaryKeySelective(baseCourse) > 0 ? true : false;
    }

    @Override
    public String insert(SysRole record) {
        record.setSysRoleId(IDUtil.generateID());
        record.setSysCreated(new Date());
        record.setSysIsactive(Constants.IS_ACTIVE);
        mapper.insert(record);
        return record.getSysRoleId();
    }

    @Override
    public SysRole selectByPrimaryKey(String s) {
        return mapper.selectByPrimaryKey(s);
    }

    @Override
    public Boolean updateByPrimaryKey(SysRole record) {
        record.setSysUpdated(new Date());
        return mapper.updateByPrimaryKeySelective(record) > 0 ? true : false;
    }
}
