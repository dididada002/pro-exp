package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.VueIcon;
import com.pro.exp.dao.entity.VueIconExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VueIconMapper {
    long countByExample(VueIconExample example);

    int deleteByExample(VueIconExample example);

    int deleteByPrimaryKey(Long id);

    int insert(VueIcon record);

    int insertSelective(VueIcon record);

    List<VueIcon> selectByExample(VueIconExample example);

    VueIcon selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") VueIcon record, @Param("example") VueIconExample example);

    int updateByExample(@Param("record") VueIcon record, @Param("example") VueIconExample example);

    int updateByPrimaryKeySelective(VueIcon record);

    int updateByPrimaryKey(VueIcon record);
}