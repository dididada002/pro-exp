package com.pro.exp.service.base.impl;

import com.pro.exp.common.Constants;
import com.pro.exp.dao.entity.BaseNoticeType;
import com.pro.exp.dao.interfaces.BaseNoticeTypeMapper;
import com.pro.exp.service.base.interfaces.BaseNoticeTypeService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 23:09
 */
@Service
public class BaseNoticeTypeServiceImpl implements BaseNoticeTypeService {
    @Autowired
    BaseNoticeTypeMapper mapper;

    @Override
    public Boolean deleteByPrimaryKey(String s) {
        BaseNoticeType baseCourse = new BaseNoticeType();
        baseCourse.setBaseNoticeTypeId(s);
        baseCourse.setSysIsactive(Constants.NOT_ACTIVE);
        return mapper.updateByPrimaryKeySelective(baseCourse) > 0 ? true : false;
    }

    @Override
    public String insert(BaseNoticeType record) {
        record.setBaseNoticeTypeId(IDUtil.generateID());
        record.setSysCreated(new Date());
        record.setSysIsactive(Constants.IS_ACTIVE);
        mapper.insert(record);
        return record.getBaseNoticeTypeId();
    }

    @Override
    public BaseNoticeType selectByPrimaryKey(String s) {
        return mapper.selectByPrimaryKey(s);
    }

    @Override
    public Boolean updateByPrimaryKey(BaseNoticeType record) {
        record.setSysUpdated(new Date());
        return mapper.updateByPrimaryKeySelective(record) > 0 ? true : false;
    }
}
