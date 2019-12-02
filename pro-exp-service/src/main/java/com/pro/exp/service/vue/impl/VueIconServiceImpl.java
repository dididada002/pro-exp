package com.pro.exp.service.vue.impl;

import com.pro.exp.dao.entity.VueIcon;
import com.pro.exp.dao.interfaces.VueIconMapper;
import com.pro.exp.service.vue.interfaces.VueIconService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author: jingteng
 * @date: 2019/12/2 13:51
 */
@Service
public class VueIconServiceImpl implements VueIconService {

    @Autowired
    private VueIconMapper mapper;

    @Override
    public Long insert(VueIcon bean) {
        mapper.insert(bean);
        return bean.getId();
    }

    @Override
    public VueIcon selectByPrimaryKey(Long id) {
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public boolean deleteByPrimaryKey(Long id) {
        int i = mapper.deleteByPrimaryKey(id);
        return i > 0;
    }

    @Override
    public Boolean updateByPrimaryKey(VueIcon bean) {
        return mapper.updateByPrimaryKeySelective(bean) > 0 ? true : false;
    }
}
