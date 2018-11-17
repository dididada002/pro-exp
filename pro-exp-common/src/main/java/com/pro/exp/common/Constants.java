package com.pro.exp.common;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:21
 */
public class Constants {
    /**
     * 工程名称
     */
    public static final String PROJECT_NAME = "hejun_edu";

    /**
     * 权限标签列表，初始化缓存
     */
    public static final List<String> ALL_POWERS = new ArrayList<>();

    /**
     * 激活的标志
     */
    public static final String IS_ACTIVE = "Y";

    /**
     * 逻辑删除的标志
     */
    public static final String NOT_ACTIVE = "N";

    /**
     * 当前届标志
     */
    public static final String IS_CURRENT_SESSION = "Y";

    /**
     * 非当前届标志
     */
    public static final String NOT_CURRENT_SESSION = "N";
    /**
     * token在http header的名称
     */
    public static final String TOKEN_HEADER = "hj-token";

    /**
     * 权限标签--查询
     */
    public static final String POWER_SELECT = "sselect";

    /**
     * 权限标签--更新
     */
    public static final String POWER_UPDATE = "supdate";

    /**
     * 权限标签--删除
     */
    public static final String POWER_DELETE = "sdelete";

    /**
     * 权限标签--插入
     */
    public static final String POWER_INSERT = "sinsert";

    /**
     * 权限标签--上传
     */
    public static final String POWER_UPLOAD = "supload";

    /**
     * 权限标签--下载
     */
    public static final String POWER_DOWNLOAD = "sdownload";

    /**
     * 默认表别名
     */
    public static final String TABLE_ALIAS = "TB0";
    /**
     * Join查询
     */
    public static final String JOIN_TABLE = "LEFT JOIN ";

    /**
     * 默认表别名+点
     */
    public static final String TABLE_ALIAS_DOT = "TB0.";

    public static final String POWER_TAG_UI = "UI";

    public static final String POWER_TAG_DT = "DT";

    public static final String POWER_TAG_SESSION = "SE";

    /**
     * Token的有效期，2小时
     */
    public static final long TOKEN_PERIOD = TimeUnit.HOURS.toSeconds(24);

    /**
     * 统计数据的有效期，1个月
     */
    public static final long STATISTICS_PERIOD = TimeUnit.DAYS.toSeconds(30);

    /**
     * Token的失效阀值，
     */
    public static final long TOKEN_THRESHOLD = TimeUnit.HOURS.toSeconds(1);

    /**
     * Token分隔符
     */
    public static final String TOKEN_SEPARATOR = "-";

    /**
     * DT权限规则的配置最小长度
     */
    public static final int MIN_DT_RULE_LENGTH = 5;

    /**
     * UI权限规则的配置最小长度
     */
    public static final int MIN_UI_RULE_LENGTH = 4;

    // /**
    // * 权限规则的配置长度
    // */
    // public static final String GENSEE_KEY = "javahj-";

    /**
     * 短信过期时间,10分钟
     */
    public static final long SMS_SEND_DEAD_LINE = TimeUnit.MINUTES.toSeconds(10);

    /**
     * 默认本机IP
     */
    public static final String LOCAL_IP = "127.0.0.1";
}
