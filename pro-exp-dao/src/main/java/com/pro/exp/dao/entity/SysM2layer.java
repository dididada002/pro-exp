package com.pro.exp.dao.entity;

import java.util.Date;

public class SysM2layer {
    private String sysM2layerId;

    private String sysMlayerId;

    private String sysM2layerName;

    private String sysM2layerTag;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    private String sysUrl;

    private Integer sysPriority;

    private String sysComponent;

    private String sysIcon;

    public String getSysM2layerId() {
        return sysM2layerId;
    }

    public void setSysM2layerId(String sysM2layerId) {
        this.sysM2layerId = sysM2layerId == null ? null : sysM2layerId.trim();
    }

    public String getSysMlayerId() {
        return sysMlayerId;
    }

    public void setSysMlayerId(String sysMlayerId) {
        this.sysMlayerId = sysMlayerId == null ? null : sysMlayerId.trim();
    }

    public String getSysM2layerName() {
        return sysM2layerName;
    }

    public void setSysM2layerName(String sysM2layerName) {
        this.sysM2layerName = sysM2layerName == null ? null : sysM2layerName.trim();
    }

    public String getSysM2layerTag() {
        return sysM2layerTag;
    }

    public void setSysM2layerTag(String sysM2layerTag) {
        this.sysM2layerTag = sysM2layerTag == null ? null : sysM2layerTag.trim();
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

    public String getSysUrl() {
        return sysUrl;
    }

    public void setSysUrl(String sysUrl) {
        this.sysUrl = sysUrl == null ? null : sysUrl.trim();
    }

    public Integer getSysPriority() {
        return sysPriority;
    }

    public void setSysPriority(Integer sysPriority) {
        this.sysPriority = sysPriority;
    }

    public String getSysComponent() {
        return sysComponent;
    }

    public void setSysComponent(String sysComponent) {
        this.sysComponent = sysComponent == null ? null : sysComponent.trim();
    }

    public String getSysIcon() {
        return sysIcon;
    }

    public void setSysIcon(String sysIcon) {
        this.sysIcon = sysIcon == null ? null : sysIcon.trim();
    }
}