package com.pro.exp.model.request;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/20 23:23
 */
@Data
@ApiModel("注册激活表单")
public class SignInCheckForm {
    @ApiModelProperty(value = "用户名", required = true, example = "13800138000")
    private String username;

    @ApiModelProperty(value = "密码", required = true)
    private String password;

    @ApiModelProperty(value = "邮箱账号")
    private String email;

    @ApiModelProperty(value = "手机号")
    private String mobile;
}
