package com.pro.exp.dao.entity;

import java.util.Date;

public class SysRole {
    private String sysRoleId;

    private String sysRoleName;

    private String sysEmployeeTypeCode;

    private String sysUpRoleId;

    private String sysCompanyId;

    private String sysDepartmentId;

    private String sysUnitId;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysRoleId() {
        return sysRoleId;
    }

    public void setSysRoleId(String sysRoleId) {
        this.sysRoleId = sysRoleId == null ? null : sysRoleId.trim();
    }

    public String getSysRoleName() {
        return sysRoleName;
    }

    public void setSysRoleName(String sysRoleName) {
        this.sysRoleName = sysRoleName == null ? null : sysRoleName.trim();
    }

    public String getSysEmployeeTypeCode() {
        return sysEmployeeTypeCode;
    }

    public void setSysEmployeeTypeCode(String sysEmployeeTypeCode) {
        this.sysEmployeeTypeCode = sysEmployeeTypeCode == null ? null : sysEmployeeTypeCode.trim();
    }

    public String getSysUpRoleId() {
        return sysUpRoleId;
    }

    public void setSysUpRoleId(String sysUpRoleId) {
        this.sysUpRoleId = sysUpRoleId == null ? null : sysUpRoleId.trim();
    }

    public String getSysCompanyId() {
        return sysCompanyId;
    }

    public void setSysCompanyId(String sysCompanyId) {
        this.sysCompanyId = sysCompanyId == null ? null : sysCompanyId.trim();
    }

    public String getSysDepartmentId() {
        return sysDepartmentId;
    }

    public void setSysDepartmentId(String sysDepartmentId) {
        this.sysDepartmentId = sysDepartmentId == null ? null : sysDepartmentId.trim();
    }

    public String getSysUnitId() {
        return sysUnitId;
    }

    public void setSysUnitId(String sysUnitId) {
        this.sysUnitId = sysUnitId == null ? null : sysUnitId.trim();
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