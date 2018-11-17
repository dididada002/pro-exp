package com.pro.exp.service;

import java.io.Serializable;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:03
 */
public interface BaseService<T, PK extends Serializable> {

    Boolean deleteByPrimaryKey(PK pk);

    String insert(T record);

    T selectByPrimaryKey(PK pk);

    Boolean updateByPrimaryKey(T record);
}
