package com.pro.exp.service.sys.impl;

import com.pro.exp.dao.entity.SysEmployeeVerification;
import com.pro.exp.dao.interfaces.SysEmployeeMapper;
import com.pro.exp.dao.interfaces.SysEmployeeVerificationMapper;
import com.pro.exp.service.sys.interfaces.SysEmployeeVerificationService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/23 16:01
 */
@Service
public class SysEmployeeVerificationServiceImpl implements SysEmployeeVerificationService {

    @Autowired
    SysEmployeeVerificationMapper mapper;

    @Override
    public Boolean deleteByPrimaryKey(String s) {
        return null;
    }

    @Override
    public String insert(SysEmployeeVerification record) {
        record.setSysEmployeeId(IDUtil.generateID());
        record.setSysCreated(new Date());
        mapper.insert(record);
        return record.getSysEmployeeVerificationId();
    }

    @Override
    public SysEmployeeVerification selectByPrimaryKey(String s) {
        return null;
    }

    @Override
    public Boolean updateByPrimaryKey(SysEmployeeVerification record) {
        return null;
    }
}
