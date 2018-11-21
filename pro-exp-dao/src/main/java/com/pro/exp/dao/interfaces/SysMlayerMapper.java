package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.SysMlayer;
import com.pro.exp.dao.entity.SysMlayerExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysMlayerMapper {
    int countByExample(SysMlayerExample example);

    int deleteByExample(SysMlayerExample example);

    int deleteByPrimaryKey(String sysMlayerId);

    int insert(SysMlayer record);

    int insertSelective(SysMlayer record);

    List<SysMlayer> selectByExample(SysMlayerExample example);

    SysMlayer selectByPrimaryKey(String sysMlayerId);

    int updateByExampleSelective(@Param("record") SysMlayer record, @Param("example") SysMlayerExample example);

    int updateByExample(@Param("record") SysMlayer record, @Param("example") SysMlayerExample example);

    int updateByPrimaryKeySelective(SysMlayer record);

    int updateByPrimaryKey(SysMlayer record);
}