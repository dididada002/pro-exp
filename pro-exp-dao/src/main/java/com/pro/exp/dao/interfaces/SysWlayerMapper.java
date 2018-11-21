package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysWlayer;
import com.pro.exp.dao.entity.SysWlayerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysWlayerMapper {
    int countByExample(SysWlayerExample example);

    int deleteByExample(SysWlayerExample example);

    int deleteByPrimaryKey(String sysWlayerId);

    int insert(SysWlayer record);

    int insertSelective(SysWlayer record);

    List<SysWlayer> selectByExample(SysWlayerExample example);

    SysWlayer selectByPrimaryKey(String sysWlayerId);

    int updateByExampleSelective(@Param("record") SysWlayer record, @Param("example") SysWlayerExample example);

    int updateByExample(@Param("record") SysWlayer record, @Param("example") SysWlayerExample example);

    int updateByPrimaryKeySelective(SysWlayer record);

    int updateByPrimaryKey(SysWlayer record);
}