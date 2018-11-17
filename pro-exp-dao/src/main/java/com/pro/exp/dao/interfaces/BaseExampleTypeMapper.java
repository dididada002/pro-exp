package com.pro.exp.dao.interfaces;

import java.util.List;
import java.util.Map;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:25
 */
public interface BaseExampleTypeMapper {
    /**
     * 自定义sql查询
     *
     * @param whereSql  columns\tableName\aliasName\extendSql
     * @return
     */
    List<Map<String, Object>> selectCustomByExample(Map<String, Object> whereSql);

    /**
     * 自定义join链接sql查询
     *
     * @param whereSql
     * @return
     */
    List<Map<String, Object>> selectJoinByExample(Map<String, Object> whereSql);
}
