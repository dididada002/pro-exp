package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysDistrict;
import com.pro.exp.dao.entity.SysDistrictExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysDistrictMapper {
    int countByExample(SysDistrictExample example);

    int deleteByExample(SysDistrictExample example);

    int deleteByPrimaryKey(String sysDistrictId);

    int insert(SysDistrict record);

    int insertSelective(SysDistrict record);

    List<SysDistrict> selectByExample(SysDistrictExample example);

    SysDistrict selectByPrimaryKey(String sysDistrictId);

    int updateByExampleSelective(@Param("record") SysDistrict record, @Param("example") SysDistrictExample example);

    int updateByExample(@Param("record") SysDistrict record, @Param("example") SysDistrictExample example);

    int updateByPrimaryKeySelective(SysDistrict record);

    int updateByPrimaryKey(SysDistrict record);
}