package com.pro.exp.model.example;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:16
 */
public enum SelectLinkType {
    AND("并且", " AND "),
    OR("或者", " OR ");
    String prefix;
    String mysqlKey;

    SelectLinkType(String prefix, String mysqlKey) {
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
