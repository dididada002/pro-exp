package com.pro.exp.exception;

/**
 * @author: jingteng
 * @date: 2019/11/26 22:00
 * 自定义异常
 */
public class JTException extends RuntimeException {
    private String msg;
    private int code = 500;

    public JTException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public JTException(String msg, Throwable e) {
        super(msg, e);
        this.msg = msg;
    }

    public JTException(String msg, int code) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public JTException(String msg, int code, Throwable e) {
        super(msg, e);
        this.msg = msg;
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }



}
