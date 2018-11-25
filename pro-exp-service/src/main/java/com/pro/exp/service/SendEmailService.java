package com.pro.exp.service;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/20 23:46
 */
public interface SendEmailService {
    /**
     * 发送html格式的邮件
     * @param to
     * @param subject
     * @param content
     */
    void sendHtmlMail(String to,String subject,String content);
}
