package com.pro.exp.dao.entity;

import java.util.Date;

public class BaseNoticeType {
    private String baseNoticeTypeId;

    private String baseNoticeTypeName;

    private String baseNoticeTypeFlag;

    private String baseNoticeTypeReplied;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getBaseNoticeTypeId() {
        return baseNoticeTypeId;
    }

    public void setBaseNoticeTypeId(String baseNoticeTypeId) {
        this.baseNoticeTypeId = baseNoticeTypeId == null ? null : baseNoticeTypeId.trim();
    }

    public String getBaseNoticeTypeName() {
        return baseNoticeTypeName;
    }

    public void setBaseNoticeTypeName(String baseNoticeTypeName) {
        this.baseNoticeTypeName = baseNoticeTypeName == null ? null : baseNoticeTypeName.trim();
    }

    public String getBaseNoticeTypeFlag() {
        return baseNoticeTypeFlag;
    }

    public void setBaseNoticeTypeFlag(String baseNoticeTypeFlag) {
        this.baseNoticeTypeFlag = baseNoticeTypeFlag == null ? null : baseNoticeTypeFlag.trim();
    }

    public String getBaseNoticeTypeReplied() {
        return baseNoticeTypeReplied;
    }

    public void setBaseNoticeTypeReplied(String baseNoticeTypeReplied) {
        this.baseNoticeTypeReplied = baseNoticeTypeReplied == null ? null : baseNoticeTypeReplied.trim();
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