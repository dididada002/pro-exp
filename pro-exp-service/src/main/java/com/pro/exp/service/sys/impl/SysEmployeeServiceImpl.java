package com.pro.exp.service.sys.impl;

import com.pro.exp.common.Constants;
import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.dao.entity.SysEmployeeExample;
import com.pro.exp.dao.interfaces.SysEmployeeMapper;
import com.pro.exp.service.sys.interfaces.SysEmployeeService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/23 16:30
 */
@Service
public class SysEmployeeServiceImpl implements SysEmployeeService {

    @Autowired
    SysEmployeeMapper mapper;

    @Override
    public Boolean deleteByPrimaryKey(String id) {
        SysEmployee baseCourse = new SysEmployee();
        baseCourse.setSysEmployeeId(id);
        baseCourse.setSysIsactive(Constants.NOT_ACTIVE);
        return mapper.updateByPrimaryKeySelective(baseCourse) > 0 ? true : false;
    }

    @Override
    public String insert(SysEmployee record) {
        record.setSysEmployeeId(IDUtil.generateID());
        record.setSysCreated(new Date());
        record.setSysIsactive(Constants.IS_ACTIVE);
        mapper.insert(record);
        return record.getSysEmployeeId();
    }

    @Override
    public SysEmployee selectByPrimaryKey(String s) {
        return mapper.selectByPrimaryKey(s);
    }

    @Override
    public Boolean updateByPrimaryKey(SysEmployee record) {
        record.setSysUpdated(new Date());
        return mapper.updateByPrimaryKeySelective(record) > 0 ? true : false;
    }

    @Override
    public SysEmployee selectByEmail(String email) {
        SysEmployeeExample example = new SysEmployeeExample();
        example.createCriteria().andSysEmployeeEmailEqualTo(email);
        List<SysEmployee> sysEmployees = mapper.selectByExample(example);
        return sysEmployees != null && sysEmployees.size()>0 ? sysEmployees.get(0) : null;
    }
}
