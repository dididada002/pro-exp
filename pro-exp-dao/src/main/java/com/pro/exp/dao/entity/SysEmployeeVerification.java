package com.pro.exp.dao.entity;

import java.util.Date;

public class SysEmployeeVerification {
    private String sysEmployeeVerificationId;

    private String sysEmployeeId;

    private String sysEmployeeVerificationName;

    private String sysEmployeePassword;

    private String sysEmployeePhone;

    private String sysEmployeeEmail;

    private String sysEmployeeWechat;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    public String getSysEmployeeVerificationId() {
        return sysEmployeeVerificationId;
    }

    public void setSysEmployeeVerificationId(String sysEmployeeVerificationId) {
        this.sysEmployeeVerificationId = sysEmployeeVerificationId == null ? null : sysEmployeeVerificationId.trim();
    }

    public String getSysEmployeeId() {
        return sysEmployeeId;
    }

    public void setSysEmployeeId(String sysEmployeeId) {
        this.sysEmployeeId = sysEmployeeId == null ? null : sysEmployeeId.trim();
    }

    public String getSysEmployeeVerificationName() {
        return sysEmployeeVerificationName;
    }

    public void setSysEmployeeVerificationName(String sysEmployeeVerificationName) {
        this.sysEmployeeVerificationName = sysEmployeeVerificationName == null ? null : sysEmployeeVerificationName.trim();
    }

    public String getSysEmployeePassword() {
        return sysEmployeePassword;
    }

    public void setSysEmployeePassword(String sysEmployeePassword) {
        this.sysEmployeePassword = sysEmployeePassword == null ? null : sysEmployeePassword.trim();
    }

    public String getSysEmployeePhone() {
        return sysEmployeePhone;
    }

    public void setSysEmployeePhone(String sysEmployeePhone) {
        this.sysEmployeePhone = sysEmployeePhone == null ? null : sysEmployeePhone.trim();
    }

    public String getSysEmployeeEmail() {
        return sysEmployeeEmail;
    }

    public void setSysEmployeeEmail(String sysEmployeeEmail) {
        this.sysEmployeeEmail = sysEmployeeEmail == null ? null : sysEmployeeEmail.trim();
    }

    public String getSysEmployeeWechat() {
        return sysEmployeeWechat;
    }

    public void setSysEmployeeWechat(String sysEmployeeWechat) {
        this.sysEmployeeWechat = sysEmployeeWechat == null ? null : sysEmployeeWechat.trim();
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