package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class BaseNoticeTypeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BaseNoticeTypeExample() {
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

        public Criteria andBaseNoticeTypeNameIsNull() {
            addCriterion("base_notice_type_name is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameIsNotNull() {
            addCriterion("base_notice_type_name is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameEqualTo(String value) {
            addCriterion("base_notice_type_name =", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameNotEqualTo(String value) {
            addCriterion("base_notice_type_name <>", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameGreaterThan(String value) {
            addCriterion("base_notice_type_name >", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_type_name >=", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameLessThan(String value) {
            addCriterion("base_notice_type_name <", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameLessThanOrEqualTo(String value) {
            addCriterion("base_notice_type_name <=", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameLike(String value) {
            addCriterion("base_notice_type_name like", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameNotLike(String value) {
            addCriterion("base_notice_type_name not like", value, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameIn(List<String> values) {
            addCriterion("base_notice_type_name in", values, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameNotIn(List<String> values) {
            addCriterion("base_notice_type_name not in", values, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameBetween(String value1, String value2) {
            addCriterion("base_notice_type_name between", value1, value2, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeNameNotBetween(String value1, String value2) {
            addCriterion("base_notice_type_name not between", value1, value2, "baseNoticeTypeName");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagIsNull() {
            addCriterion("base_notice_type_flag is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagIsNotNull() {
            addCriterion("base_notice_type_flag is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagEqualTo(String value) {
            addCriterion("base_notice_type_flag =", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagNotEqualTo(String value) {
            addCriterion("base_notice_type_flag <>", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagGreaterThan(String value) {
            addCriterion("base_notice_type_flag >", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_type_flag >=", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagLessThan(String value) {
            addCriterion("base_notice_type_flag <", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagLessThanOrEqualTo(String value) {
            addCriterion("base_notice_type_flag <=", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagLike(String value) {
            addCriterion("base_notice_type_flag like", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagNotLike(String value) {
            addCriterion("base_notice_type_flag not like", value, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagIn(List<String> values) {
            addCriterion("base_notice_type_flag in", values, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagNotIn(List<String> values) {
            addCriterion("base_notice_type_flag not in", values, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagBetween(String value1, String value2) {
            addCriterion("base_notice_type_flag between", value1, value2, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeFlagNotBetween(String value1, String value2) {
            addCriterion("base_notice_type_flag not between", value1, value2, "baseNoticeTypeFlag");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedIsNull() {
            addCriterion("base_notice_type_replied is null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedIsNotNull() {
            addCriterion("base_notice_type_replied is not null");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedEqualTo(String value) {
            addCriterion("base_notice_type_replied =", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedNotEqualTo(String value) {
            addCriterion("base_notice_type_replied <>", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedGreaterThan(String value) {
            addCriterion("base_notice_type_replied >", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedGreaterThanOrEqualTo(String value) {
            addCriterion("base_notice_type_replied >=", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedLessThan(String value) {
            addCriterion("base_notice_type_replied <", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedLessThanOrEqualTo(String value) {
            addCriterion("base_notice_type_replied <=", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedLike(String value) {
            addCriterion("base_notice_type_replied like", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedNotLike(String value) {
            addCriterion("base_notice_type_replied not like", value, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedIn(List<String> values) {
            addCriterion("base_notice_type_replied in", values, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedNotIn(List<String> values) {
            addCriterion("base_notice_type_replied not in", values, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedBetween(String value1, String value2) {
            addCriterion("base_notice_type_replied between", value1, value2, "baseNoticeTypeReplied");
            return (Criteria) this;
        }

        public Criteria andBaseNoticeTypeRepliedNotBetween(String value1, String value2) {
            addCriterion("base_notice_type_replied not between", value1, value2, "baseNoticeTypeReplied");
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