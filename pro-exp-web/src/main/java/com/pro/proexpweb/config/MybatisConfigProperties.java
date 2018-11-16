package com.pro.proexpweb.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Component
@ConfigurationProperties(prefix = "mybatis")
@Order(10)
@PropertySource("classpath:mybatis.properties")
public class MybatisConfigProperties {
    private String primaryMapperLocations;
    private String primaryTypeAliasPackage;
    
	public String getPrimaryMapperLocations() {
		return primaryMapperLocations;
	}
	public void setPrimaryMapperLocations(String primaryMapperLocations) {
		this.primaryMapperLocations = primaryMapperLocations;
	}
	public String getPrimaryTypeAliasPackage() {
		return primaryTypeAliasPackage;
	}
	public void setPrimaryTypeAliasPackage(String primaryTypeAliasPackage) {
		this.primaryTypeAliasPackage = primaryTypeAliasPackage;
	}
}