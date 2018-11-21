package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysUnit;
import com.pro.exp.dao.entity.SysUnitExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysUnitMapper {
    int countByExample(SysUnitExample example);

    int deleteByExample(SysUnitExample example);

    int deleteByPrimaryKey(String sysUnitId);

    int insert(SysUnit record);

    int insertSelective(SysUnit record);

    List<SysUnit> selectByExample(SysUnitExample example);

    SysUnit selectByPrimaryKey(String sysUnitId);

    int updateByExampleSelective(@Param("record") SysUnit record, @Param("example") SysUnitExample example);

    int updateByExample(@Param("record") SysUnit record, @Param("example") SysUnitExample example);

    int updateByPrimaryKeySelective(SysUnit record);

    int updateByPrimaryKey(SysUnit record);
}