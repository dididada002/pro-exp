package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysEmployeeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysEmployeeExample() {
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

        public Criteria andSysEmployeeNameIsNull() {
            addCriterion("sys_employee_name is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameIsNotNull() {
            addCriterion("sys_employee_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameEqualTo(String value) {
            addCriterion("sys_employee_name =", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameNotEqualTo(String value) {
            addCriterion("sys_employee_name <>", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameGreaterThan(String value) {
            addCriterion("sys_employee_name >", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_name >=", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameLessThan(String value) {
            addCriterion("sys_employee_name <", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_name <=", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameLike(String value) {
            addCriterion("sys_employee_name like", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameNotLike(String value) {
            addCriterion("sys_employee_name not like", value, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameIn(List<String> values) {
            addCriterion("sys_employee_name in", values, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameNotIn(List<String> values) {
            addCriterion("sys_employee_name not in", values, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBetween(String value1, String value2) {
            addCriterion("sys_employee_name between", value1, value2, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameNotBetween(String value1, String value2) {
            addCriterion("sys_employee_name not between", value1, value2, "sysEmployeeName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameIsNull() {
            addCriterion("sys_employee_nickname is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameIsNotNull() {
            addCriterion("sys_employee_nickname is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameEqualTo(String value) {
            addCriterion("sys_employee_nickname =", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameNotEqualTo(String value) {
            addCriterion("sys_employee_nickname <>", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameGreaterThan(String value) {
            addCriterion("sys_employee_nickname >", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_nickname >=", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameLessThan(String value) {
            addCriterion("sys_employee_nickname <", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_nickname <=", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameLike(String value) {
            addCriterion("sys_employee_nickname like", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameNotLike(String value) {
            addCriterion("sys_employee_nickname not like", value, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameIn(List<String> values) {
            addCriterion("sys_employee_nickname in", values, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameNotIn(List<String> values) {
            addCriterion("sys_employee_nickname not in", values, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameBetween(String value1, String value2) {
            addCriterion("sys_employee_nickname between", value1, value2, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNicknameNotBetween(String value1, String value2) {
            addCriterion("sys_employee_nickname not between", value1, value2, "sysEmployeeNickname");
            return (Criteria) this;
        }

        public Criteria andIdCardIsNull() {
            addCriterion("id_card is null");
            return (Criteria) this;
        }

        public Criteria andIdCardIsNotNull() {
            addCriterion("id_card is not null");
            return (Criteria) this;
        }

        public Criteria andIdCardEqualTo(String value) {
            addCriterion("id_card =", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotEqualTo(String value) {
            addCriterion("id_card <>", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardGreaterThan(String value) {
            addCriterion("id_card >", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardGreaterThanOrEqualTo(String value) {
            addCriterion("id_card >=", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLessThan(String value) {
            addCriterion("id_card <", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLessThanOrEqualTo(String value) {
            addCriterion("id_card <=", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardLike(String value) {
            addCriterion("id_card like", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotLike(String value) {
            addCriterion("id_card not like", value, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardIn(List<String> values) {
            addCriterion("id_card in", values, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotIn(List<String> values) {
            addCriterion("id_card not in", values, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardBetween(String value1, String value2) {
            addCriterion("id_card between", value1, value2, "idCard");
            return (Criteria) this;
        }

        public Criteria andIdCardNotBetween(String value1, String value2) {
            addCriterion("id_card not between", value1, value2, "idCard");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeIsNull() {
            addCriterion("sys_employee_name_before is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeIsNotNull() {
            addCriterion("sys_employee_name_before is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeEqualTo(String value) {
            addCriterion("sys_employee_name_before =", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeNotEqualTo(String value) {
            addCriterion("sys_employee_name_before <>", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeGreaterThan(String value) {
            addCriterion("sys_employee_name_before >", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_name_before >=", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeLessThan(String value) {
            addCriterion("sys_employee_name_before <", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_name_before <=", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeLike(String value) {
            addCriterion("sys_employee_name_before like", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeNotLike(String value) {
            addCriterion("sys_employee_name_before not like", value, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeIn(List<String> values) {
            addCriterion("sys_employee_name_before in", values, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeNotIn(List<String> values) {
            addCriterion("sys_employee_name_before not in", values, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeBetween(String value1, String value2) {
            addCriterion("sys_employee_name_before between", value1, value2, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNameBeforeNotBetween(String value1, String value2) {
            addCriterion("sys_employee_name_before not between", value1, value2, "sysEmployeeNameBefore");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayIsNull() {
            addCriterion("sys_employee_birthday is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayIsNotNull() {
            addCriterion("sys_employee_birthday is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayEqualTo(Date value) {
            addCriterion("sys_employee_birthday =", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayNotEqualTo(Date value) {
            addCriterion("sys_employee_birthday <>", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayGreaterThan(Date value) {
            addCriterion("sys_employee_birthday >", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayGreaterThanOrEqualTo(Date value) {
            addCriterion("sys_employee_birthday >=", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayLessThan(Date value) {
            addCriterion("sys_employee_birthday <", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayLessThanOrEqualTo(Date value) {
            addCriterion("sys_employee_birthday <=", value, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayIn(List<Date> values) {
            addCriterion("sys_employee_birthday in", values, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayNotIn(List<Date> values) {
            addCriterion("sys_employee_birthday not in", values, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayBetween(Date value1, Date value2) {
            addCriterion("sys_employee_birthday between", value1, value2, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeBirthdayNotBetween(Date value1, Date value2) {
            addCriterion("sys_employee_birthday not between", value1, value2, "sysEmployeeBirthday");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationIsNull() {
            addCriterion("sys_employee_nation is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationIsNotNull() {
            addCriterion("sys_employee_nation is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationEqualTo(String value) {
            addCriterion("sys_employee_nation =", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationNotEqualTo(String value) {
            addCriterion("sys_employee_nation <>", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationGreaterThan(String value) {
            addCriterion("sys_employee_nation >", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_nation >=", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationLessThan(String value) {
            addCriterion("sys_employee_nation <", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_nation <=", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationLike(String value) {
            addCriterion("sys_employee_nation like", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationNotLike(String value) {
            addCriterion("sys_employee_nation not like", value, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationIn(List<String> values) {
            addCriterion("sys_employee_nation in", values, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationNotIn(List<String> values) {
            addCriterion("sys_employee_nation not in", values, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationBetween(String value1, String value2) {
            addCriterion("sys_employee_nation between", value1, value2, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNationNotBetween(String value1, String value2) {
            addCriterion("sys_employee_nation not between", value1, value2, "sysEmployeeNation");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeIsNull() {
            addCriterion("sys_employee_household_type is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeIsNotNull() {
            addCriterion("sys_employee_household_type is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeEqualTo(String value) {
            addCriterion("sys_employee_household_type =", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeNotEqualTo(String value) {
            addCriterion("sys_employee_household_type <>", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeGreaterThan(String value) {
            addCriterion("sys_employee_household_type >", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_household_type >=", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeLessThan(String value) {
            addCriterion("sys_employee_household_type <", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_household_type <=", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeLike(String value) {
            addCriterion("sys_employee_household_type like", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeNotLike(String value) {
            addCriterion("sys_employee_household_type not like", value, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeIn(List<String> values) {
            addCriterion("sys_employee_household_type in", values, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeNotIn(List<String> values) {
            addCriterion("sys_employee_household_type not in", values, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeBetween(String value1, String value2) {
            addCriterion("sys_employee_household_type between", value1, value2, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdTypeNotBetween(String value1, String value2) {
            addCriterion("sys_employee_household_type not between", value1, value2, "sysEmployeeHouseholdType");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryIsNull() {
            addCriterion("sys_employee_marry is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryIsNotNull() {
            addCriterion("sys_employee_marry is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryEqualTo(String value) {
            addCriterion("sys_employee_marry =", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryNotEqualTo(String value) {
            addCriterion("sys_employee_marry <>", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryGreaterThan(String value) {
            addCriterion("sys_employee_marry >", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_marry >=", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryLessThan(String value) {
            addCriterion("sys_employee_marry <", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_marry <=", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryLike(String value) {
            addCriterion("sys_employee_marry like", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryNotLike(String value) {
            addCriterion("sys_employee_marry not like", value, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryIn(List<String> values) {
            addCriterion("sys_employee_marry in", values, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryNotIn(List<String> values) {
            addCriterion("sys_employee_marry not in", values, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryBetween(String value1, String value2) {
            addCriterion("sys_employee_marry between", value1, value2, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMarryNotBetween(String value1, String value2) {
            addCriterion("sys_employee_marry not between", value1, value2, "sysEmployeeMarry");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceIsNull() {
            addCriterion("sys_employee_native_place is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceIsNotNull() {
            addCriterion("sys_employee_native_place is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceEqualTo(String value) {
            addCriterion("sys_employee_native_place =", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceNotEqualTo(String value) {
            addCriterion("sys_employee_native_place <>", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceGreaterThan(String value) {
            addCriterion("sys_employee_native_place >", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_native_place >=", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceLessThan(String value) {
            addCriterion("sys_employee_native_place <", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_native_place <=", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceLike(String value) {
            addCriterion("sys_employee_native_place like", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceNotLike(String value) {
            addCriterion("sys_employee_native_place not like", value, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceIn(List<String> values) {
            addCriterion("sys_employee_native_place in", values, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceNotIn(List<String> values) {
            addCriterion("sys_employee_native_place not in", values, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceBetween(String value1, String value2) {
            addCriterion("sys_employee_native_place between", value1, value2, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeNativePlaceNotBetween(String value1, String value2) {
            addCriterion("sys_employee_native_place not between", value1, value2, "sysEmployeeNativePlace");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrIsNull() {
            addCriterion("sys_employee_household_addr is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrIsNotNull() {
            addCriterion("sys_employee_household_addr is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrEqualTo(String value) {
            addCriterion("sys_employee_household_addr =", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrNotEqualTo(String value) {
            addCriterion("sys_employee_household_addr <>", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrGreaterThan(String value) {
            addCriterion("sys_employee_household_addr >", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_household_addr >=", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrLessThan(String value) {
            addCriterion("sys_employee_household_addr <", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_household_addr <=", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrLike(String value) {
            addCriterion("sys_employee_household_addr like", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrNotLike(String value) {
            addCriterion("sys_employee_household_addr not like", value, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrIn(List<String> values) {
            addCriterion("sys_employee_household_addr in", values, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrNotIn(List<String> values) {
            addCriterion("sys_employee_household_addr not in", values, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrBetween(String value1, String value2) {
            addCriterion("sys_employee_household_addr between", value1, value2, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeHouseholdAddrNotBetween(String value1, String value2) {
            addCriterion("sys_employee_household_addr not between", value1, value2, "sysEmployeeHouseholdAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrIsNull() {
            addCriterion("sys_employee_live_addr is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrIsNotNull() {
            addCriterion("sys_employee_live_addr is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrEqualTo(String value) {
            addCriterion("sys_employee_live_addr =", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrNotEqualTo(String value) {
            addCriterion("sys_employee_live_addr <>", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrGreaterThan(String value) {
            addCriterion("sys_employee_live_addr >", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_live_addr >=", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrLessThan(String value) {
            addCriterion("sys_employee_live_addr <", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_live_addr <=", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrLike(String value) {
            addCriterion("sys_employee_live_addr like", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrNotLike(String value) {
            addCriterion("sys_employee_live_addr not like", value, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrIn(List<String> values) {
            addCriterion("sys_employee_live_addr in", values, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrNotIn(List<String> values) {
            addCriterion("sys_employee_live_addr not in", values, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrBetween(String value1, String value2) {
            addCriterion("sys_employee_live_addr between", value1, value2, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeLiveAddrNotBetween(String value1, String value2) {
            addCriterion("sys_employee_live_addr not between", value1, value2, "sysEmployeeLiveAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticIsNull() {
            addCriterion("sys_employee_politic is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticIsNotNull() {
            addCriterion("sys_employee_politic is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticEqualTo(String value) {
            addCriterion("sys_employee_politic =", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticNotEqualTo(String value) {
            addCriterion("sys_employee_politic <>", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticGreaterThan(String value) {
            addCriterion("sys_employee_politic >", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_politic >=", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticLessThan(String value) {
            addCriterion("sys_employee_politic <", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_politic <=", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticLike(String value) {
            addCriterion("sys_employee_politic like", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticNotLike(String value) {
            addCriterion("sys_employee_politic not like", value, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticIn(List<String> values) {
            addCriterion("sys_employee_politic in", values, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticNotIn(List<String> values) {
            addCriterion("sys_employee_politic not in", values, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticBetween(String value1, String value2) {
            addCriterion("sys_employee_politic between", value1, value2, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeePoliticNotBetween(String value1, String value2) {
            addCriterion("sys_employee_politic not between", value1, value2, "sysEmployeePolitic");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpIsNull() {
            addCriterion("sys_employee_up is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpIsNotNull() {
            addCriterion("sys_employee_up is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpEqualTo(String value) {
            addCriterion("sys_employee_up =", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpNotEqualTo(String value) {
            addCriterion("sys_employee_up <>", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpGreaterThan(String value) {
            addCriterion("sys_employee_up >", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_up >=", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpLessThan(String value) {
            addCriterion("sys_employee_up <", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_up <=", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpLike(String value) {
            addCriterion("sys_employee_up like", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpNotLike(String value) {
            addCriterion("sys_employee_up not like", value, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpIn(List<String> values) {
            addCriterion("sys_employee_up in", values, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpNotIn(List<String> values) {
            addCriterion("sys_employee_up not in", values, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpBetween(String value1, String value2) {
            addCriterion("sys_employee_up between", value1, value2, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeUpNotBetween(String value1, String value2) {
            addCriterion("sys_employee_up not between", value1, value2, "sysEmployeeUp");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrIsNull() {
            addCriterion("sys_employee_work_addr is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrIsNotNull() {
            addCriterion("sys_employee_work_addr is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrEqualTo(String value) {
            addCriterion("sys_employee_work_addr =", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrNotEqualTo(String value) {
            addCriterion("sys_employee_work_addr <>", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrGreaterThan(String value) {
            addCriterion("sys_employee_work_addr >", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_work_addr >=", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrLessThan(String value) {
            addCriterion("sys_employee_work_addr <", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_work_addr <=", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrLike(String value) {
            addCriterion("sys_employee_work_addr like", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrNotLike(String value) {
            addCriterion("sys_employee_work_addr not like", value, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrIn(List<String> values) {
            addCriterion("sys_employee_work_addr in", values, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrNotIn(List<String> values) {
            addCriterion("sys_employee_work_addr not in", values, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrBetween(String value1, String value2) {
            addCriterion("sys_employee_work_addr between", value1, value2, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkAddrNotBetween(String value1, String value2) {
            addCriterion("sys_employee_work_addr not between", value1, value2, "sysEmployeeWorkAddr");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileIsNull() {
            addCriterion("sys_employee_work_mobile is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileIsNotNull() {
            addCriterion("sys_employee_work_mobile is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileEqualTo(String value) {
            addCriterion("sys_employee_work_mobile =", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileNotEqualTo(String value) {
            addCriterion("sys_employee_work_mobile <>", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileGreaterThan(String value) {
            addCriterion("sys_employee_work_mobile >", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_work_mobile >=", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileLessThan(String value) {
            addCriterion("sys_employee_work_mobile <", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_work_mobile <=", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileLike(String value) {
            addCriterion("sys_employee_work_mobile like", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileNotLike(String value) {
            addCriterion("sys_employee_work_mobile not like", value, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileIn(List<String> values) {
            addCriterion("sys_employee_work_mobile in", values, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileNotIn(List<String> values) {
            addCriterion("sys_employee_work_mobile not in", values, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileBetween(String value1, String value2) {
            addCriterion("sys_employee_work_mobile between", value1, value2, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeWorkMobileNotBetween(String value1, String value2) {
            addCriterion("sys_employee_work_mobile not between", value1, value2, "sysEmployeeWorkMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateIsNull() {
            addCriterion("sys_employee_entry_date is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateIsNotNull() {
            addCriterion("sys_employee_entry_date is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateEqualTo(Date value) {
            addCriterion("sys_employee_entry_date =", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateNotEqualTo(Date value) {
            addCriterion("sys_employee_entry_date <>", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateGreaterThan(Date value) {
            addCriterion("sys_employee_entry_date >", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateGreaterThanOrEqualTo(Date value) {
            addCriterion("sys_employee_entry_date >=", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateLessThan(Date value) {
            addCriterion("sys_employee_entry_date <", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateLessThanOrEqualTo(Date value) {
            addCriterion("sys_employee_entry_date <=", value, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateIn(List<Date> values) {
            addCriterion("sys_employee_entry_date in", values, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateNotIn(List<Date> values) {
            addCriterion("sys_employee_entry_date not in", values, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateBetween(Date value1, Date value2) {
            addCriterion("sys_employee_entry_date between", value1, value2, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeEntryDateNotBetween(Date value1, Date value2) {
            addCriterion("sys_employee_entry_date not between", value1, value2, "sysEmployeeEntryDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateIsNull() {
            addCriterion("sys_employee_confirm_date is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateIsNotNull() {
            addCriterion("sys_employee_confirm_date is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateEqualTo(Date value) {
            addCriterion("sys_employee_confirm_date =", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateNotEqualTo(Date value) {
            addCriterion("sys_employee_confirm_date <>", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateGreaterThan(Date value) {
            addCriterion("sys_employee_confirm_date >", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateGreaterThanOrEqualTo(Date value) {
            addCriterion("sys_employee_confirm_date >=", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateLessThan(Date value) {
            addCriterion("sys_employee_confirm_date <", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateLessThanOrEqualTo(Date value) {
            addCriterion("sys_employee_confirm_date <=", value, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateIn(List<Date> values) {
            addCriterion("sys_employee_confirm_date in", values, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateNotIn(List<Date> values) {
            addCriterion("sys_employee_confirm_date not in", values, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateBetween(Date value1, Date value2) {
            addCriterion("sys_employee_confirm_date between", value1, value2, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeConfirmDateNotBetween(Date value1, Date value2) {
            addCriterion("sys_employee_confirm_date not between", value1, value2, "sysEmployeeConfirmDate");
            return (Criteria) this;
        }

        public Criteria andSysPostIdIsNull() {
            addCriterion("sys_post_id is null");
            return (Criteria) this;
        }

        public Criteria andSysPostIdIsNotNull() {
            addCriterion("sys_post_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysPostIdEqualTo(String value) {
            addCriterion("sys_post_id =", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdNotEqualTo(String value) {
            addCriterion("sys_post_id <>", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdGreaterThan(String value) {
            addCriterion("sys_post_id >", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_post_id >=", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdLessThan(String value) {
            addCriterion("sys_post_id <", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdLessThanOrEqualTo(String value) {
            addCriterion("sys_post_id <=", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdLike(String value) {
            addCriterion("sys_post_id like", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdNotLike(String value) {
            addCriterion("sys_post_id not like", value, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdIn(List<String> values) {
            addCriterion("sys_post_id in", values, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdNotIn(List<String> values) {
            addCriterion("sys_post_id not in", values, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdBetween(String value1, String value2) {
            addCriterion("sys_post_id between", value1, value2, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSysPostIdNotBetween(String value1, String value2) {
            addCriterion("sys_post_id not between", value1, value2, "sysPostId");
            return (Criteria) this;
        }

        public Criteria andSexIsNull() {
            addCriterion("sex is null");
            return (Criteria) this;
        }

        public Criteria andSexIsNotNull() {
            addCriterion("sex is not null");
            return (Criteria) this;
        }

        public Criteria andSexEqualTo(String value) {
            addCriterion("sex =", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotEqualTo(String value) {
            addCriterion("sex <>", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThan(String value) {
            addCriterion("sex >", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexGreaterThanOrEqualTo(String value) {
            addCriterion("sex >=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThan(String value) {
            addCriterion("sex <", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLessThanOrEqualTo(String value) {
            addCriterion("sex <=", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexLike(String value) {
            addCriterion("sex like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotLike(String value) {
            addCriterion("sex not like", value, "sex");
            return (Criteria) this;
        }

        public Criteria andSexIn(List<String> values) {
            addCriterion("sex in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotIn(List<String> values) {
            addCriterion("sex not in", values, "sex");
            return (Criteria) this;
        }

        public Criteria andSexBetween(String value1, String value2) {
            addCriterion("sex between", value1, value2, "sex");
            return (Criteria) this;
        }

        public Criteria andSexNotBetween(String value1, String value2) {
            addCriterion("sex not between", value1, value2, "sex");
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

        public Criteria andSysEmployeeMobileIsNull() {
            addCriterion("sys_employee_mobile is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileIsNotNull() {
            addCriterion("sys_employee_mobile is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileEqualTo(String value) {
            addCriterion("sys_employee_mobile =", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileNotEqualTo(String value) {
            addCriterion("sys_employee_mobile <>", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileGreaterThan(String value) {
            addCriterion("sys_employee_mobile >", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_mobile >=", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileLessThan(String value) {
            addCriterion("sys_employee_mobile <", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_mobile <=", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileLike(String value) {
            addCriterion("sys_employee_mobile like", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileNotLike(String value) {
            addCriterion("sys_employee_mobile not like", value, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileIn(List<String> values) {
            addCriterion("sys_employee_mobile in", values, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileNotIn(List<String> values) {
            addCriterion("sys_employee_mobile not in", values, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileBetween(String value1, String value2) {
            addCriterion("sys_employee_mobile between", value1, value2, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeMobileNotBetween(String value1, String value2) {
            addCriterion("sys_employee_mobile not between", value1, value2, "sysEmployeeMobile");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdIsNull() {
            addCriterion("sys_department_id is null");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdIsNotNull() {
            addCriterion("sys_department_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdEqualTo(String value) {
            addCriterion("sys_department_id =", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdNotEqualTo(String value) {
            addCriterion("sys_department_id <>", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdGreaterThan(String value) {
            addCriterion("sys_department_id >", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_department_id >=", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdLessThan(String value) {
            addCriterion("sys_department_id <", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdLessThanOrEqualTo(String value) {
            addCriterion("sys_department_id <=", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdLike(String value) {
            addCriterion("sys_department_id like", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdNotLike(String value) {
            addCriterion("sys_department_id not like", value, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdIn(List<String> values) {
            addCriterion("sys_department_id in", values, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdNotIn(List<String> values) {
            addCriterion("sys_department_id not in", values, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdBetween(String value1, String value2) {
            addCriterion("sys_department_id between", value1, value2, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysDepartmentIdNotBetween(String value1, String value2) {
            addCriterion("sys_department_id not between", value1, value2, "sysDepartmentId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdIsNull() {
            addCriterion("sys_unit_id is null");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdIsNotNull() {
            addCriterion("sys_unit_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdEqualTo(String value) {
            addCriterion("sys_unit_id =", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdNotEqualTo(String value) {
            addCriterion("sys_unit_id <>", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdGreaterThan(String value) {
            addCriterion("sys_unit_id >", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_unit_id >=", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdLessThan(String value) {
            addCriterion("sys_unit_id <", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdLessThanOrEqualTo(String value) {
            addCriterion("sys_unit_id <=", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdLike(String value) {
            addCriterion("sys_unit_id like", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdNotLike(String value) {
            addCriterion("sys_unit_id not like", value, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdIn(List<String> values) {
            addCriterion("sys_unit_id in", values, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdNotIn(List<String> values) {
            addCriterion("sys_unit_id not in", values, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdBetween(String value1, String value2) {
            addCriterion("sys_unit_id between", value1, value2, "sysUnitId");
            return (Criteria) this;
        }

        public Criteria andSysUnitIdNotBetween(String value1, String value2) {
            addCriterion("sys_unit_id not between", value1, value2, "sysUnitId");
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

        public Criteria andSysEmployeeStatusIsNull() {
            addCriterion("sys_employee_status is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusIsNotNull() {
            addCriterion("sys_employee_status is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusEqualTo(String value) {
            addCriterion("sys_employee_status =", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusNotEqualTo(String value) {
            addCriterion("sys_employee_status <>", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusGreaterThan(String value) {
            addCriterion("sys_employee_status >", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_status >=", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusLessThan(String value) {
            addCriterion("sys_employee_status <", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_status <=", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusLike(String value) {
            addCriterion("sys_employee_status like", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusNotLike(String value) {
            addCriterion("sys_employee_status not like", value, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusIn(List<String> values) {
            addCriterion("sys_employee_status in", values, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusNotIn(List<String> values) {
            addCriterion("sys_employee_status not in", values, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusBetween(String value1, String value2) {
            addCriterion("sys_employee_status between", value1, value2, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeStatusNotBetween(String value1, String value2) {
            addCriterion("sys_employee_status not between", value1, value2, "sysEmployeeStatus");
            return (Criteria) this;
        }

        public Criteria andAvatarIsNull() {
            addCriterion("avatar is null");
            return (Criteria) this;
        }

        public Criteria andAvatarIsNotNull() {
            addCriterion("avatar is not null");
            return (Criteria) this;
        }

        public Criteria andAvatarEqualTo(String value) {
            addCriterion("avatar =", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarNotEqualTo(String value) {
            addCriterion("avatar <>", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarGreaterThan(String value) {
            addCriterion("avatar >", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarGreaterThanOrEqualTo(String value) {
            addCriterion("avatar >=", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarLessThan(String value) {
            addCriterion("avatar <", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarLessThanOrEqualTo(String value) {
            addCriterion("avatar <=", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarLike(String value) {
            addCriterion("avatar like", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarNotLike(String value) {
            addCriterion("avatar not like", value, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarIn(List<String> values) {
            addCriterion("avatar in", values, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarNotIn(List<String> values) {
            addCriterion("avatar not in", values, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarBetween(String value1, String value2) {
            addCriterion("avatar between", value1, value2, "avatar");
            return (Criteria) this;
        }

        public Criteria andAvatarNotBetween(String value1, String value2) {
            addCriterion("avatar not between", value1, value2, "avatar");
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