package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysClayer;
import com.pro.exp.dao.entity.SysClayerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysClayerMapper {
    int countByExample(SysClayerExample example);

    int deleteByExample(SysClayerExample example);

    int deleteByPrimaryKey(String sysClayerId);

    int insert(SysClayer record);

    int insertSelective(SysClayer record);

    List<SysClayer> selectByExample(SysClayerExample example);

    SysClayer selectByPrimaryKey(String sysClayerId);

    int updateByExampleSelective(@Param("record") SysClayer record, @Param("example") SysClayerExample example);

    int updateByExample(@Param("record") SysClayer record, @Param("example") SysClayerExample example);

    int updateByPrimaryKeySelective(SysClayer record);

    int updateByPrimaryKey(SysClayer record);
}