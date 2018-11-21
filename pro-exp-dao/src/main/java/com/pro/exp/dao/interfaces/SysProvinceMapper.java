package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysProvince;
import com.pro.exp.dao.entity.SysProvinceExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysProvinceMapper {
    int countByExample(SysProvinceExample example);

    int deleteByExample(SysProvinceExample example);

    int deleteByPrimaryKey(String sysProvinceId);

    int insert(SysProvince record);

    int insertSelective(SysProvince record);

    List<SysProvince> selectByExample(SysProvinceExample example);

    SysProvince selectByPrimaryKey(String sysProvinceId);

    int updateByExampleSelective(@Param("record") SysProvince record, @Param("example") SysProvinceExample example);

    int updateByExample(@Param("record") SysProvince record, @Param("example") SysProvinceExample example);

    int updateByPrimaryKeySelective(SysProvince record);

    int updateByPrimaryKey(SysProvince record);
}