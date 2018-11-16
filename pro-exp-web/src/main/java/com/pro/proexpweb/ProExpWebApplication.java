package com.pro.proexpweb;

import com.pro.proexpweb.config.DataSourceConfig;
import com.pro.proexpweb.config.MybatisConfigProperties;
import lombok.extern.log4j.Log4j2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
@EnableScheduling
@EnableCaching //开启缓存
@EnableTransactionManagement(proxyTargetClass=true) // 开启事务管理
@EnableAsync
@ComponentScan(basePackages = {"com.pro.proexpweb"})
@EnableConfigurationProperties({MybatisConfigProperties.class, DataSourceConfig.class})
@ServletComponentScan
@EnableSwagger2
@Log4j2
public class ProExpWebApplication {

    public static void main(String[] args) {
        SpringApplication.run(ProExpWebApplication.class, args);
    }
}
