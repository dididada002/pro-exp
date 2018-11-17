package com.pro.exp.service.utils;

import com.hejun.lib.common.HttpStatus;
import com.hejun.lib.common.exception.ApiRuntimeException;
import com.hejun.lib.util.StringUtils;
import com.pro.exp.common.Constants;
import com.pro.exp.common.interfaces.ExtendProperties;
import lombok.extern.log4j.Log4j2;

import java.lang.reflect.Field;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:29
 */
@Log4j2
public class BeanToSqlKey {
    /**
     * 转化属性
     *
     * @param beanKey
     * @return
     */
    public static String toSqlKey(String beanKey) {
        if (beanKey == null) {
            return "";
        }
        String s = beanKey.replaceAll("[A-Z]", " $0");
        String[] key = s.split(" ");
        StringBuilder stringBuilder = new StringBuilder();
        for (String s1 : key) {
            stringBuilder.append(s1.toLowerCase());
            stringBuilder.append("_");
        }
        stringBuilder.delete(stringBuilder.length() - 1, stringBuilder.length());
        return stringBuilder.toString();
    }

    /**
     * 获取关联关系
     *
     * @param object
     * @return
     */
    public static String getJoinObjectRelation(String object) {
        StringBuilder beanKeys = new StringBuilder();
        // 拿到该类
        Class<?> clz = null;
        try {
            clz = Class.forName("com.hejun.edu.dao.entity." + object);
        } catch (ClassNotFoundException e) {
            throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "类名反射失败");
        }
        // 获取实体类的所有属性，返回Field数组
        Field[] fields = clz.getDeclaredFields();

        for (Field field : fields) {
            if (!field.isAnnotationPresent(ExtendProperties.class)) {
                String name = field.getName();
                if (StringUtils.isEmpty(name)) {
                    return "";
                }
                if (StringUtils.isNotEmpty(name) && name.endsWith("Id") && !name.equalsIgnoreCase(object + "Id")) {
                    String[] ids = name.split("Id");
                    String nameSqlKey = toSqlKey(name);
                    String tableSql = toSqlKey(ids[0]);
                    beanKeys.append(Constants.JOIN_TABLE).append(tableSql).append(" AS ")
                            .append(ids[0]);
                    beanKeys.append(" ON ").append(Constants.TABLE_ALIAS_DOT).append(nameSqlKey)
                            .append(" = ").append(ids[0]).append(".").append(nameSqlKey).append(" ");
                }
//                beanKeys.append(Constants.TABLE_ALIAS).append(".").append(toSqlKey(name));
//                beanKeys.append(" AS ").append(name).append(", ");
//                log.info(field.getGenericType() + field.getName());//打印该类的所有属性类型
            }
        }
//        beanKeys.delete(beanKeys.length() - 2, beanKeys.length());
        return beanKeys.toString();
    }

    /**
     * 获取字段
     *
     * @param object
     * @return
     */
    public static String getObjectValue(String object) {
        StringBuilder beanKeys = new StringBuilder();
        // 拿到该类
        Class<?> clz = null;
        try {
            clz = Class.forName("com.hejun.edu.dao.entity." + object);
        } catch (ClassNotFoundException e) {
            throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "类名反射失败");
        }
        // 获取实体类的所有属性，返回Field数组
        Field[] fields = clz.getDeclaredFields();

        for (Field field : fields) {
            if (!field.isAnnotationPresent(ExtendProperties.class)) {
                String name = field.getName();
                if (StringUtils.isEmpty(name)) {
                    return "";
                }
                beanKeys.append(Constants.TABLE_ALIAS).append(".").append(toSqlKey(name));
                beanKeys.append(" AS ").append(name).append(", ");
                if (StringUtils.isNotEmpty(name) && name.endsWith("Id") && !name.equalsIgnoreCase(object + "Id")) {
                    String beanKey = name.replace("Id", "Name");
                    String[] ids = name.split("Id");

                    beanKeys.append(ids[0]).append(".").append(toSqlKey(beanKey));
                    beanKeys.append(" AS ").append(beanKey).append(", ");
                }
//                log.info(field.getGenericType() + field.getName());//打印该类的所有属性类型
            }
        }
        beanKeys.delete(beanKeys.length() - 2, beanKeys.length());
        return beanKeys.toString();
    }

    public static String getObjectName(String object) {
        String s = toSqlKey(object);
        return s.substring(1, s.length());
    }

}
