package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysCountry;
import com.pro.exp.dao.entity.SysCountryExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysCountryMapper {
    int countByExample(SysCountryExample example);

    int deleteByExample(SysCountryExample example);

    int deleteByPrimaryKey(String sysCountryId);

    int insert(SysCountry record);

    int insertSelective(SysCountry record);

    List<SysCountry> selectByExample(SysCountryExample example);

    SysCountry selectByPrimaryKey(String sysCountryId);

    int updateByExampleSelective(@Param("record") SysCountry record, @Param("example") SysCountryExample example);

    int updateByExample(@Param("record") SysCountry record, @Param("example") SysCountryExample example);

    int updateByPrimaryKeySelective(SysCountry record);

    int updateByPrimaryKey(SysCountry record);
}