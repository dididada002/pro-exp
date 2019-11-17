package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.VueWeekend;
import com.pro.exp.dao.entity.VueWeekendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VueWeekendMapper {
    long countByExample(VueWeekendExample example);

    int deleteByExample(VueWeekendExample example);

    int deleteByPrimaryKey(Long id);

    int insert(VueWeekend record);

    int insertSelective(VueWeekend record);

    List<VueWeekend> selectByExample(VueWeekendExample example);

    VueWeekend selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") VueWeekend record, @Param("example") VueWeekendExample example);

    int updateByExample(@Param("record") VueWeekend record, @Param("example") VueWeekendExample example);

    int updateByPrimaryKeySelective(VueWeekend record);

    int updateByPrimaryKey(VueWeekend record);
}