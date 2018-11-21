package com.pro.exp.dao.entity;

import java.util.Date;

public class SysResource {
    private String sysResourceId;

    private String sysResourceName;

    private String sysPowerTag;

    private String sysPowerRule;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysResourceId() {
        return sysResourceId;
    }

    public void setSysResourceId(String sysResourceId) {
        this.sysResourceId = sysResourceId == null ? null : sysResourceId.trim();
    }

    public String getSysResourceName() {
        return sysResourceName;
    }

    public void setSysResourceName(String sysResourceName) {
        this.sysResourceName = sysResourceName == null ? null : sysResourceName.trim();
    }

    public String getSysPowerTag() {
        return sysPowerTag;
    }

    public void setSysPowerTag(String sysPowerTag) {
        this.sysPowerTag = sysPowerTag == null ? null : sysPowerTag.trim();
    }

    public String getSysPowerRule() {
        return sysPowerRule;
    }

    public void setSysPowerRule(String sysPowerRule) {
        this.sysPowerRule = sysPowerRule == null ? null : sysPowerRule.trim();
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