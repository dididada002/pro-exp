package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysM2layerExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysM2layerExample() {
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

        public Criteria andSysM2layerIdIsNull() {
            addCriterion("sys_m2layer_id is null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdIsNotNull() {
            addCriterion("sys_m2layer_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdEqualTo(String value) {
            addCriterion("sys_m2layer_id =", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdNotEqualTo(String value) {
            addCriterion("sys_m2layer_id <>", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdGreaterThan(String value) {
            addCriterion("sys_m2layer_id >", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_id >=", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdLessThan(String value) {
            addCriterion("sys_m2layer_id <", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdLessThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_id <=", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdLike(String value) {
            addCriterion("sys_m2layer_id like", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdNotLike(String value) {
            addCriterion("sys_m2layer_id not like", value, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdIn(List<String> values) {
            addCriterion("sys_m2layer_id in", values, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdNotIn(List<String> values) {
            addCriterion("sys_m2layer_id not in", values, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdBetween(String value1, String value2) {
            addCriterion("sys_m2layer_id between", value1, value2, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerIdNotBetween(String value1, String value2) {
            addCriterion("sys_m2layer_id not between", value1, value2, "sysM2layerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdIsNull() {
            addCriterion("sys_mlayer_id is null");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdIsNotNull() {
            addCriterion("sys_mlayer_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdEqualTo(String value) {
            addCriterion("sys_mlayer_id =", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdNotEqualTo(String value) {
            addCriterion("sys_mlayer_id <>", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdGreaterThan(String value) {
            addCriterion("sys_mlayer_id >", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_mlayer_id >=", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdLessThan(String value) {
            addCriterion("sys_mlayer_id <", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdLessThanOrEqualTo(String value) {
            addCriterion("sys_mlayer_id <=", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdLike(String value) {
            addCriterion("sys_mlayer_id like", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdNotLike(String value) {
            addCriterion("sys_mlayer_id not like", value, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdIn(List<String> values) {
            addCriterion("sys_mlayer_id in", values, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdNotIn(List<String> values) {
            addCriterion("sys_mlayer_id not in", values, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdBetween(String value1, String value2) {
            addCriterion("sys_mlayer_id between", value1, value2, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysMlayerIdNotBetween(String value1, String value2) {
            addCriterion("sys_mlayer_id not between", value1, value2, "sysMlayerId");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameIsNull() {
            addCriterion("sys_m2layer_name is null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameIsNotNull() {
            addCriterion("sys_m2layer_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameEqualTo(String value) {
            addCriterion("sys_m2layer_name =", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameNotEqualTo(String value) {
            addCriterion("sys_m2layer_name <>", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameGreaterThan(String value) {
            addCriterion("sys_m2layer_name >", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_name >=", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameLessThan(String value) {
            addCriterion("sys_m2layer_name <", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameLessThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_name <=", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameLike(String value) {
            addCriterion("sys_m2layer_name like", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameNotLike(String value) {
            addCriterion("sys_m2layer_name not like", value, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameIn(List<String> values) {
            addCriterion("sys_m2layer_name in", values, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameNotIn(List<String> values) {
            addCriterion("sys_m2layer_name not in", values, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameBetween(String value1, String value2) {
            addCriterion("sys_m2layer_name between", value1, value2, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerNameNotBetween(String value1, String value2) {
            addCriterion("sys_m2layer_name not between", value1, value2, "sysM2layerName");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagIsNull() {
            addCriterion("sys_m2layer_tag is null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagIsNotNull() {
            addCriterion("sys_m2layer_tag is not null");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagEqualTo(String value) {
            addCriterion("sys_m2layer_tag =", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagNotEqualTo(String value) {
            addCriterion("sys_m2layer_tag <>", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagGreaterThan(String value) {
            addCriterion("sys_m2layer_tag >", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagGreaterThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_tag >=", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagLessThan(String value) {
            addCriterion("sys_m2layer_tag <", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagLessThanOrEqualTo(String value) {
            addCriterion("sys_m2layer_tag <=", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagLike(String value) {
            addCriterion("sys_m2layer_tag like", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagNotLike(String value) {
            addCriterion("sys_m2layer_tag not like", value, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagIn(List<String> values) {
            addCriterion("sys_m2layer_tag in", values, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagNotIn(List<String> values) {
            addCriterion("sys_m2layer_tag not in", values, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagBetween(String value1, String value2) {
            addCriterion("sys_m2layer_tag between", value1, value2, "sysM2layerTag");
            return (Criteria) this;
        }

        public Criteria andSysM2layerTagNotBetween(String value1, String value2) {
            addCriterion("sys_m2layer_tag not between", value1, value2, "sysM2layerTag");
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

        public Criteria andSysUrlIsNull() {
            addCriterion("sys_url is null");
            return (Criteria) this;
        }

        public Criteria andSysUrlIsNotNull() {
            addCriterion("sys_url is not null");
            return (Criteria) this;
        }

        public Criteria andSysUrlEqualTo(String value) {
            addCriterion("sys_url =", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlNotEqualTo(String value) {
            addCriterion("sys_url <>", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlGreaterThan(String value) {
            addCriterion("sys_url >", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlGreaterThanOrEqualTo(String value) {
            addCriterion("sys_url >=", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlLessThan(String value) {
            addCriterion("sys_url <", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlLessThanOrEqualTo(String value) {
            addCriterion("sys_url <=", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlLike(String value) {
            addCriterion("sys_url like", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlNotLike(String value) {
            addCriterion("sys_url not like", value, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlIn(List<String> values) {
            addCriterion("sys_url in", values, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlNotIn(List<String> values) {
            addCriterion("sys_url not in", values, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlBetween(String value1, String value2) {
            addCriterion("sys_url between", value1, value2, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysUrlNotBetween(String value1, String value2) {
            addCriterion("sys_url not between", value1, value2, "sysUrl");
            return (Criteria) this;
        }

        public Criteria andSysPriorityIsNull() {
            addCriterion("sys_priority is null");
            return (Criteria) this;
        }

        public Criteria andSysPriorityIsNotNull() {
            addCriterion("sys_priority is not null");
            return (Criteria) this;
        }

        public Criteria andSysPriorityEqualTo(Integer value) {
            addCriterion("sys_priority =", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityNotEqualTo(Integer value) {
            addCriterion("sys_priority <>", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityGreaterThan(Integer value) {
            addCriterion("sys_priority >", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityGreaterThanOrEqualTo(Integer value) {
            addCriterion("sys_priority >=", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityLessThan(Integer value) {
            addCriterion("sys_priority <", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityLessThanOrEqualTo(Integer value) {
            addCriterion("sys_priority <=", value, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityIn(List<Integer> values) {
            addCriterion("sys_priority in", values, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityNotIn(List<Integer> values) {
            addCriterion("sys_priority not in", values, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityBetween(Integer value1, Integer value2) {
            addCriterion("sys_priority between", value1, value2, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysPriorityNotBetween(Integer value1, Integer value2) {
            addCriterion("sys_priority not between", value1, value2, "sysPriority");
            return (Criteria) this;
        }

        public Criteria andSysComponentIsNull() {
            addCriterion("sys_component is null");
            return (Criteria) this;
        }

        public Criteria andSysComponentIsNotNull() {
            addCriterion("sys_component is not null");
            return (Criteria) this;
        }

        public Criteria andSysComponentEqualTo(String value) {
            addCriterion("sys_component =", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentNotEqualTo(String value) {
            addCriterion("sys_component <>", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentGreaterThan(String value) {
            addCriterion("sys_component >", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentGreaterThanOrEqualTo(String value) {
            addCriterion("sys_component >=", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentLessThan(String value) {
            addCriterion("sys_component <", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentLessThanOrEqualTo(String value) {
            addCriterion("sys_component <=", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentLike(String value) {
            addCriterion("sys_component like", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentNotLike(String value) {
            addCriterion("sys_component not like", value, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentIn(List<String> values) {
            addCriterion("sys_component in", values, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentNotIn(List<String> values) {
            addCriterion("sys_component not in", values, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentBetween(String value1, String value2) {
            addCriterion("sys_component between", value1, value2, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysComponentNotBetween(String value1, String value2) {
            addCriterion("sys_component not between", value1, value2, "sysComponent");
            return (Criteria) this;
        }

        public Criteria andSysIconIsNull() {
            addCriterion("sys_icon is null");
            return (Criteria) this;
        }

        public Criteria andSysIconIsNotNull() {
            addCriterion("sys_icon is not null");
            return (Criteria) this;
        }

        public Criteria andSysIconEqualTo(String value) {
            addCriterion("sys_icon =", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconNotEqualTo(String value) {
            addCriterion("sys_icon <>", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconGreaterThan(String value) {
            addCriterion("sys_icon >", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconGreaterThanOrEqualTo(String value) {
            addCriterion("sys_icon >=", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconLessThan(String value) {
            addCriterion("sys_icon <", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconLessThanOrEqualTo(String value) {
            addCriterion("sys_icon <=", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconLike(String value) {
            addCriterion("sys_icon like", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconNotLike(String value) {
            addCriterion("sys_icon not like", value, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconIn(List<String> values) {
            addCriterion("sys_icon in", values, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconNotIn(List<String> values) {
            addCriterion("sys_icon not in", values, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconBetween(String value1, String value2) {
            addCriterion("sys_icon between", value1, value2, "sysIcon");
            return (Criteria) this;
        }

        public Criteria andSysIconNotBetween(String value1, String value2) {
            addCriterion("sys_icon not between", value1, value2, "sysIcon");
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