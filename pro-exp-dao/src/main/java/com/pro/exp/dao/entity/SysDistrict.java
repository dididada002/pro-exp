package com.pro.exp.dao.entity;

import java.util.Date;

public class SysDistrict {
    private String sysDistrictId;

    private String sysCityId;

    private String sysDistrictName;

    private String sysDistrictCode;

    private String sysZipcode;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysDistrictId() {
        return sysDistrictId;
    }

    public void setSysDistrictId(String sysDistrictId) {
        this.sysDistrictId = sysDistrictId == null ? null : sysDistrictId.trim();
    }

    public String getSysCityId() {
        return sysCityId;
    }

    public void setSysCityId(String sysCityId) {
        this.sysCityId = sysCityId == null ? null : sysCityId.trim();
    }

    public String getSysDistrictName() {
        return sysDistrictName;
    }

    public void setSysDistrictName(String sysDistrictName) {
        this.sysDistrictName = sysDistrictName == null ? null : sysDistrictName.trim();
    }

    public String getSysDistrictCode() {
        return sysDistrictCode;
    }

    public void setSysDistrictCode(String sysDistrictCode) {
        this.sysDistrictCode = sysDistrictCode == null ? null : sysDistrictCode.trim();
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