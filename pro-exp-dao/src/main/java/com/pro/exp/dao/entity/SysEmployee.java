package com.pro.exp.dao.entity;

import java.util.Date;

public class SysEmployee {
    private String sysEmployeeId;

    private String sysEmployeeName;

    private String sysEmployeeNickname;

    private String idCard;

    private String sysEmployeeNumber;

    private String sysPostId;

    private String sex;

    private String sysEmployeeEmail;

    private String sysEmployeeWechat;

    private String sysEmployeeMobile;

    private String sysDepartmentId;

    private String sysUnitId;

    private String sysIsactive;

    private Date sysCreated;

    private String sysCreatedby;

    private Date sysUpdated;

    private String sysUpdatedby;

    private String sysRemark;

    private String sysEmployeeStatus;

    private String avatar;

    public String getSysEmployeeId() {
        return sysEmployeeId;
    }

    public void setSysEmployeeId(String sysEmployeeId) {
        this.sysEmployeeId = sysEmployeeId == null ? null : sysEmployeeId.trim();
    }

    public String getSysEmployeeName() {
        return sysEmployeeName;
    }

    public void setSysEmployeeName(String sysEmployeeName) {
        this.sysEmployeeName = sysEmployeeName == null ? null : sysEmployeeName.trim();
    }

    public String getSysEmployeeNickname() {
        return sysEmployeeNickname;
    }

    public void setSysEmployeeNickname(String sysEmployeeNickname) {
        this.sysEmployeeNickname = sysEmployeeNickname == null ? null : sysEmployeeNickname.trim();
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard == null ? null : idCard.trim();
    }

    public String getSysEmployeeNumber() {
        return sysEmployeeNumber;
    }

    public void setSysEmployeeNumber(String sysEmployeeNumber) {
        this.sysEmployeeNumber = sysEmployeeNumber == null ? null : sysEmployeeNumber.trim();
    }

    public String getSysPostId() {
        return sysPostId;
    }

    public void setSysPostId(String sysPostId) {
        this.sysPostId = sysPostId == null ? null : sysPostId.trim();
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex == null ? null : sex.trim();
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

    public String getSysEmployeeMobile() {
        return sysEmployeeMobile;
    }

    public void setSysEmployeeMobile(String sysEmployeeMobile) {
        this.sysEmployeeMobile = sysEmployeeMobile == null ? null : sysEmployeeMobile.trim();
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

    public String getSysEmployeeStatus() {
        return sysEmployeeStatus;
    }

    public void setSysEmployeeStatus(String sysEmployeeStatus) {
        this.sysEmployeeStatus = sysEmployeeStatus == null ? null : sysEmployeeStatus.trim();
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar == null ? null : avatar.trim();
    }
}