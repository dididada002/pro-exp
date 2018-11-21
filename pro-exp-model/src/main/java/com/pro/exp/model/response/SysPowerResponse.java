package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/19 11:14
 */
@ApiModel("角色操作权限返回值")
@Data
public class SysPowerResponse {

    @ApiModelProperty("权限编码")
    private String sysPowerId;

    @ApiModelProperty("权限名称：添加、修改、删除、查询")
    private String sysPowerName;

    @ApiModelProperty("权限标志:添加：sinsert、修改:sedit、删除:sdelete、查询:sselect")
    private String sysPowerTag;

    @ApiModelProperty("是否活动    Y或者N  N:删除")
    private String sysIsactive;
}
