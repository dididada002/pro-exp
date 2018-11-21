package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysCompany;
import com.pro.exp.dao.entity.SysCompanyExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysCompanyMapper {
    int countByExample(SysCompanyExample example);

    int deleteByExample(SysCompanyExample example);

    int deleteByPrimaryKey(String sysCompanyId);

    int insert(SysCompany record);

    int insertSelective(SysCompany record);

    List<SysCompany> selectByExample(SysCompanyExample example);

    SysCompany selectByPrimaryKey(String sysCompanyId);

    int updateByExampleSelective(@Param("record") SysCompany record, @Param("example") SysCompanyExample example);

    int updateByExample(@Param("record") SysCompany record, @Param("example") SysCompanyExample example);

    int updateByPrimaryKeySelective(SysCompany record);

    int updateByPrimaryKey(SysCompany record);
}