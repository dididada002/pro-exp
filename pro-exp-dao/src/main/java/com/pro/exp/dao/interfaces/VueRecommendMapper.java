package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.VueRecommend;
import com.pro.exp.dao.entity.VueRecommendExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VueRecommendMapper {
    long countByExample(VueRecommendExample example);

    int deleteByExample(VueRecommendExample example);

    int deleteByPrimaryKey(Long id);

    int insert(VueRecommend record);

    int insertSelective(VueRecommend record);

    List<VueRecommend> selectByExample(VueRecommendExample example);

    VueRecommend selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") VueRecommend record, @Param("example") VueRecommendExample example);

    int updateByExample(@Param("record") VueRecommend record, @Param("example") VueRecommendExample example);

    int updateByPrimaryKeySelective(VueRecommend record);

    int updateByPrimaryKey(VueRecommend record);
}