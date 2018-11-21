package com.pro.exp.dao.entity;

import java.util.Date;

public class SysCity {
    private String sysCityId;

    private String sysProvinceId;

    private String sysCityName;

    private String sysCityCode;

    private String sysZipcode;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysCityId() {
        return sysCityId;
    }

    public void setSysCityId(String sysCityId) {
        this.sysCityId = sysCityId == null ? null : sysCityId.trim();
    }

    public String getSysProvinceId() {
        return sysProvinceId;
    }

    public void setSysProvinceId(String sysProvinceId) {
        this.sysProvinceId = sysProvinceId == null ? null : sysProvinceId.trim();
    }

    public String getSysCityName() {
        return sysCityName;
    }

    public void setSysCityName(String sysCityName) {
        this.sysCityName = sysCityName == null ? null : sysCityName.trim();
    }

    public String getSysCityCode() {
        return sysCityCode;
    }

    public void setSysCityCode(String sysCityCode) {
        this.sysCityCode = sysCityCode == null ? null : sysCityCode.trim();
    }

    public String getSysZipcode() {
        return sysZipcode;
    }

    public void setSysZipcode(String sysZipcode) {
        this.sysZipcode = sysZipcode == null ? null : sysZipcode.trim();
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