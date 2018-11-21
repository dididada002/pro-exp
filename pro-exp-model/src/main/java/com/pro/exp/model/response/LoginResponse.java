package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:56
 */
@ApiModel("登录后返回的信息")
@Data
public class LoginResponse {
    @ApiModelProperty("登录凭证")
    private String token;

    @ApiModelProperty("用户论坛昵称")
    private String sysEmployeeNickname;

    @ApiModelProperty("人员id")
    private String sysEmployeeId;

    @ApiModelProperty("人员姓名")
    private String sysEmployeeName;

    @ApiModelProperty("人员表公司id")
    private String sysCompanyId;

    @ApiModelProperty("人员表公司名称")
    private String sysCompanyName;

    @ApiModelProperty("人员表部门id")
    private String sysDepartmentId;

    @ApiModelProperty("人员表部门名称")
    private String sysDepartmentName;

    @ApiModelProperty("人员表项目小组id")
    private String sysUnitId;

    @ApiModelProperty("人员表项目小组名称")
    private String sysUnitName;

    @ApiModelProperty("人员头像")
    private String avatar;

}
