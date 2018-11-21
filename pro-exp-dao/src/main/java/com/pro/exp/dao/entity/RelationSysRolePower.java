package com.pro.exp.dao.entity;

import java.util.Date;

public class RelationSysRolePower {
    private String relationSysRolePowerId;

    private String relationSysRolePowerName;

    private String sysRoleId;

    private String sysPowerId;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getRelationSysRolePowerId() {
        return relationSysRolePowerId;
    }

    public void setRelationSysRolePowerId(String relationSysRolePowerId) {
        this.relationSysRolePowerId = relationSysRolePowerId == null ? null : relationSysRolePowerId.trim();
    }

    public String getRelationSysRolePowerName() {
        return relationSysRolePowerName;
    }

    public void setRelationSysRolePowerName(String relationSysRolePowerName) {
        this.relationSysRolePowerName = relationSysRolePowerName == null ? null : relationSysRolePowerName.trim();
    }

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
    }

    public String getSysPowerId() {
        return sysPowerId;
    }

    public void setSysPowerId(String sysPowerId) {
        this.sysPowerId = sysPowerId == null ? null : sysPowerId.trim();
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