package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysPower;
import com.pro.exp.dao.entity.SysPowerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysPowerMapper {
    int countByExample(SysPowerExample example);

    int deleteByExample(SysPowerExample example);

    int deleteByPrimaryKey(String sysPowerId);

    int insert(SysPower record);

    int insertSelective(SysPower record);

    List<SysPower> selectByExample(SysPowerExample example);

    SysPower selectByPrimaryKey(String sysPowerId);

    int updateByExampleSelective(@Param("record") SysPower record, @Param("example") SysPowerExample example);

    int updateByExample(@Param("record") SysPower record, @Param("example") SysPowerExample example);

    int updateByPrimaryKeySelective(SysPower record);

    int updateByPrimaryKey(SysPower record);
}