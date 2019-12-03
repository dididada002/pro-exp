package com.pro.exp.model.vo;

import java.util.ArrayList;
import java.util.List;

/**
*  Created by liujuan on  2018/12/24
*/
public enum ErrorCode {

    ERROR_100011(100011,"未知异常");
    /**
     * 编码
     */
    private Integer code;


    /**
     * 消息
     */
    private String message;


    ErrorCode(Integer code, String message) {
        this.code = code;
        this.message = message;
    }


    public Integer code() {
        return this.code;
    }


    public String message() {
        return this.message;
    }


    public static Integer getCode(String name) {
        for (ErrorCode resultCode : ErrorCode.values()) {
            if (resultCode.name().equals(name)) {
                return resultCode.code;
            }
        }
        return null;
    }


    public static String getMessage(String name) {
        for (ErrorCode resultCode : ErrorCode.values()) {
            if (resultCode.name().equals(name)) {
                return resultCode.message;
            }
        }
        return name;
    }


    @Override
    public String toString() {
        return this.name();
    }


    /**
     * 测试编码重复
     *
     * @param args
     */
    public static void main(String[] args) {
        ErrorCode[] ResultCodes = ErrorCode.values();
        List<Integer> list = new ArrayList<Integer>();
        for (ErrorCode resultCode : ResultCodes) {
            if (list.contains(resultCode.code)) {
                System.out.println("编码重复：" + resultCode.code);
            } else {
                list.add(resultCode.code());
            }
        }
    }


}