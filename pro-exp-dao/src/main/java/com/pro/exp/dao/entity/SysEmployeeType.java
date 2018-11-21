package com.pro.exp.dao.entity;

import java.util.Date;

public class SysEmployeeType {
    private String sysEmployeeTypeId;

    private String sysEmployeeTypeName;

    private String sysEmployeeTypeCode;

    private String sysEmployeeTypeFlag;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysEmployeeTypeId() {
        return sysEmployeeTypeId;
    }

    public void setSysEmployeeTypeId(String sysEmployeeTypeId) {
        this.sysEmployeeTypeId = sysEmployeeTypeId == null ? null : sysEmployeeTypeId.trim();
    }

    public String getSysEmployeeTypeName() {
        return sysEmployeeTypeName;
    }

    public void setSysEmployeeTypeName(String sysEmployeeTypeName) {
        this.sysEmployeeTypeName = sysEmployeeTypeName == null ? null : sysEmployeeTypeName.trim();
    }

    public String getSysEmployeeTypeCode() {
        return sysEmployeeTypeCode;
    }

    public void setSysEmployeeTypeCode(String sysEmployeeTypeCode) {
        this.sysEmployeeTypeCode = sysEmployeeTypeCode == null ? null : sysEmployeeTypeCode.trim();
    }

    public String getSysEmployeeTypeFlag() {
        return sysEmployeeTypeFlag;
    }

    public void setSysEmployeeTypeFlag(String sysEmployeeTypeFlag) {
        this.sysEmployeeTypeFlag = sysEmployeeTypeFlag == null ? null : sysEmployeeTypeFlag.trim();
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