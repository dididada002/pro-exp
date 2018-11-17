package com.pro.exp.model.example;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:15
 */
public enum SelectKeyWordType {

    EQ("SQL条件查询等于", "eq", " = "),
    GT("SQL条件查询大于", "gt", " > "),
    LT("SQL条件查询小于", "lt", " < "),
    LIKE("SQL条件查询模糊查询", "like", " LIKE "),
    IN("SQL条件查询包含", "in", " IN "),
    ISNUll("SQL条件查询包含", "is", " IS NUll "),
    IS("SQL条件查询包含", "is", " IS "),
    NEQ("SQL条件查询不等于", "neq", " != ");

    String display;
    String prefix;
    String mysqlKey;

    SelectKeyWordType(String display, String prefix, String mysqlKey) {
        this.display = display;
        this.prefix = prefix;
        this.mysqlKey = mysqlKey;
    }


    public String getDisplay() {
        return display;
    }


    public String getPrefix() {
        return prefix;
    }


    public String getMysqlKey() {
        return mysqlKey;
    }

}
