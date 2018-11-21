package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysCity;
import com.pro.exp.dao.entity.SysCityExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysCityMapper {
    int countByExample(SysCityExample example);

    int deleteByExample(SysCityExample example);

    int deleteByPrimaryKey(String sysCityId);

    int insert(SysCity record);

    int insertSelective(SysCity record);

    List<SysCity> selectByExample(SysCityExample example);

    SysCity selectByPrimaryKey(String sysCityId);

    int updateByExampleSelective(@Param("record") SysCity record, @Param("example") SysCityExample example);

    int updateByExample(@Param("record") SysCity record, @Param("example") SysCityExample example);

    int updateByPrimaryKeySelective(SysCity record);

    int updateByPrimaryKey(SysCity record);
}