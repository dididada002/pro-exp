package com.pro.exp.service.base.impl;

import com.pro.exp.common.Constants;
import com.pro.exp.dao.entity.BaseNotice;
import com.pro.exp.dao.interfaces.BaseNoticeMapper;
import com.pro.exp.service.base.interfaces.BaseNoticeService;
import com.pro.exp.service.utils.IDUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/25 22:45
 */
@Service
public class BaseNoticeServiceImpl implements BaseNoticeService {

    @Autowired
    BaseNoticeMapper mapper;

    @Override
    public Boolean deleteByPrimaryKey(String s) {
        BaseNotice baseCourse = new BaseNotice();
        baseCourse.setBaseNoticeId(s);
        baseCourse.setSysIsactive(Constants.NOT_ACTIVE);
        return mapper.updateByPrimaryKeySelective(baseCourse) > 0 ? true : false;
    }

    @Override
    public String insert(BaseNotice record) {
        record.setBaseNoticeId(IDUtil.generateID());
        record.setSysCreated(new Date());
        record.setSysIsactive(Constants.IS_ACTIVE);
        mapper.insert(record);
        return record.getBaseNoticeId();
    }

    @Override
    public BaseNotice selectByPrimaryKey(String s) {
        return mapper.selectByPrimaryKey(s);
    }

    @Override
    public Boolean updateByPrimaryKey(BaseNotice record) {
        record.setSysUpdated(new Date());
        return mapper.updateByPrimaryKeySelective(record) > 0 ? true : false;
    }
}
