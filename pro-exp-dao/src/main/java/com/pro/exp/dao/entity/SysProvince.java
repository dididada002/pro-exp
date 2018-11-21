package com.pro.exp.dao.entity;

import java.util.Date;

public class SysProvince {
    private String sysProvinceId;

    private String sysCountryId;

    private String sysProvinceName;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysProvinceId() {
        return sysProvinceId;
    }

    public void setSysProvinceId(String sysProvinceId) {
        this.sysProvinceId = sysProvinceId == null ? null : sysProvinceId.trim();
    }

    public String getSysCountryId() {
        return sysCountryId;
    }

    public void setSysCountryId(String sysCountryId) {
        this.sysCountryId = sysCountryId == null ? null : sysCountryId.trim();
    }

    public String getSysProvinceName() {
        return sysProvinceName;
    }

    public void setSysProvinceName(String sysProvinceName) {
        this.sysProvinceName = sysProvinceName == null ? null : sysProvinceName.trim();
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