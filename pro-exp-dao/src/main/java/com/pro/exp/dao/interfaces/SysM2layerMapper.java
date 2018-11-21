package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysM2layer;
import com.pro.exp.dao.entity.SysM2layerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysM2layerMapper {
    int countByExample(SysM2layerExample example);

    int deleteByExample(SysM2layerExample example);

    int deleteByPrimaryKey(String sysM2layerId);

    int insert(SysM2layer record);

    int insertSelective(SysM2layer record);

    List<SysM2layer> selectByExample(SysM2layerExample example);

    SysM2layer selectByPrimaryKey(String sysM2layerId);

    int updateByExampleSelective(@Param("record") SysM2layer record, @Param("example") SysM2layerExample example);

    int updateByExample(@Param("record") SysM2layer record, @Param("example") SysM2layerExample example);

    int updateByPrimaryKeySelective(SysM2layer record);

    int updateByPrimaryKey(SysM2layer record);
}