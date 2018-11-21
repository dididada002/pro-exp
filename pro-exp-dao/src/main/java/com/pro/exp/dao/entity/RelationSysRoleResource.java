package com.pro.exp.dao.entity;

import java.util.Date;

public class RelationSysRoleResource {
    private String relationSysRoleResourceId;

    private String relationSysRoleResourceName;

    private String sysRoleId;

    private String sysResourceId;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getRelationSysRoleResourceId() {
        return relationSysRoleResourceId;
    }

    public void setRelationSysRoleResourceId(String relationSysRoleResourceId) {
        this.relationSysRoleResourceId = relationSysRoleResourceId == null ? null : relationSysRoleResourceId.trim();
    }

    public String getRelationSysRoleResourceName() {
        return relationSysRoleResourceName;
    }

    public void setRelationSysRoleResourceName(String relationSysRoleResourceName) {
        this.relationSysRoleResourceName = relationSysRoleResourceName == null ? null : relationSysRoleResourceName.trim();
    }

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
    }

    public String getSysResourceId() {
        return sysResourceId;
    }

    public void setSysResourceId(String sysResourceId) {
        this.sysResourceId = sysResourceId == null ? null : sysResourceId.trim();
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