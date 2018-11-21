package com.pro.exp.dao.entity;

import java.util.Date;

public class RelationSysEmployeeRole {
    private String relationSysEmployeeRoleId;

    private String relationSysEmployeeRoleName;

    private String sysEmployeeId;

    private String sysRoleId;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getRelationSysEmployeeRoleId() {
        return relationSysEmployeeRoleId;
    }

    public void setRelationSysEmployeeRoleId(String relationSysEmployeeRoleId) {
        this.relationSysEmployeeRoleId = relationSysEmployeeRoleId == null ? null : relationSysEmployeeRoleId.trim();
    }

    public String getRelationSysEmployeeRoleName() {
        return relationSysEmployeeRoleName;
    }

    public void setRelationSysEmployeeRoleName(String relationSysEmployeeRoleName) {
        this.relationSysEmployeeRoleName = relationSysEmployeeRoleName == null ? null : relationSysEmployeeRoleName.trim();
    }

    public String getSysEmployeeId() {
        return sysEmployeeId;
    }

    public void setSysEmployeeId(String sysEmployeeId) {
        this.sysEmployeeId = sysEmployeeId == null ? null : sysEmployeeId.trim();
    }

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
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