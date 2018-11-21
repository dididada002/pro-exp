package com.pro.exp.dao.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SysCountryExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SysCountryExample() {
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

        public Criteria andSysCountryIdIsNull() {
            addCriterion("sys_country_id is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdIsNotNull() {
            addCriterion("sys_country_id is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdEqualTo(String value) {
            addCriterion("sys_country_id =", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdNotEqualTo(String value) {
            addCriterion("sys_country_id <>", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdGreaterThan(String value) {
            addCriterion("sys_country_id >", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_id >=", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdLessThan(String value) {
            addCriterion("sys_country_id <", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdLessThanOrEqualTo(String value) {
            addCriterion("sys_country_id <=", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdLike(String value) {
            addCriterion("sys_country_id like", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdNotLike(String value) {
            addCriterion("sys_country_id not like", value, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdIn(List<String> values) {
            addCriterion("sys_country_id in", values, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdNotIn(List<String> values) {
            addCriterion("sys_country_id not in", values, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdBetween(String value1, String value2) {
            addCriterion("sys_country_id between", value1, value2, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryIdNotBetween(String value1, String value2) {
            addCriterion("sys_country_id not between", value1, value2, "sysCountryId");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameIsNull() {
            addCriterion("sys_country_name is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameIsNotNull() {
            addCriterion("sys_country_name is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameEqualTo(String value) {
            addCriterion("sys_country_name =", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameNotEqualTo(String value) {
            addCriterion("sys_country_name <>", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameGreaterThan(String value) {
            addCriterion("sys_country_name >", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_name >=", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameLessThan(String value) {
            addCriterion("sys_country_name <", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameLessThanOrEqualTo(String value) {
            addCriterion("sys_country_name <=", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameLike(String value) {
            addCriterion("sys_country_name like", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameNotLike(String value) {
            addCriterion("sys_country_name not like", value, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameIn(List<String> values) {
            addCriterion("sys_country_name in", values, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameNotIn(List<String> values) {
            addCriterion("sys_country_name not in", values, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameBetween(String value1, String value2) {
            addCriterion("sys_country_name between", value1, value2, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryNameNotBetween(String value1, String value2) {
            addCriterion("sys_country_name not between", value1, value2, "sysCountryName");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameIsNull() {
            addCriterion("sys_country_englishname is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameIsNotNull() {
            addCriterion("sys_country_englishname is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameEqualTo(String value) {
            addCriterion("sys_country_englishname =", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameNotEqualTo(String value) {
            addCriterion("sys_country_englishname <>", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameGreaterThan(String value) {
            addCriterion("sys_country_englishname >", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_englishname >=", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameLessThan(String value) {
            addCriterion("sys_country_englishname <", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameLessThanOrEqualTo(String value) {
            addCriterion("sys_country_englishname <=", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameLike(String value) {
            addCriterion("sys_country_englishname like", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameNotLike(String value) {
            addCriterion("sys_country_englishname not like", value, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameIn(List<String> values) {
            addCriterion("sys_country_englishname in", values, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameNotIn(List<String> values) {
            addCriterion("sys_country_englishname not in", values, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameBetween(String value1, String value2) {
            addCriterion("sys_country_englishname between", value1, value2, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEnglishnameNotBetween(String value1, String value2) {
            addCriterion("sys_country_englishname not between", value1, value2, "sysCountryEnglishname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameIsNull() {
            addCriterion("sys_country_engname is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameIsNotNull() {
            addCriterion("sys_country_engname is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameEqualTo(String value) {
            addCriterion("sys_country_engname =", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameNotEqualTo(String value) {
            addCriterion("sys_country_engname <>", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameGreaterThan(String value) {
            addCriterion("sys_country_engname >", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_engname >=", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameLessThan(String value) {
            addCriterion("sys_country_engname <", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameLessThanOrEqualTo(String value) {
            addCriterion("sys_country_engname <=", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameLike(String value) {
            addCriterion("sys_country_engname like", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameNotLike(String value) {
            addCriterion("sys_country_engname not like", value, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameIn(List<String> values) {
            addCriterion("sys_country_engname in", values, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameNotIn(List<String> values) {
            addCriterion("sys_country_engname not in", values, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameBetween(String value1, String value2) {
            addCriterion("sys_country_engname between", value1, value2, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryEngnameNotBetween(String value1, String value2) {
            addCriterion("sys_country_engname not between", value1, value2, "sysCountryEngname");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagIsNull() {
            addCriterion("sys_country_jetlag is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagIsNotNull() {
            addCriterion("sys_country_jetlag is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagEqualTo(String value) {
            addCriterion("sys_country_jetlag =", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagNotEqualTo(String value) {
            addCriterion("sys_country_jetlag <>", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagGreaterThan(String value) {
            addCriterion("sys_country_jetlag >", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_jetlag >=", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagLessThan(String value) {
            addCriterion("sys_country_jetlag <", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagLessThanOrEqualTo(String value) {
            addCriterion("sys_country_jetlag <=", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagLike(String value) {
            addCriterion("sys_country_jetlag like", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagNotLike(String value) {
            addCriterion("sys_country_jetlag not like", value, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagIn(List<String> values) {
            addCriterion("sys_country_jetlag in", values, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagNotIn(List<String> values) {
            addCriterion("sys_country_jetlag not in", values, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagBetween(String value1, String value2) {
            addCriterion("sys_country_jetlag between", value1, value2, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryJetlagNotBetween(String value1, String value2) {
            addCriterion("sys_country_jetlag not between", value1, value2, "sysCountryJetlag");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeIsNull() {
            addCriterion("sys_country_phonecode is null");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeIsNotNull() {
            addCriterion("sys_country_phonecode is not null");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeEqualTo(String value) {
            addCriterion("sys_country_phonecode =", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeNotEqualTo(String value) {
            addCriterion("sys_country_phonecode <>", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeGreaterThan(String value) {
            addCriterion("sys_country_phonecode >", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeGreaterThanOrEqualTo(String value) {
            addCriterion("sys_country_phonecode >=", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeLessThan(String value) {
            addCriterion("sys_country_phonecode <", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeLessThanOrEqualTo(String value) {
            addCriterion("sys_country_phonecode <=", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeLike(String value) {
            addCriterion("sys_country_phonecode like", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeNotLike(String value) {
            addCriterion("sys_country_phonecode not like", value, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeIn(List<String> values) {
            addCriterion("sys_country_phonecode in", values, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeNotIn(List<String> values) {
            addCriterion("sys_country_phonecode not in", values, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeBetween(String value1, String value2) {
            addCriterion("sys_country_phonecode between", value1, value2, "sysCountryPhonecode");
            return (Criteria) this;
        }

        public Criteria andSysCountryPhonecodeNotBetween(String value1, String value2) {
            addCriterion("sys_country_phonecode not between", value1, value2, "sysCountryPhonecode");
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