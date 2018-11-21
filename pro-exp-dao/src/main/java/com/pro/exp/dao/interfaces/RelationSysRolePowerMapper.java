package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.RelationSysRolePower;
import com.pro.exp.dao.entity.RelationSysRolePowerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RelationSysRolePowerMapper {
    int countByExample(RelationSysRolePowerExample example);

    int deleteByExample(RelationSysRolePowerExample example);

    int deleteByPrimaryKey(String relationSysRolePowerId);

    int insert(RelationSysRolePower record);

    int insertSelective(RelationSysRolePower record);

    List<RelationSysRolePower> selectByExample(RelationSysRolePowerExample example);

    RelationSysRolePower selectByPrimaryKey(String relationSysRolePowerId);

    int updateByExampleSelective(@Param("record") RelationSysRolePower record, @Param("example") RelationSysRolePowerExample example);

    int updateByExample(@Param("record") RelationSysRolePower record, @Param("example") RelationSysRolePowerExample example);

    int updateByPrimaryKeySelective(RelationSysRolePower record);

    int updateByPrimaryKey(RelationSysRolePower record);
}