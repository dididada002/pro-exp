package com.pro.exp.service.vue.interfaces;

import com.pro.exp.dao.entity.VueIcon;

/**
 * @author: jingteng
 * @date: 2019/12/2 13:51
 */
public interface VueIconService {
    Long insert(VueIcon bean);

    VueIcon selectByPrimaryKey(Long id);

    boolean deleteByPrimaryKey(Long id);

    Boolean updateByPrimaryKey(VueIcon bean);
}
