package com.pro.proexpweb.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiDescription;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spi.service.ApiListingScannerPlugin;
import springfox.documentation.spi.service.contexts.DocumentationContext;
import springfox.documentation.spring.web.plugins.Docket;

import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 0:57
 */
@Configuration
public class Swagger2Config {

    @Value("${swagger.show:true}")
    private boolean show;

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .enable(show)
                .apiInfo(apiInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.pro.proexpweb.controller"))
                .paths(PathSelectors.any())
                .build();
    }
    //构建 api文档的详细信息函数
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                //页面标题
                .title("公司管理平台API")
                //创建人
                // .contact(new Contact("Kim", "http://www.bytebeats.com", "likaikai@hejun.com"))
                //版本号
                .version("1.0")
                //描述
                .description("用于公司管理平台的API描述")
                .build();
    }

    //@Component
    class SwaggerAdition implements ApiListingScannerPlugin {

        @Override
        public List<ApiDescription> apply(DocumentationContext context) {
            context.getApiInfo();
            return null;
        }

        @Override
        public boolean supports(DocumentationType documentationType) {
            return DocumentationType.SWAGGER_2.equals(documentationType);
        }
    }
}
