package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysEmployeeVerificationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysEmployeeVerificationExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSysEmployeeVerificationIdIsNull() {
            addCriterion("sys_employee_verification_id is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdIsNotNull() {
            addCriterion("sys_employee_verification_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdEqualTo(String value) {
            addCriterion("sys_employee_verification_id =", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdNotEqualTo(String value) {
            addCriterion("sys_employee_verification_id <>", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdGreaterThan(String value) {
            addCriterion("sys_employee_verification_id >", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_verification_id >=", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdLessThan(String value) {
            addCriterion("sys_employee_verification_id <", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_verification_id <=", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdLike(String value) {
            addCriterion("sys_employee_verification_id like", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdNotLike(String value) {
            addCriterion("sys_employee_verification_id not like", value, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdIn(List<String> values) {
            addCriterion("sys_employee_verification_id in", values, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdNotIn(List<String> values) {
            addCriterion("sys_employee_verification_id not in", values, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdBetween(String value1, String value2) {
            addCriterion("sys_employee_verification_id between", value1, value2, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationIdNotBetween(String value1, String value2) {
            addCriterion("sys_employee_verification_id not between", value1, value2, "sysEmployeeVerificationId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdIsNull() {
            addCriterion("sys_employee_id is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdIsNotNull() {
            addCriterion("sys_employee_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdEqualTo(String value) {
            addCriterion("sys_employee_id =", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdNotEqualTo(String value) {
            addCriterion("sys_employee_id <>", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdGreaterThan(String value) {
            addCriterion("sys_employee_id >", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_id >=", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdLessThan(String value) {
            addCriterion("sys_employee_id <", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_id <=", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdLike(String value) {
            addCriterion("sys_employee_id like", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdNotLike(String value) {
            addCriterion("sys_employee_id not like", value, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdIn(List<String> values) {
            addCriterion("sys_employee_id in", values, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdNotIn(List<String> values) {
            addCriterion("sys_employee_id not in", values, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdBetween(String value1, String value2) {
            addCriterion("sys_employee_id between", value1, value2, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeIdNotBetween(String value1, String value2) {
            addCriterion("sys_employee_id not between", value1, value2, "sysEmployeeId");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameIsNull() {
            addCriterion("sys_employee_verification_name is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameIsNotNull() {
            addCriterion("sys_employee_verification_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameEqualTo(String value) {
            addCriterion("sys_employee_verification_name =", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameNotEqualTo(String value) {
            addCriterion("sys_employee_verification_name <>", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameGreaterThan(String value) {
            addCriterion("sys_employee_verification_name >", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_verification_name >=", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameLessThan(String value) {
            addCriterion("sys_employee_verification_name <", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_verification_name <=", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameLike(String value) {
            addCriterion("sys_employee_verification_name like", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameNotLike(String value) {
            addCriterion("sys_employee_verification_name not like", value, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameIn(List<String> values) {
            addCriterion("sys_employee_verification_name in", values, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameNotIn(List<String> values) {
            addCriterion("sys_employee_verification_name not in", values, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameBetween(String value1, String value2) {
            addCriterion("sys_employee_verification_name between", value1, value2, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeVerificationNameNotBetween(String value1, String value2) {
            addCriterion("sys_employee_verification_name not between", value1, value2, "sysEmployeeVerificationName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordIsNull() {
            addCriterion("sys_employee_password is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordIsNotNull() {
            addCriterion("sys_employee_password is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordEqualTo(String value) {
            addCriterion("sys_employee_password =", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordNotEqualTo(String value) {
            addCriterion("sys_employee_password <>", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordGreaterThan(String value) {
            addCriterion("sys_employee_password >", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_password >=", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordLessThan(String value) {
            addCriterion("sys_employee_password <", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_password <=", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordLike(String value) {
            addCriterion("sys_employee_password like", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordNotLike(String value) {
            addCriterion("sys_employee_password not like", value, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordIn(List<String> values) {
            addCriterion("sys_employee_password in", values, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordNotIn(List<String> values) {
            addCriterion("sys_employee_password not in", values, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordBetween(String value1, String value2) {
            addCriterion("sys_employee_password between", value1, value2, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePasswordNotBetween(String value1, String value2) {
            addCriterion("sys_employee_password not between", value1, value2, "sysEmployeePassword");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneIsNull() {
            addCriterion("sys_employee_phone is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneIsNotNull() {
            addCriterion("sys_employee_phone is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneEqualTo(String value) {
            addCriterion("sys_employee_phone =", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneNotEqualTo(String value) {
            addCriterion("sys_employee_phone <>", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneGreaterThan(String value) {
            addCriterion("sys_employee_phone >", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_phone >=", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneLessThan(String value) {
            addCriterion("sys_employee_phone <", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_phone <=", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneLike(String value) {
            addCriterion("sys_employee_phone like", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneNotLike(String value) {
            addCriterion("sys_employee_phone not like", value, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneIn(List<String> values) {
            addCriterion("sys_employee_phone in", values, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneNotIn(List<String> values) {
            addCriterion("sys_employee_phone not in", values, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneBetween(String value1, String value2) {
            addCriterion("sys_employee_phone between", value1, value2, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePhoneNotBetween(String value1, String value2) {
            addCriterion("sys_employee_phone not between", value1, value2, "sysEmployeePhone");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailIsNull() {
            addCriterion("sys_employee_email is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailIsNotNull() {
            addCriterion("sys_employee_email is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailEqualTo(String value) {
            addCriterion("sys_employee_email =", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailNotEqualTo(String value) {
            addCriterion("sys_employee_email <>", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailGreaterThan(String value) {
            addCriterion("sys_employee_email >", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_email >=", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailLessThan(String value) {
            addCriterion("sys_employee_email <", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_email <=", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailLike(String value) {
            addCriterion("sys_employee_email like", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailNotLike(String value) {
            addCriterion("sys_employee_email not like", value, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailIn(List<String> values) {
            addCriterion("sys_employee_email in", values, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailNotIn(List<String> values) {
            addCriterion("sys_employee_email not in", values, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailBetween(String value1, String value2) {
            addCriterion("sys_employee_email between", value1, value2, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEmailNotBetween(String value1, String value2) {
            addCriterion("sys_employee_email not between", value1, value2, "sysEmployeeEmail");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatIsNull() {
            addCriterion("sys_employee_wechat is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatIsNotNull() {
            addCriterion("sys_employee_wechat is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatEqualTo(String value) {
            addCriterion("sys_employee_wechat =", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatNotEqualTo(String value) {
            addCriterion("sys_employee_wechat <>", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatGreaterThan(String value) {
            addCriterion("sys_employee_wechat >", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_wechat >=", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatLessThan(String value) {
            addCriterion("sys_employee_wechat <", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_wechat <=", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatLike(String value) {
            addCriterion("sys_employee_wechat like", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatNotLike(String value) {
            addCriterion("sys_employee_wechat not like", value, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatIn(List<String> values) {
            addCriterion("sys_employee_wechat in", values, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatNotIn(List<String> values) {
            addCriterion("sys_employee_wechat not in", values, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatBetween(String value1, String value2) {
            addCriterion("sys_employee_wechat between", value1, value2, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWechatNotBetween(String value1, String value2) {
            addCriterion("sys_employee_wechat not between", value1, value2, "sysEmployeeWechat");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveIsNull() {
            addCriterion("sys_isactive is null");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveIsNotNull() {
            addCriterion("sys_isactive is not null");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveEqualTo(String value) {
            addCriterion("sys_isactive =", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveNotEqualTo(String value) {
            addCriterion("sys_isactive <>", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveGreaterThan(String value) {
            addCriterion("sys_isactive >", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveGreaterThanOrEqualTo(String value) {
            addCriterion("sys_isactive >=", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveLessThan(String value) {
            addCriterion("sys_isactive <", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveLessThanOrEqualTo(String value) {
            addCriterion("sys_isactive <=", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveLike(String value) {
            addCriterion("sys_isactive like", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveNotLike(String value) {
            addCriterion("sys_isactive not like", value, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveIn(List<String> values) {
            addCriterion("sys_isactive in", values, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveNotIn(List<String> values) {
            addCriterion("sys_isactive not in", values, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveBetween(String value1, String value2) {
            addCriterion("sys_isactive between", value1, value2, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysIsactiveNotBetween(String value1, String value2) {
            addCriterion("sys_isactive not between", value1, value2, "sysIsactive");
            return (Criteria) this;
        }

        public Criteria andSysCreatedIsNull() {
            addCriterion("sys_created is null");
            return (Criteria) this;
        }

        public Criteria andSysCreatedIsNotNull() {
            addCriterion("sys_created is not null");
            return (Criteria) this;
        }

        public Criteria andSysCreatedEqualTo(Date value) {
            addCriterion("sys_created =", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedNotEqualTo(Date value) {
            addCriterion("sys_created <>", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedGreaterThan(Date value) {
            addCriterion("sys_created >", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedGreaterThanOrEqualTo(Date value) {
            addCriterion("sys_created >=", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedLessThan(Date value) {
            addCriterion("sys_created <", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedLessThanOrEqualTo(Date value) {
            addCriterion("sys_created <=", value, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedIn(List<Date> values) {
            addCriterion("sys_created in", values, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedNotIn(List<Date> values) {
            addCriterion("sys_created not in", values, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedBetween(Date value1, Date value2) {
            addCriterion("sys_created between", value1, value2, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedNotBetween(Date value1, Date value2) {
            addCriterion("sys_created not between", value1, value2, "sysCreated");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyIsNull() {
            addCriterion("sys_createdby is null");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyIsNotNull() {
            addCriterion("sys_createdby is not null");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyEqualTo(String value) {
            addCriterion("sys_createdby =", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyNotEqualTo(String value) {
            addCriterion("sys_createdby <>", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyGreaterThan(String value) {
            addCriterion("sys_createdby >", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyGreaterThanOrEqualTo(String value) {
            addCriterion("sys_createdby >=", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyLessThan(String value) {
            addCriterion("sys_createdby <", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyLessThanOrEqualTo(String value) {
            addCriterion("sys_createdby <=", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyLike(String value) {
            addCriterion("sys_createdby like", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyNotLike(String value) {
            addCriterion("sys_createdby not like", value, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyIn(List<String> values) {
            addCriterion("sys_createdby in", values, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyNotIn(List<String> values) {
            addCriterion("sys_createdby not in", values, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyBetween(String value1, String value2) {
            addCriterion("sys_createdby between", value1, value2, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysCreatedbyNotBetween(String value1, String value2) {
            addCriterion("sys_createdby not between", value1, value2, "sysCreatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedIsNull() {
            addCriterion("sys_updated is null");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedIsNotNull() {
            addCriterion("sys_updated is not null");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedEqualTo(Date value) {
            addCriterion("sys_updated =", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedNotEqualTo(Date value) {
            addCriterion("sys_updated <>", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedGreaterThan(Date value) {
            addCriterion("sys_updated >", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedGreaterThanOrEqualTo(Date value) {
            addCriterion("sys_updated >=", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedLessThan(Date value) {
            addCriterion("sys_updated <", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedLessThanOrEqualTo(Date value) {
            addCriterion("sys_updated <=", value, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedIn(List<Date> values) {
            addCriterion("sys_updated in", values, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedNotIn(List<Date> values) {
            addCriterion("sys_updated not in", values, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedBetween(Date value1, Date value2) {
            addCriterion("sys_updated between", value1, value2, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedNotBetween(Date value1, Date value2) {
            addCriterion("sys_updated not between", value1, value2, "sysUpdated");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyIsNull() {
            addCriterion("sys_updatedby is null");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyIsNotNull() {
            addCriterion("sys_updatedby is not null");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyEqualTo(String value) {
            addCriterion("sys_updatedby =", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyNotEqualTo(String value) {
            addCriterion("sys_updatedby <>", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyGreaterThan(String value) {
            addCriterion("sys_updatedby >", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyGreaterThanOrEqualTo(String value) {
            addCriterion("sys_updatedby >=", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyLessThan(String value) {
            addCriterion("sys_updatedby <", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyLessThanOrEqualTo(String value) {
            addCriterion("sys_updatedby <=", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyLike(String value) {
            addCriterion("sys_updatedby like", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyNotLike(String value) {
            addCriterion("sys_updatedby not like", value, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyIn(List<String> values) {
            addCriterion("sys_updatedby in", values, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyNotIn(List<String> values) {
            addCriterion("sys_updatedby not in", values, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyBetween(String value1, String value2) {
            addCriterion("sys_updatedby between", value1, value2, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysUpdatedbyNotBetween(String value1, String value2) {
            addCriterion("sys_updatedby not between", value1, value2, "sysUpdatedby");
            return (Criteria) this;
        }

        public Criteria andSysRemarkIsNull() {
            addCriterion("sys_remark is null");
            return (Criteria) this;
        }

        public Criteria andSysRemarkIsNotNull() {
            addCriterion("sys_remark is not null");
            return (Criteria) this;
        }

        public Criteria andSysRemarkEqualTo(String value) {
            addCriterion("sys_remark =", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkNotEqualTo(String value) {
            addCriterion("sys_remark <>", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkGreaterThan(String value) {
            addCriterion("sys_remark >", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkGreaterThanOrEqualTo(String value) {
            addCriterion("sys_remark >=", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkLessThan(String value) {
            addCriterion("sys_remark <", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkLessThanOrEqualTo(String value) {
            addCriterion("sys_remark <=", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkLike(String value) {
            addCriterion("sys_remark like", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkNotLike(String value) {
            addCriterion("sys_remark not like", value, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkIn(List<String> values) {
            addCriterion("sys_remark in", values, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkNotIn(List<String> values) {
            addCriterion("sys_remark not in", values, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkBetween(String value1, String value2) {
            addCriterion("sys_remark between", value1, value2, "sysRemark");
            return (Criteria) this;
        }

        public Criteria andSysRemarkNotBetween(String value1, String value2) {
            addCriterion("sys_remark not between", value1, value2, "sysRemark");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}