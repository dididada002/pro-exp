package com.pro.exp.dao.entity;

import java.util.Date;

public class BaseNotice {
    private String baseNoticeId;

    private String baseNoticeName;

    private String baseNoticeTitle;

    private String baseNoticeText;

    private String targetSysCompanyIds;

    private String targetSysDepartmentIds;

    private String targetSysUnitIds;

    private String targetSysEmployeeIds;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    private String baseNoticeTypeId;

    public String getBaseNoticeId() {
        return baseNoticeId;
    }

    public void setBaseNoticeId(String baseNoticeId) {
        this.baseNoticeId = baseNoticeId == null ? null : baseNoticeId.trim();
    }

    public String getBaseNoticeName() {
        return baseNoticeName;
    }

    public void setBaseNoticeName(String baseNoticeName) {
        this.baseNoticeName = baseNoticeName == null ? null : baseNoticeName.trim();
    }

    public String getBaseNoticeTitle() {
        return baseNoticeTitle;
    }

    public void setBaseNoticeTitle(String baseNoticeTitle) {
        this.baseNoticeTitle = baseNoticeTitle == null ? null : baseNoticeTitle.trim();
    }

    public String getBaseNoticeText() {
        return baseNoticeText;
    }

    public void setBaseNoticeText(String baseNoticeText) {
        this.baseNoticeText = baseNoticeText == null ? null : baseNoticeText.trim();
    }

    public String getTargetSysCompanyIds() {
        return targetSysCompanyIds;
    }

    public void setTargetSysCompanyIds(String targetSysCompanyIds) {
        this.targetSysCompanyIds = targetSysCompanyIds == null ? null : targetSysCompanyIds.trim();
    }

    public String getTargetSysDepartmentIds() {
        return targetSysDepartmentIds;
    }

    public void setTargetSysDepartmentIds(String targetSysDepartmentIds) {
        this.targetSysDepartmentIds = targetSysDepartmentIds == null ? null : targetSysDepartmentIds.trim();
    }

    public String getTargetSysUnitIds() {
        return targetSysUnitIds;
    }

    public void setTargetSysUnitIds(String targetSysUnitIds) {
        this.targetSysUnitIds = targetSysUnitIds == null ? null : targetSysUnitIds.trim();
    }

    public String getTargetSysEmployeeIds() {
        return targetSysEmployeeIds;
    }

    public void setTargetSysEmployeeIds(String targetSysEmployeeIds) {
        this.targetSysEmployeeIds = targetSysEmployeeIds == null ? null : targetSysEmployeeIds.trim();
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

    public String getBaseNoticeTypeId() {
        return baseNoticeTypeId;
    }

    public void setBaseNoticeTypeId(String baseNoticeTypeId) {
        this.baseNoticeTypeId = baseNoticeTypeId == null ? null : baseNoticeTypeId.trim();
    }
}