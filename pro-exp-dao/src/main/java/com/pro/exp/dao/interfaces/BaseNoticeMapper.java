package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.BaseNotice;
import com.pro.exp.dao.entity.BaseNoticeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseNoticeMapper {
    int countByExample(BaseNoticeExample example);

    int deleteByExample(BaseNoticeExample example);

    int deleteByPrimaryKey(String baseNoticeId);

    int insert(BaseNotice record);

    int insertSelective(BaseNotice record);

    List<BaseNotice> selectByExample(BaseNoticeExample example);

    BaseNotice selectByPrimaryKey(String baseNoticeId);

    int updateByExampleSelective(@Param("record") BaseNotice record, @Param("example") BaseNoticeExample example);

    int updateByExample(@Param("record") BaseNotice record, @Param("example") BaseNoticeExample example);

    int updateByPrimaryKeySelective(BaseNotice record);

    int updateByPrimaryKey(BaseNotice record);
}