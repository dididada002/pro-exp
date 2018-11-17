package com.pro.exp.service;

import java.util.List;
import java.util.Map;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:38
 */
public interface RedisService {
    /**
     * 添加键值对到Redis
     * @param key
     * @param value
     * @param expire 过期时间，单位：秒
     * @return
     */
    boolean set(final String key, final String value, final long expire);

    /**
     * 获取内容
     *
     * @param key
     * @return
     */
    String get(final String key);

    /**
     * 删除
     * @param key
     * @return
     */
    boolean delete(final String key);

    /**
     * 获取Key的剩余过期时间
     *
     * @param key
     * @return -1表示永不过期；0：表示已过期；
     */
    Long getExpire(final String key);

    /**
     * 设置过期时间
     *
     * @param key
     * @param expire 过期时间，单位：秒
     * @return
     */
    boolean expire(final String key, final long expire);

    /**
     * @param key
     * @param list
     * @param expire
     * @param <T>
     * @return
     */
    <T> boolean setList(final String key, final List<T> list, final long expire);

    /**
     * @param key
     * @param clz
     * @param <T>
     * @return
     */
    <T> List<T> getList(final String key, final Class<T> clz);

    /**
     * @param key
     * @param obj
     * @return
     */
    long leftPush(final String key, final Object obj);

    /**
     * @param key
     * @param obj
     * @return
     */
    long rightPush(final String key, final Object obj);

    /**
     * @param key
     * @return
     */
    String leftPop(final String key);

    /**
     * @param key
     * @return
     */
    String rightPop(final String key);

    /**
     * @param key
     * @param hashKey
     * @param hashValue
     * @param expire
     * @return
     */
    boolean setHash(final String key, final String hashKey, final String hashValue, final long expire);

    /**
     * @param key
     * @param <T>
     * @return
     */
    Map<String, String> getHash(final String key);

    /**
     * @param key
     * @param <T>
     * @return
     */
    String getHashValue(final String key, final String hashKey);

    boolean lock(String key,long expire);

    boolean unlock(String key);
}
