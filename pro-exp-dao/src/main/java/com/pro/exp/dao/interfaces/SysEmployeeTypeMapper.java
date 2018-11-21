package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysEmployeeType;
import com.pro.exp.dao.entity.SysEmployeeTypeExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysEmployeeTypeMapper {
    int countByExample(SysEmployeeTypeExample example);

    int deleteByExample(SysEmployeeTypeExample example);

    int deleteByPrimaryKey(String sysEmployeeTypeId);

    int insert(SysEmployeeType record);

    int insertSelective(SysEmployeeType record);

    List<SysEmployeeType> selectByExample(SysEmployeeTypeExample example);

    SysEmployeeType selectByPrimaryKey(String sysEmployeeTypeId);

    int updateByExampleSelective(@Param("record") SysEmployeeType record, @Param("example") SysEmployeeTypeExample example);

    int updateByExample(@Param("record") SysEmployeeType record, @Param("example") SysEmployeeTypeExample example);

    int updateByPrimaryKeySelective(SysEmployeeType record);

    int updateByPrimaryKey(SysEmployeeType record);
}