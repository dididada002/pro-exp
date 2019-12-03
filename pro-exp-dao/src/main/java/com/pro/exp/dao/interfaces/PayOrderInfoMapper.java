package com.pro.exp.dao.interfaces;

import com.pro.exp.dao.entity.PayOrderInfo;
import com.pro.exp.dao.entity.PayOrderInfoExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PayOrderInfoMapper {
    int countByExample(PayOrderInfoExample example);

    int deleteByExample(PayOrderInfoExample example);

    int deleteByPrimaryKey(Long id);

    int insert(PayOrderInfo record);

    int insertSelective(PayOrderInfo record);

    List<PayOrderInfo> selectByExample(PayOrderInfoExample example);

    PayOrderInfo selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") PayOrderInfo record, @Param("example") PayOrderInfoExample example);

    int updateByExample(@Param("record") PayOrderInfo record, @Param("example") PayOrderInfoExample example);

    int updateByPrimaryKeySelective(PayOrderInfo record);

    int updateByPrimaryKey(PayOrderInfo record);
}