package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.VueSwiper;
import com.pro.exp.dao.entity.VueSwiperExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VueSwiperMapper {
    long countByExample(VueSwiperExample example);

    int deleteByExample(VueSwiperExample example);

    int deleteByPrimaryKey(Long id);

    int insert(VueSwiper record);

    int insertSelective(VueSwiper record);

    List<VueSwiper> selectByExample(VueSwiperExample example);

    VueSwiper selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") VueSwiper record, @Param("example") VueSwiperExample example);

    int updateByExample(@Param("record") VueSwiper record, @Param("example") VueSwiperExample example);

    int updateByPrimaryKeySelective(VueSwiper record);

    int updateByPrimaryKey(VueSwiper record);
}