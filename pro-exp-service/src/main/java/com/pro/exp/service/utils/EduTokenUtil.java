package com.pro.exp.service.utils;

import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.hejun.lib.util.Base64Util;
import com.hejun.lib.util.StringUtils;
import com.pro.exp.common.Constants;
import org.springframework.util.CollectionUtils;

import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:28
 */
public class EduTokenUtil {
    /**
     * 编码数据
     *
     * @param data
     * @param separator
     * @return
     */
    public static String encode(List<String> data, String separator) {
        return Base64Util.encode(Joiner.on(separator).join(data), StandardCharsets.UTF_8.name());
    }

    /**
     * 解码数据
     *
     * @param token
     * @param separator
     * @return
     */
    public static List<String> decode(String token, String separator) {
        return Splitter.on(separator).trimResults().splitToList(Base64Util.decode(token, StandardCharsets.UTF_8.name()));
    }

    /**
     * 编码Token
     *
     * @param powers 权限下标列表，比如0,1,2,3,4
     * @param id     用户ID
     * @return
     */
    public static String getToken(String powers, String id) {
        String rs = StringUtils.getRandomString(13);
        String token = encode(Lists.newArrayList(rs.substring(0, 3), powers, rs.substring(3, 8),
                id, rs.substring(8, 13)), Constants.TOKEN_SEPARATOR);
        return token;
    }

    /**
     * 解密Token，并且获取权限列表
     *
     * @param token
     * @return
     */
    public static List<Integer> getPowers(String token) {
        List<Integer> powers = null;
        if (StringUtils.isNotEmpty(token)) {
            List<String> data = decode(token, Constants.TOKEN_SEPARATOR);
            if (!CollectionUtils.isEmpty(data) && data.size() >= 5) {
                String powerStr = data.get(1);
                powers = Splitter.on(",").trimResults().splitToList(powerStr)
                        .stream().map(Integer::new).collect(Collectors.toList());
            }
        }
        return powers;
    }

    /**
     * 解密Token，并且获取用户ID
     *
     * @param token
     * @return
     */
    public static String getId(String token) {
        String id = null;
        if (StringUtils.isNotEmpty(token)) {
            List<String> data = decode(token, Constants.TOKEN_SEPARATOR);
            if (!CollectionUtils.isEmpty(data) && data.size() >= 5) {
                id = data.get(3);
            }
        }
        return id;
    }
}
