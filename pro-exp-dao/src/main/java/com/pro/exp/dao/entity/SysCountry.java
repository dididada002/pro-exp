package com.pro.exp.dao.entity;

import java.util.Date;

public class SysCountry {
    private String sysCountryId;

    private String sysCountryName;

    private String sysCountryEnglishname;

    private String sysCountryEngname;

    private String sysCountryJetlag;

    private String sysCountryPhonecode;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysCountryId() {
        return sysCountryId;
    }

    public void setSysCountryId(String sysCountryId) {
        this.sysCountryId = sysCountryId == null ? null : sysCountryId.trim();
    }

    public String getSysCountryName() {
        return sysCountryName;
    }

    public void setSysCountryName(String sysCountryName) {
        this.sysCountryName = sysCountryName == null ? null : sysCountryName.trim();
    }

    public String getSysCountryEnglishname() {
        return sysCountryEnglishname;
    }

    public void setSysCountryEnglishname(String sysCountryEnglishname) {
        this.sysCountryEnglishname = sysCountryEnglishname == null ? null : sysCountryEnglishname.trim();
    }

    public String getSysCountryEngname() {
        return sysCountryEngname;
    }

    public void setSysCountryEngname(String sysCountryEngname) {
        this.sysCountryEngname = sysCountryEngname == null ? null : sysCountryEngname.trim();
    }

    public String getSysCountryJetlag() {
        return sysCountryJetlag;
    }

    public void setSysCountryJetlag(String sysCountryJetlag) {
        this.sysCountryJetlag = sysCountryJetlag == null ? null : sysCountryJetlag.trim();
    }

    public String getSysCountryPhonecode() {
        return sysCountryPhonecode;
    }

    public void setSysCountryPhonecode(String sysCountryPhonecode) {
        this.sysCountryPhonecode = sysCountryPhonecode == null ? null : sysCountryPhonecode.trim();
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