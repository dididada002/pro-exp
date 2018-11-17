package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysRoleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysRoleExample() {
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

        public Criteria andSysRoleIdIsNull() {
            addCriterion("sys_role_id is null");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdIsNotNull() {
            addCriterion("sys_role_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdEqualTo(String value) {
            addCriterion("sys_role_id =", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdNotEqualTo(String value) {
            addCriterion("sys_role_id <>", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdGreaterThan(String value) {
            addCriterion("sys_role_id >", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_role_id >=", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdLessThan(String value) {
            addCriterion("sys_role_id <", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdLessThanOrEqualTo(String value) {
            addCriterion("sys_role_id <=", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdLike(String value) {
            addCriterion("sys_role_id like", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdNotLike(String value) {
            addCriterion("sys_role_id not like", value, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdIn(List<String> values) {
            addCriterion("sys_role_id in", values, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdNotIn(List<String> values) {
            addCriterion("sys_role_id not in", values, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdBetween(String value1, String value2) {
            addCriterion("sys_role_id between", value1, value2, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleIdNotBetween(String value1, String value2) {
            addCriterion("sys_role_id not between", value1, value2, "sysRoleId");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameIsNull() {
            addCriterion("sys_role_name is null");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameIsNotNull() {
            addCriterion("sys_role_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameEqualTo(String value) {
            addCriterion("sys_role_name =", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameNotEqualTo(String value) {
            addCriterion("sys_role_name <>", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameGreaterThan(String value) {
            addCriterion("sys_role_name >", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_role_name >=", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameLessThan(String value) {
            addCriterion("sys_role_name <", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameLessThanOrEqualTo(String value) {
            addCriterion("sys_role_name <=", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameLike(String value) {
            addCriterion("sys_role_name like", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameNotLike(String value) {
            addCriterion("sys_role_name not like", value, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameIn(List<String> values) {
            addCriterion("sys_role_name in", values, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameNotIn(List<String> values) {
            addCriterion("sys_role_name not in", values, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameBetween(String value1, String value2) {
            addCriterion("sys_role_name between", value1, value2, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysRoleNameNotBetween(String value1, String value2) {
            addCriterion("sys_role_name not between", value1, value2, "sysRoleName");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeIsNull() {
            addCriterion("sys_employee_type_code is null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeIsNotNull() {
            addCriterion("sys_employee_type_code is not null");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeEqualTo(String value) {
            addCriterion("sys_employee_type_code =", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeNotEqualTo(String value) {
            addCriterion("sys_employee_type_code <>", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeGreaterThan(String value) {
            addCriterion("sys_employee_type_code >", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_employee_type_code >=", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeLessThan(String value) {
            addCriterion("sys_employee_type_code <", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeLessThanOrEqualTo(String value) {
            addCriterion("sys_employee_type_code <=", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeLike(String value) {
            addCriterion("sys_employee_type_code like", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeNotLike(String value) {
            addCriterion("sys_employee_type_code not like", value, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeIn(List<String> values) {
            addCriterion("sys_employee_type_code in", values, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeNotIn(List<String> values) {
            addCriterion("sys_employee_type_code not in", values, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeBetween(String value1, String value2) {
            addCriterion("sys_employee_type_code between", value1, value2, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysEmployeeTypeCodeNotBetween(String value1, String value2) {
            addCriterion("sys_employee_type_code not between", value1, value2, "sysEmployeeTypeCode");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdIsNull() {
            addCriterion("sys_up_role_id is null");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdIsNotNull() {
            addCriterion("sys_up_role_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdEqualTo(String value) {
            addCriterion("sys_up_role_id =", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdNotEqualTo(String value) {
            addCriterion("sys_up_role_id <>", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdGreaterThan(String value) {
            addCriterion("sys_up_role_id >", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_up_role_id >=", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdLessThan(String value) {
            addCriterion("sys_up_role_id <", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdLessThanOrEqualTo(String value) {
            addCriterion("sys_up_role_id <=", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdLike(String value) {
            addCriterion("sys_up_role_id like", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdNotLike(String value) {
            addCriterion("sys_up_role_id not like", value, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdIn(List<String> values) {
            addCriterion("sys_up_role_id in", values, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdNotIn(List<String> values) {
            addCriterion("sys_up_role_id not in", values, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdBetween(String value1, String value2) {
            addCriterion("sys_up_role_id between", value1, value2, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysUpRoleIdNotBetween(String value1, String value2) {
            addCriterion("sys_up_role_id not between", value1, value2, "sysUpRoleId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdIsNull() {
            addCriterion("sys_company_id is null");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdIsNotNull() {
            addCriterion("sys_company_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdEqualTo(String value) {
            addCriterion("sys_company_id =", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdNotEqualTo(String value) {
            addCriterion("sys_company_id <>", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdGreaterThan(String value) {
            addCriterion("sys_company_id >", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_company_id >=", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdLessThan(String value) {
            addCriterion("sys_company_id <", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdLessThanOrEqualTo(String value) {
            addCriterion("sys_company_id <=", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdLike(String value) {
            addCriterion("sys_company_id like", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdNotLike(String value) {
            addCriterion("sys_company_id not like", value, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdIn(List<String> values) {
            addCriterion("sys_company_id in", values, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdNotIn(List<String> values) {
            addCriterion("sys_company_id not in", values, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdBetween(String value1, String value2) {
            addCriterion("sys_company_id between", value1, value2, "sysCompanyId");
            return (Criteria) this;
        }

        public Criteria andSysCompanyIdNotBetween(String value1, String value2) {
            addCriterion("sys_company_id not between", value1, value2, "sysCompanyId");
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