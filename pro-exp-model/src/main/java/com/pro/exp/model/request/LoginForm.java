package com.pro.exp.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 1:02
 */
@ApiModel("登陆表单")
@Data
public class LoginForm {

    @ApiModelProperty(value = "用户名", required = true, example = "13800138000")
    private String username;

    @ApiModelProperty(value = "密码", required = true)
    private String password;
}
