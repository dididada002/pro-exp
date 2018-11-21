package com.pro.exp.model.response;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/19 11:32
 */
@ApiModel("资源返回值")
@Data
public class SysResourceResponse {
    @ApiModelProperty(value="资源编码")
    private String sysResourceId;

    @ApiModelProperty(value="资源名称")
    private String sysResourceName;

    @ApiModelProperty(value="资源标志:UI代表窗体界面控制，DT:代表数据")
    private String sysPowerTag;

    @ApiModelProperty(value="界面控制")
    private String sysPowerRule;

    @ApiModelProperty(value="是否活动    Y或者N  N:删除")
    private String sysIsactive;
}
