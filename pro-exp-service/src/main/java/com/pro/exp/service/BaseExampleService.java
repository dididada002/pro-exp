package com.pro.exp.service;

import com.github.pagehelper.PageInfo;
import com.pro.exp.model.example.BaseSelectForm;

import java.util.Map;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:11
 */
public interface BaseExampleService {
    /**
     * 查询单表的分页信息
     *
     * @param form
     * @return
     */
    PageInfo<Map<String, Object>> selectByPrimary(BaseSelectForm form);

    /**
     * 使用数据权限查询分页信息，需要检查数据权限的使用这个
     * @param form
     * @param id
     * @return
     */
    PageInfo<Map<String, Object>> selectByPrimaryWithId(BaseSelectForm form, String id);
}
