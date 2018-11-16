package com.pro.exp.service.utils;

import com.hejun.lib.util.StringUtils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class IDUtil {

    private static final String ID_PREFIX = "PR";
    private static final String DEFAULT_FORMAT_STRING = "yyyyMMddHHmmssSSS";
    private static final DateTimeFormatter format = DateTimeFormatter.ofPattern(DEFAULT_FORMAT_STRING);

    /**
     * 生成ID
     *
     * @return
     */
    public static String generateID() {
        LocalDateTime localDateTime = LocalDateTime.now();
        String time = localDateTime.format(format);
        return ID_PREFIX + time + StringUtils.getRandomString(4);
    }
}
