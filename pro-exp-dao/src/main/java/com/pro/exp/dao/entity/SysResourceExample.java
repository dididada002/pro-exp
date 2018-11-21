package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysResourceExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysResourceExample() {
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

        public Criteria andSysResourceIdIsNull() {
            addCriterion("sys_resource_id is null");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdIsNotNull() {
            addCriterion("sys_resource_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdEqualTo(String value) {
            addCriterion("sys_resource_id =", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdNotEqualTo(String value) {
            addCriterion("sys_resource_id <>", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdGreaterThan(String value) {
            addCriterion("sys_resource_id >", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_resource_id >=", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdLessThan(String value) {
            addCriterion("sys_resource_id <", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdLessThanOrEqualTo(String value) {
            addCriterion("sys_resource_id <=", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdLike(String value) {
            addCriterion("sys_resource_id like", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdNotLike(String value) {
            addCriterion("sys_resource_id not like", value, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdIn(List<String> values) {
            addCriterion("sys_resource_id in", values, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdNotIn(List<String> values) {
            addCriterion("sys_resource_id not in", values, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdBetween(String value1, String value2) {
            addCriterion("sys_resource_id between", value1, value2, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceIdNotBetween(String value1, String value2) {
            addCriterion("sys_resource_id not between", value1, value2, "sysResourceId");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameIsNull() {
            addCriterion("sys_resource_name is null");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameIsNotNull() {
            addCriterion("sys_resource_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameEqualTo(String value) {
            addCriterion("sys_resource_name =", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameNotEqualTo(String value) {
            addCriterion("sys_resource_name <>", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameGreaterThan(String value) {
            addCriterion("sys_resource_name >", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_resource_name >=", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameLessThan(String value) {
            addCriterion("sys_resource_name <", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameLessThanOrEqualTo(String value) {
            addCriterion("sys_resource_name <=", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameLike(String value) {
            addCriterion("sys_resource_name like", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameNotLike(String value) {
            addCriterion("sys_resource_name not like", value, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameIn(List<String> values) {
            addCriterion("sys_resource_name in", values, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameNotIn(List<String> values) {
            addCriterion("sys_resource_name not in", values, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameBetween(String value1, String value2) {
            addCriterion("sys_resource_name between", value1, value2, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysResourceNameNotBetween(String value1, String value2) {
            addCriterion("sys_resource_name not between", value1, value2, "sysResourceName");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagIsNull() {
            addCriterion("sys_power_tag is null");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagIsNotNull() {
            addCriterion("sys_power_tag is not null");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagEqualTo(String value) {
            addCriterion("sys_power_tag =", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagNotEqualTo(String value) {
            addCriterion("sys_power_tag <>", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagGreaterThan(String value) {
            addCriterion("sys_power_tag >", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagGreaterThanOrEqualTo(String value) {
            addCriterion("sys_power_tag >=", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagLessThan(String value) {
            addCriterion("sys_power_tag <", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagLessThanOrEqualTo(String value) {
            addCriterion("sys_power_tag <=", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagLike(String value) {
            addCriterion("sys_power_tag like", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagNotLike(String value) {
            addCriterion("sys_power_tag not like", value, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagIn(List<String> values) {
            addCriterion("sys_power_tag in", values, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagNotIn(List<String> values) {
            addCriterion("sys_power_tag not in", values, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagBetween(String value1, String value2) {
            addCriterion("sys_power_tag between", value1, value2, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerTagNotBetween(String value1, String value2) {
            addCriterion("sys_power_tag not between", value1, value2, "sysPowerTag");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleIsNull() {
            addCriterion("sys_power_rule is null");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleIsNotNull() {
            addCriterion("sys_power_rule is not null");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleEqualTo(String value) {
            addCriterion("sys_power_rule =", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleNotEqualTo(String value) {
            addCriterion("sys_power_rule <>", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleGreaterThan(String value) {
            addCriterion("sys_power_rule >", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleGreaterThanOrEqualTo(String value) {
            addCriterion("sys_power_rule >=", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleLessThan(String value) {
            addCriterion("sys_power_rule <", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleLessThanOrEqualTo(String value) {
            addCriterion("sys_power_rule <=", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleLike(String value) {
            addCriterion("sys_power_rule like", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleNotLike(String value) {
            addCriterion("sys_power_rule not like", value, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleIn(List<String> values) {
            addCriterion("sys_power_rule in", values, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleNotIn(List<String> values) {
            addCriterion("sys_power_rule not in", values, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleBetween(String value1, String value2) {
            addCriterion("sys_power_rule between", value1, value2, "sysPowerRule");
            return (Criteria) this;
        }

        public Criteria andSysPowerRuleNotBetween(String value1, String value2) {
            addCriterion("sys_power_rule not between", value1, value2, "sysPowerRule");
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