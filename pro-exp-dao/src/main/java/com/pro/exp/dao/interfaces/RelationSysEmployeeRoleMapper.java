package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.RelationSysEmployeeRole;
import com.pro.exp.dao.entity.RelationSysEmployeeRoleExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RelationSysEmployeeRoleMapper {
    int countByExample(RelationSysEmployeeRoleExample example);

    int deleteByExample(RelationSysEmployeeRoleExample example);

    int deleteByPrimaryKey(String relationSysEmployeeRoleId);

    int insert(RelationSysEmployeeRole record);

    int insertSelective(RelationSysEmployeeRole record);

    List<RelationSysEmployeeRole> selectByExample(RelationSysEmployeeRoleExample example);

    RelationSysEmployeeRole selectByPrimaryKey(String relationSysEmployeeRoleId);

    int updateByExampleSelective(@Param("record") RelationSysEmployeeRole record, @Param("example") RelationSysEmployeeRoleExample example);

    int updateByExample(@Param("record") RelationSysEmployeeRole record, @Param("example") RelationSysEmployeeRoleExample example);

    int updateByPrimaryKeySelective(RelationSysEmployeeRole record);

    int updateByPrimaryKey(RelationSysEmployeeRole record);
}