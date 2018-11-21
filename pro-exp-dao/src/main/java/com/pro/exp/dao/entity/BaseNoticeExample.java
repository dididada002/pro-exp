package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BaseNoticeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BaseNoticeExample() {
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

        public Criteria andBaseNoticeIdIsNull() {
            addCriterion("base_notice_id is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdIsNotNull() {
            addCriterion("base_notice_id is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdEqualTo(String value) {
            addCriterion("base_notice_id =", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdNotEqualTo(String value) {
            addCriterion("base_notice_id <>", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdGreaterThan(String value) {
            addCriterion("base_notice_id >", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_id >=", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdLessThan(String value) {
            addCriterion("base_notice_id <", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdLessThanOrEqualTo(String value) {
            addCriterion("base_notice_id <=", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdLike(String value) {
            addCriterion("base_notice_id like", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdNotLike(String value) {
            addCriterion("base_notice_id not like", value, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdIn(List<String> values) {
            addCriterion("base_notice_id in", values, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdNotIn(List<String> values) {
            addCriterion("base_notice_id not in", values, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdBetween(String value1, String value2) {
            addCriterion("base_notice_id between", value1, value2, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeIdNotBetween(String value1, String value2) {
            addCriterion("base_notice_id not between", value1, value2, "baseNoticeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameIsNull() {
            addCriterion("base_notice_name is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameIsNotNull() {
            addCriterion("base_notice_name is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameEqualTo(String value) {
            addCriterion("base_notice_name =", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameNotEqualTo(String value) {
            addCriterion("base_notice_name <>", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameGreaterThan(String value) {
            addCriterion("base_notice_name >", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_name >=", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameLessThan(String value) {
            addCriterion("base_notice_name <", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameLessThanOrEqualTo(String value) {
            addCriterion("base_notice_name <=", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameLike(String value) {
            addCriterion("base_notice_name like", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameNotLike(String value) {
            addCriterion("base_notice_name not like", value, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameIn(List<String> values) {
            addCriterion("base_notice_name in", values, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameNotIn(List<String> values) {
            addCriterion("base_notice_name not in", values, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameBetween(String value1, String value2) {
            addCriterion("base_notice_name between", value1, value2, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeNameNotBetween(String value1, String value2) {
            addCriterion("base_notice_name not between", value1, value2, "baseNoticeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleIsNull() {
            addCriterion("base_notice_title is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleIsNotNull() {
            addCriterion("base_notice_title is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleEqualTo(String value) {
            addCriterion("base_notice_title =", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleNotEqualTo(String value) {
            addCriterion("base_notice_title <>", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleGreaterThan(String value) {
            addCriterion("base_notice_title >", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_title >=", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleLessThan(String value) {
            addCriterion("base_notice_title <", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleLessThanOrEqualTo(String value) {
            addCriterion("base_notice_title <=", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleLike(String value) {
            addCriterion("base_notice_title like", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleNotLike(String value) {
            addCriterion("base_notice_title not like", value, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleIn(List<String> values) {
            addCriterion("base_notice_title in", values, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleNotIn(List<String> values) {
            addCriterion("base_notice_title not in", values, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleBetween(String value1, String value2) {
            addCriterion("base_notice_title between", value1, value2, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTitleNotBetween(String value1, String value2) {
            addCriterion("base_notice_title not between", value1, value2, "baseNoticeTitle");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextIsNull() {
            addCriterion("base_notice_text is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextIsNotNull() {
            addCriterion("base_notice_text is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextEqualTo(String value) {
            addCriterion("base_notice_text =", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextNotEqualTo(String value) {
            addCriterion("base_notice_text <>", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextGreaterThan(String value) {
            addCriterion("base_notice_text >", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_text >=", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextLessThan(String value) {
            addCriterion("base_notice_text <", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextLessThanOrEqualTo(String value) {
            addCriterion("base_notice_text <=", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextLike(String value) {
            addCriterion("base_notice_text like", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextNotLike(String value) {
            addCriterion("base_notice_text not like", value, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextIn(List<String> values) {
            addCriterion("base_notice_text in", values, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextNotIn(List<String> values) {
            addCriterion("base_notice_text not in", values, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextBetween(String value1, String value2) {
            addCriterion("base_notice_text between", value1, value2, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTextNotBetween(String value1, String value2) {
            addCriterion("base_notice_text not between", value1, value2, "baseNoticeText");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsIsNull() {
            addCriterion("target_sys_company_ids is null");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsIsNotNull() {
            addCriterion("target_sys_company_ids is not null");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsEqualTo(String value) {
            addCriterion("target_sys_company_ids =", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsNotEqualTo(String value) {
            addCriterion("target_sys_company_ids <>", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsGreaterThan(String value) {
            addCriterion("target_sys_company_ids >", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsGreaterThanOrEqualTo(String value) {
            addCriterion("target_sys_company_ids >=", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsLessThan(String value) {
            addCriterion("target_sys_company_ids <", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsLessThanOrEqualTo(String value) {
            addCriterion("target_sys_company_ids <=", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsLike(String value) {
            addCriterion("target_sys_company_ids like", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsNotLike(String value) {
            addCriterion("target_sys_company_ids not like", value, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsIn(List<String> values) {
            addCriterion("target_sys_company_ids in", values, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsNotIn(List<String> values) {
            addCriterion("target_sys_company_ids not in", values, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsBetween(String value1, String value2) {
            addCriterion("target_sys_company_ids between", value1, value2, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysCompanyIdsNotBetween(String value1, String value2) {
            addCriterion("target_sys_company_ids not between", value1, value2, "targetSysCompanyIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsIsNull() {
            addCriterion("target_sys_department_ids is null");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsIsNotNull() {
            addCriterion("target_sys_department_ids is not null");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsEqualTo(String value) {
            addCriterion("target_sys_department_ids =", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsNotEqualTo(String value) {
            addCriterion("target_sys_department_ids <>", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsGreaterThan(String value) {
            addCriterion("target_sys_department_ids >", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsGreaterThanOrEqualTo(String value) {
            addCriterion("target_sys_department_ids >=", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsLessThan(String value) {
            addCriterion("target_sys_department_ids <", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsLessThanOrEqualTo(String value) {
            addCriterion("target_sys_department_ids <=", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsLike(String value) {
            addCriterion("target_sys_department_ids like", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsNotLike(String value) {
            addCriterion("target_sys_department_ids not like", value, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsIn(List<String> values) {
            addCriterion("target_sys_department_ids in", values, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsNotIn(List<String> values) {
            addCriterion("target_sys_department_ids not in", values, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsBetween(String value1, String value2) {
            addCriterion("target_sys_department_ids between", value1, value2, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysDepartmentIdsNotBetween(String value1, String value2) {
            addCriterion("target_sys_department_ids not between", value1, value2, "targetSysDepartmentIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsIsNull() {
            addCriterion("target_sys_unit_ids is null");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsIsNotNull() {
            addCriterion("target_sys_unit_ids is not null");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsEqualTo(String value) {
            addCriterion("target_sys_unit_ids =", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsNotEqualTo(String value) {
            addCriterion("target_sys_unit_ids <>", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsGreaterThan(String value) {
            addCriterion("target_sys_unit_ids >", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsGreaterThanOrEqualTo(String value) {
            addCriterion("target_sys_unit_ids >=", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsLessThan(String value) {
            addCriterion("target_sys_unit_ids <", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsLessThanOrEqualTo(String value) {
            addCriterion("target_sys_unit_ids <=", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsLike(String value) {
            addCriterion("target_sys_unit_ids like", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsNotLike(String value) {
            addCriterion("target_sys_unit_ids not like", value, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsIn(List<String> values) {
            addCriterion("target_sys_unit_ids in", values, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsNotIn(List<String> values) {
            addCriterion("target_sys_unit_ids not in", values, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsBetween(String value1, String value2) {
            addCriterion("target_sys_unit_ids between", value1, value2, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysUnitIdsNotBetween(String value1, String value2) {
            addCriterion("target_sys_unit_ids not between", value1, value2, "targetSysUnitIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsIsNull() {
            addCriterion("target_sys_employee_ids is null");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsIsNotNull() {
            addCriterion("target_sys_employee_ids is not null");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsEqualTo(String value) {
            addCriterion("target_sys_employee_ids =", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsNotEqualTo(String value) {
            addCriterion("target_sys_employee_ids <>", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsGreaterThan(String value) {
            addCriterion("target_sys_employee_ids >", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsGreaterThanOrEqualTo(String value) {
            addCriterion("target_sys_employee_ids >=", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsLessThan(String value) {
            addCriterion("target_sys_employee_ids <", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsLessThanOrEqualTo(String value) {
            addCriterion("target_sys_employee_ids <=", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsLike(String value) {
            addCriterion("target_sys_employee_ids like", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsNotLike(String value) {
            addCriterion("target_sys_employee_ids not like", value, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsIn(List<String> values) {
            addCriterion("target_sys_employee_ids in", values, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsNotIn(List<String> values) {
            addCriterion("target_sys_employee_ids not in", values, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsBetween(String value1, String value2) {
            addCriterion("target_sys_employee_ids between", value1, value2, "targetSysEmployeeIds");
            return (Criteria) this;
        }

        public Criteria andTargetSysEmployeeIdsNotBetween(String value1, String value2) {
            addCriterion("target_sys_employee_ids not between", value1, value2, "targetSysEmployeeIds");
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

        public Criteria andBaseNoticeTypeIdIsNull() {
            addCriterion("base_notice_type_id is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdIsNotNull() {
            addCriterion("base_notice_type_id is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdEqualTo(String value) {
            addCriterion("base_notice_type_id =", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdNotEqualTo(String value) {
            addCriterion("base_notice_type_id <>", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdGreaterThan(String value) {
            addCriterion("base_notice_type_id >", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_type_id >=", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdLessThan(String value) {
            addCriterion("base_notice_type_id <", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdLessThanOrEqualTo(String value) {
            addCriterion("base_notice_type_id <=", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdLike(String value) {
            addCriterion("base_notice_type_id like", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdNotLike(String value) {
            addCriterion("base_notice_type_id not like", value, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdIn(List<String> values) {
            addCriterion("base_notice_type_id in", values, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdNotIn(List<String> values) {
            addCriterion("base_notice_type_id not in", values, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdBetween(String value1, String value2) {
            addCriterion("base_notice_type_id between", value1, value2, "baseNoticeTypeId");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeIdNotBetween(String value1, String value2) {
            addCriterion("base_notice_type_id not between", value1, value2, "baseNoticeTypeId");
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