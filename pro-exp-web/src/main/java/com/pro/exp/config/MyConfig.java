package com.pro.exp.config;

import com.aliyun.openservices.shade.com.alibaba.fastjson.JSON;
import com.aliyun.openservices.shade.com.alibaba.fastjson.JSONObject;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.context.config.ConfigFileApplicationListener;
import org.springframework.boot.env.EnvironmentPostProcessor;
import org.springframework.core.Ordered;
import org.springframework.core.env.ConfigurableEnvironment;
import org.springframework.core.env.MutablePropertySources;
import org.springframework.core.env.PropertiesPropertySource;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import java.util.Properties;

/**
 * @author: jingteng
 * @date: 2019/10/30 15:49
 */
public class MyConfig implements EnvironmentPostProcessor, Ordered {
    @Override
    public void postProcessEnvironment(ConfigurableEnvironment environment, SpringApplication application) {
        JSONObject jsonObject = new JSONObject();
        URL url = null;
        try {
            url = new URL("http://101.200.58.119:81/spring.application");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            //设置请求方式
            connection.setRequestMethod("GET");
            //连接
            connection.connect();
            //得到响应码
            int responseCode = connection.getResponseCode();
            if(responseCode == HttpURLConnection.HTTP_OK){
                //得到响应流
                InputStream inputStream = connection.getInputStream();
                //将响应流转换成字符串
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                StringBuilder stringBuilder = new StringBuilder();
                String str;
                while ((str = bufferedReader.readLine()) != null) {
                    stringBuilder.append(str);
                }
                String json = stringBuilder.toString();
                jsonObject = JSON.parseObject(json);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        Properties properties = new Properties();
        Map<String, Object> map = jsonObject;
        map.forEach((key, value) -> properties.setProperty(key, (String) value));
        MutablePropertySources propertySources = environment.getPropertySources();
        //addLast 结合下面的 getOrder() 保证顺序 读者也可以试试其他姿势的加载顺序
        propertySources.addLast(new PropertiesPropertySource("myConfig", properties));
    }

    @Override
    public int getOrder() {
        return ConfigFileApplicationListener.DEFAULT_ORDER + 1;
    }
}
