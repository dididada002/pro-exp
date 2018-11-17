package com.pro.exp.model.example;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:17
 */
public enum OrderType {
    ASC("排序升序", " ASC "),
    DESC("排序降序", " DESC ");
    String prefix;
    String mysqlKey;

    OrderType(String prefix, String mysqlKey) {
        this.prefix = prefix;
        this.mysqlKey = mysqlKey;
    }

    public String getPrefix() {
        return prefix;
    }


    public String getMysqlKey() {
        return mysqlKey;
    }

}
