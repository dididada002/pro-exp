package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.BaseNoticeType;
import com.pro.exp.dao.entity.BaseNoticeTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BaseNoticeTypeMapper {
    int countByExample(BaseNoticeTypeExample example);

    int deleteByExample(BaseNoticeTypeExample example);

    int deleteByPrimaryKey(String baseNoticeTypeId);

    int insert(BaseNoticeType record);

    int insertSelective(BaseNoticeType record);

    List<BaseNoticeType> selectByExample(BaseNoticeTypeExample example);

    BaseNoticeType selectByPrimaryKey(String baseNoticeTypeId);

    int updateByExampleSelective(@Param("record") BaseNoticeType record, @Param("example") BaseNoticeTypeExample example);

    int updateByExample(@Param("record") BaseNoticeType record, @Param("example") BaseNoticeTypeExample example);

    int updateByPrimaryKeySelective(BaseNoticeType record);

    int updateByPrimaryKey(BaseNoticeType record);
}