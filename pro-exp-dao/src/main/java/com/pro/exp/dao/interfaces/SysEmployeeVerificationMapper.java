package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysEmployeeVerification;
import com.pro.exp.dao.entity.SysEmployeeVerificationExample;
import com.pro.exp.model.biz.EmployeeInfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface SysEmployeeVerificationMapper {
    int countByExample(SysEmployeeVerificationExample example);

    int deleteByExample(SysEmployeeVerificationExample example);

    int deleteByPrimaryKey(String sysEmployeeVerificationId);

    int insert(SysEmployeeVerification record);

    int insertSelective(SysEmployeeVerification record);

    List<SysEmployeeVerification> selectByExample(SysEmployeeVerificationExample example);

    SysEmployeeVerification selectByPrimaryKey(String sysEmployeeVerificationId);

    int updateByExampleSelective(@Param("record") SysEmployeeVerification record, @Param("example") SysEmployeeVerificationExample example);

    int updateByExample(@Param("record") SysEmployeeVerification record, @Param("example") SysEmployeeVerificationExample example);

    int updateByPrimaryKeySelective(SysEmployeeVerification record);

    int updateByPrimaryKey(SysEmployeeVerification record);

    EmployeeInfo selectByParam(Map<String, Object> params);
}