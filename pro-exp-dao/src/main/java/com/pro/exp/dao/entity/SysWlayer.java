package com.pro.exp.dao.entity;

import java.util.Date;

public class SysWlayer {
    private String sysWlayerId;

    private String sysM2layerId;

    private String sysWlayerName;

    private String sysWlayerTag;

    private String sysWlayerHttp;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysWlayerId() {
        return sysWlayerId;
    }

    public void setSysWlayerId(String sysWlayerId) {
        this.sysWlayerId = sysWlayerId == null ? null : sysWlayerId.trim();
    }

    public String getSysM2layerId() {
        return sysM2layerId;
    }

    public void setSysM2layerId(String sysM2layerId) {
        this.sysM2layerId = sysM2layerId == null ? null : sysM2layerId.trim();
    }

    public String getSysWlayerName() {
        return sysWlayerName;
    }

    public void setSysWlayerName(String sysWlayerName) {
        this.sysWlayerName = sysWlayerName == null ? null : sysWlayerName.trim();
    }

    public String getSysWlayerTag() {
        return sysWlayerTag;
    }

    public void setSysWlayerTag(String sysWlayerTag) {
        this.sysWlayerTag = sysWlayerTag == null ? null : sysWlayerTag.trim();
    }

    public String getSysWlayerHttp() {
        return sysWlayerHttp;
    }

    public void setSysWlayerHttp(String sysWlayerHttp) {
        this.sysWlayerHttp = sysWlayerHttp == null ? null : sysWlayerHttp.trim();
    }

    public String getSysIsactive() {
        return sysIsactive;
    }

    public void setSysIsactive(String sysIsactive) {
        this.sysIsactive = sysIsactive == null ? null : sysIsactive.trim();
    }

    public Date getSysCreated() {
        return sysCreated;
    }

    public void setSysCreated(Date sysCreated) {
        this.sysCreated = sysCreated;
    }

    public String getSysCreatedby() {
        return sysCreatedby;
    }

    public void setSysCreatedby(String sysCreatedby) {
        this.sysCreatedby = sysCreatedby == null ? null : sysCreatedby.trim();
    }

    public Date getSysUpdated() {
        return sysUpdated;
    }

    public void setSysUpdated(Date sysUpdated) {
        this.sysUpdated = sysUpdated;
    }

    public String getSysUpdatedby() {
        return sysUpdatedby;
    }

    public void setSysUpdatedby(String sysUpdatedby) {
        this.sysUpdatedby = sysUpdatedby == null ? null : sysUpdatedby.trim();
    }

    public String getSysRemark() {
        return sysRemark;
    }

    public void setSysRemark(String sysRemark) {
        this.sysRemark = sysRemark == null ? null : sysRemark.trim();
    }
}