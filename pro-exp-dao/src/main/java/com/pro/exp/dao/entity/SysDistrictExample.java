package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysDistrictExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysDistrictExample() {
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

        public Criteria andSysDistrictIdIsNull() {
            addCriterion("sys_district_id is null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdIsNotNull() {
            addCriterion("sys_district_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdEqualTo(String value) {
            addCriterion("sys_district_id =", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdNotEqualTo(String value) {
            addCriterion("sys_district_id <>", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdGreaterThan(String value) {
            addCriterion("sys_district_id >", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_district_id >=", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdLessThan(String value) {
            addCriterion("sys_district_id <", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdLessThanOrEqualTo(String value) {
            addCriterion("sys_district_id <=", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdLike(String value) {
            addCriterion("sys_district_id like", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdNotLike(String value) {
            addCriterion("sys_district_id not like", value, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdIn(List<String> values) {
            addCriterion("sys_district_id in", values, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdNotIn(List<String> values) {
            addCriterion("sys_district_id not in", values, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdBetween(String value1, String value2) {
            addCriterion("sys_district_id between", value1, value2, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictIdNotBetween(String value1, String value2) {
            addCriterion("sys_district_id not between", value1, value2, "sysDistrictId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdIsNull() {
            addCriterion("sys_city_id is null");
            return (Criteria) this;
        }

        public Criteria andSysCityIdIsNotNull() {
            addCriterion("sys_city_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysCityIdEqualTo(String value) {
            addCriterion("sys_city_id =", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdNotEqualTo(String value) {
            addCriterion("sys_city_id <>", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdGreaterThan(String value) {
            addCriterion("sys_city_id >", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_city_id >=", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdLessThan(String value) {
            addCriterion("sys_city_id <", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdLessThanOrEqualTo(String value) {
            addCriterion("sys_city_id <=", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdLike(String value) {
            addCriterion("sys_city_id like", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdNotLike(String value) {
            addCriterion("sys_city_id not like", value, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdIn(List<String> values) {
            addCriterion("sys_city_id in", values, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdNotIn(List<String> values) {
            addCriterion("sys_city_id not in", values, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdBetween(String value1, String value2) {
            addCriterion("sys_city_id between", value1, value2, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysCityIdNotBetween(String value1, String value2) {
            addCriterion("sys_city_id not between", value1, value2, "sysCityId");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameIsNull() {
            addCriterion("sys_district_name is null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameIsNotNull() {
            addCriterion("sys_district_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameEqualTo(String value) {
            addCriterion("sys_district_name =", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameNotEqualTo(String value) {
            addCriterion("sys_district_name <>", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameGreaterThan(String value) {
            addCriterion("sys_district_name >", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_district_name >=", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameLessThan(String value) {
            addCriterion("sys_district_name <", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameLessThanOrEqualTo(String value) {
            addCriterion("sys_district_name <=", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameLike(String value) {
            addCriterion("sys_district_name like", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameNotLike(String value) {
            addCriterion("sys_district_name not like", value, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameIn(List<String> values) {
            addCriterion("sys_district_name in", values, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameNotIn(List<String> values) {
            addCriterion("sys_district_name not in", values, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameBetween(String value1, String value2) {
            addCriterion("sys_district_name between", value1, value2, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictNameNotBetween(String value1, String value2) {
            addCriterion("sys_district_name not between", value1, value2, "sysDistrictName");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeIsNull() {
            addCriterion("sys_district_code is null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeIsNotNull() {
            addCriterion("sys_district_code is not null");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeEqualTo(String value) {
            addCriterion("sys_district_code =", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeNotEqualTo(String value) {
            addCriterion("sys_district_code <>", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeGreaterThan(String value) {
            addCriterion("sys_district_code >", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_district_code >=", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeLessThan(String value) {
            addCriterion("sys_district_code <", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeLessThanOrEqualTo(String value) {
            addCriterion("sys_district_code <=", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeLike(String value) {
            addCriterion("sys_district_code like", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeNotLike(String value) {
            addCriterion("sys_district_code not like", value, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeIn(List<String> values) {
            addCriterion("sys_district_code in", values, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeNotIn(List<String> values) {
            addCriterion("sys_district_code not in", values, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeBetween(String value1, String value2) {
            addCriterion("sys_district_code between", value1, value2, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysDistrictCodeNotBetween(String value1, String value2) {
            addCriterion("sys_district_code not between", value1, value2, "sysDistrictCode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeIsNull() {
            addCriterion("sys_zipcode is null");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeIsNotNull() {
            addCriterion("sys_zipcode is not null");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeEqualTo(String value) {
            addCriterion("sys_zipcode =", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeNotEqualTo(String value) {
            addCriterion("sys_zipcode <>", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeGreaterThan(String value) {
            addCriterion("sys_zipcode >", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_zipcode >=", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeLessThan(String value) {
            addCriterion("sys_zipcode <", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeLessThanOrEqualTo(String value) {
            addCriterion("sys_zipcode <=", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeLike(String value) {
            addCriterion("sys_zipcode like", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeNotLike(String value) {
            addCriterion("sys_zipcode not like", value, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeIn(List<String> values) {
            addCriterion("sys_zipcode in", values, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeNotIn(List<String> values) {
            addCriterion("sys_zipcode not in", values, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeBetween(String value1, String value2) {
            addCriterion("sys_zipcode between", value1, value2, "sysZipcode");
            return (Criteria) this;
        }

        public Criteria andSysZipcodeNotBetween(String value1, String value2) {
            addCriterion("sys_zipcode not between", value1, value2, "sysZipcode");
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