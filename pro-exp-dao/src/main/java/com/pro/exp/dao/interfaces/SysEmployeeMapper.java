package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.dao.entity.SysEmployeeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysEmployeeMapper {
    int countByExample(SysEmployeeExample example);

    int deleteByExample(SysEmployeeExample example);

    int deleteByPrimaryKey(String sysEmployeeId);

    int insert(SysEmployee record);

    int insertSelective(SysEmployee record);

    List<SysEmployee> selectByExample(SysEmployeeExample example);

    SysEmployee selectByPrimaryKey(String sysEmployeeId);

    int updateByExampleSelective(@Param("record") SysEmployee record, @Param("example") SysEmployeeExample example);

    int updateByExample(@Param("record") SysEmployee record, @Param("example") SysEmployeeExample example);

    int updateByPrimaryKeySelective(SysEmployee record);

    int updateByPrimaryKey(SysEmployee record);
}