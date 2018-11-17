package com.pro.proexpweb.utils;

import com.github.pagehelper.util.StringUtil;
import com.hejun.lib.util.GsonUtil;
import com.hejun.lib.util.StringUtils;
import com.pro.exp.common.Constants;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.model.biz.EmployeeInfo;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.utils.EduTokenUtil;
import com.pro.proexpweb.config.SpringBeanLoad;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;

import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.IOException;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 23:18
 */
public class RequestUtil {
    /**
     * 获取远程客户端的IP
     *
     * @return
     * @author xpk
     * @version V1.0
     */
    public static String getRemoteHost(HttpServletRequest request) {
        String ip = request.getHeader("X-Forwarded-For");
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("x-forwarded-for");
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("http_client_ip");
        }
        if (StringUtil.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        // 如果是多级代理，那么取第一个ip为客户ip
        if (ip != null && ip.indexOf(",") != -1) {
            ip = ip.substring(ip.lastIndexOf(",") + 1, ip.length()).trim();
        }
        return "0:0:0:0:0:0:0:1".equals(ip) ? Constants.LOCAL_IP : ip;
    }

    /**
     * 是否移动端
     *
     * @return
     * @author jinjj
     * @version V1.0
     */
    public boolean isMobile(HttpServletRequest request) {
        boolean flag = false;
        String agent = request.getHeader(HttpHeaders.USER_AGENT);
        String[] keywords = {"Android", "iPhone", "iPod", "iPad", "Windows Phone", "MQQBrowser"};
        //排除 Windows 桌面系统
        if (!agent.contains("Windows NT")
                || (agent.contains("Windows NT") && agent.contains("compatible; MSIE 9.0;"))) {
            //排除 苹果桌面系统
            if (!agent.contains("Windows NT") && !agent.contains("Macintosh")) {
                for (String item : keywords) {
                    if (agent.contains(item)) {
                        flag = true;
                        break;
                    }
                }
            }
        }
        return flag;
    }

    /**
     * 获取服务域名
     *
     * @param request
     * @return
     */
    public static String getDomain(HttpServletRequest request) {
        String domain = request.getRequestURL().toString().replace(request.getRequestURI(), "");
        return domain;
    }

    /**
     * @param request
     * @return
     */
    public static EmployeeInfo getEmployeeInfo(HttpServletRequest request) {
        String token = request.getHeader(Constants.TOKEN_HEADER);
        String id = EduTokenUtil.getId(token);
        return getEmployeeInfo(id);
    }

    /**
     * @param id
     * @return
     */
    public static EmployeeInfo getEmployeeInfo(String id) {
        EmployeeInfo info = null;
        RedisService redisService = SpringBeanLoad.getBean(RedisService.class);
        String employeeJson = redisService.get(RedisKeys.USER_INFO + id);
        if (StringUtils.isNotEmpty(employeeJson)) {
            info = GsonUtil.toBean(employeeJson, EmployeeInfo.class);
        }
        return info;
    }

    /**
     * 获取请求体
     *
     * @param request
     * @return
     */
    public static String getRequestBody(HttpServletRequest request) {
        String body = "";
        if (request.getMethod().equals(HttpMethod.POST.name())) {
            StringBuilder sb = new StringBuilder();
            try (BufferedReader bufferedReader = request.getReader()) {
                char[] charBuffer = new char[128];
                int bytesRead;
                while ((bytesRead = bufferedReader.read(charBuffer)) != -1) {
                    sb.append(charBuffer, 0, bytesRead);
                }
            } catch (IOException ex) {
                // swallow silently -- can't get body, won't
            }
            body = sb.toString();
        }
        return body;
    }
}
