package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.RelationSysRoleResource;
import com.pro.exp.dao.entity.RelationSysRoleResourceExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RelationSysRoleResourceMapper {
    int countByExample(RelationSysRoleResourceExample example);

    int deleteByExample(RelationSysRoleResourceExample example);

    int deleteByPrimaryKey(String relationSysRoleResourceId);

    int insert(RelationSysRoleResource record);

    int insertSelective(RelationSysRoleResource record);

    List<RelationSysRoleResource> selectByExample(RelationSysRoleResourceExample example);

    RelationSysRoleResource selectByPrimaryKey(String relationSysRoleResourceId);

    int updateByExampleSelective(@Param("record") RelationSysRoleResource record, @Param("example") RelationSysRoleResourceExample example);

    int updateByExample(@Param("record") RelationSysRoleResource record, @Param("example") RelationSysRoleResourceExample example);

    int updateByPrimaryKeySelective(RelationSysRoleResource record);

    int updateByPrimaryKey(RelationSysRoleResource record);
}