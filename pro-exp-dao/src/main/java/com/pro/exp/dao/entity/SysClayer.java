package com.pro.exp.dao.entity;

import java.util.Date;

public class SysClayer {
    private String sysClayerId;

    private String sysWlayerId;

    private String sysClayerName;

    private String sysClayerTag;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysClayerId() {
        return sysClayerId;
    }

    public void setSysClayerId(String sysClayerId) {
        this.sysClayerId = sysClayerId == null ? null : sysClayerId.trim();
    }

    public String getSysWlayerId() {
        return sysWlayerId;
    }

    public void setSysWlayerId(String sysWlayerId) {
        this.sysWlayerId = sysWlayerId == null ? null : sysWlayerId.trim();
    }

    public String getSysClayerName() {
        return sysClayerName;
    }

    public void setSysClayerName(String sysClayerName) {
        this.sysClayerName = sysClayerName == null ? null : sysClayerName.trim();
    }

    public String getSysClayerTag() {
        return sysClayerTag;
    }

    public void setSysClayerTag(String sysClayerTag) {
        this.sysClayerTag = sysClayerTag == null ? null : sysClayerTag.trim();
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