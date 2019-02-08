package com.pro.exp.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import com.pro.exp.common.Constants;
import com.pro.exp.common.HttpStatus;
import com.pro.exp.common.RedisKeys;
import com.pro.exp.dao.interfaces.BaseExampleTypeMapper;
import com.pro.exp.model.example.*;
import com.pro.exp.service.BaseExampleService;
import com.pro.exp.service.RedisService;
import com.pro.exp.service.exception.ApiRuntimeException;
import com.pro.exp.service.utils.BeanToSqlKey;
import com.pro.exp.service.utils.GsonUtil;
import com.pro.exp.service.utils.StringUtils;
import lombok.extern.log4j.Log4j2;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.util.NumberUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 0:23
 */
@Service
@Log4j2
public class BaseExampleSerivceImpl implements BaseExampleService {
    @Autowired
    BaseExampleTypeMapper mapper;

    @Autowired
    RedisService redisService;

    /**
     * 获取课程条件查询sql语句
     *
     * @param form
     * @return
     */
    private static String getWhereSql(BaseSelectForm form, List<SelectExampleForm> powerForms) {
        List<SelectExampleForm> selectExampleForms = form.getSelectExampleForms();
        StringBuilder whereSql = new StringBuilder();
        whereSql.append(Constants.TABLE_ALIAS_DOT).append("sys_isactive = 'Y' ");
        whereSql.append(SelectLinkType.AND.getMysqlKey());
        List<String> orgParams = Splitter.on(",").splitToList("sysGroupId,sysCompanyId,sysDepartmentId,sysClassId,sysUnitId");
        boolean existOrgParam = false;
        if (!CollectionUtils.isEmpty(selectExampleForms)) {
            SelectLinkType link = null;
            for (SelectExampleForm selectForm : selectExampleForms) {
                if (StringUtils.isEmpty(selectForm.getField())) {
                    throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "selectExampleForms.field不能为空");
                }
                if (selectForm.getLink() == null) {
                    throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "数据格式错误，selectExampleForms.link关键字不能为空");
                }
                if (orgParams.contains(selectForm.getField())) {
                    existOrgParam = true;
                }
                SelectKeyWordType conditionType = selectForm.getType();
                List<String> fieldValue = selectForm.getFieldValue();
                int count = fieldValue.size();
                int number = 0;
                Boolean isEmptyB = true;
                link = selectForm.getLink();
                //添加查询有多个值
                if (count > 0) {
                    String condKey = null;
                    for (String s : fieldValue) {
                        if(!Optional.ofNullable(s).isPresent()){
                            isEmptyB=false;
                            continue;
                        }
                        if (StringUtils.isEmpty(s)) {
                            if (SelectKeyWordType.LIKE.equals(conditionType)) {
                                isEmptyB = false;
                                continue;
                            }
                            if (!SelectKeyWordType.ISNUll.equals(conditionType)) {
                                throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "数据错误，type为" + conditionType.name() + " value内容请勿传空字符串");
                            }
                        }
                        whereSql.append(Constants.TABLE_ALIAS_DOT).append(BeanToSqlKey.toSqlKey(selectForm.getField()));
                        // = 、 != 、IS NUll
                        whereSql.append(conditionType.getMysqlKey());
                        if (SelectKeyWordType.LIKE.equals(conditionType)) {
                            whereSql.append("'%").append(s).append("%'");
                        } else if (!SelectKeyWordType.ISNUll.equals(conditionType)) {
                            whereSql.append("'").append(s).append("'");
                        }
                        condKey = SelectLinkType.AND.getMysqlKey();
                        if (SelectKeyWordType.EQ.equals(conditionType) || SelectKeyWordType.LIKE.equals(conditionType)) {
                            condKey = SelectLinkType.OR.getMysqlKey();
                        }
                        whereSql.append(condKey);
                        number++;
                    }

                    if (number != 0) {
                        whereSql.delete(whereSql.length() - condKey.length(), whereSql.length());
                    }
                }

                if (isEmptyB) {
                    whereSql.append(link.getMysqlKey());
                }
            }
            if (whereSql.toString().endsWith(link.getMysqlKey())) {
                whereSql.delete(whereSql.length() - link.getMysqlKey().length(), whereSql.length());
            }


        }

        if (!existOrgParam && !CollectionUtils.isEmpty(powerForms)) {//如果不存在组织查询，就使用数据权限表单
            if (!whereSql.toString().endsWith(SelectLinkType.AND.getMysqlKey())) {
                whereSql.append(SelectLinkType.AND.getMysqlKey());
            }
            whereSql.append("(");
            SelectLinkType link = null;
            for (SelectExampleForm innerForm : powerForms) {
                whereSql.append(Constants.TABLE_ALIAS_DOT).append(BeanToSqlKey.toSqlKey(innerForm.getField()));
                whereSql.append(innerForm.getType().getMysqlKey()).append("('");
                whereSql.append(Joiner.on("','").join(innerForm.getFieldValue()));
                link = innerForm.getLink();
                whereSql.append("')").append(link.getMysqlKey());
            }
            if (whereSql.toString().endsWith(link.getMysqlKey())) {
                whereSql.delete(whereSql.length() - link.getMysqlKey().length(), whereSql.length());
            }
            whereSql.append(")");
        }
        if (whereSql.toString().endsWith(SelectLinkType.AND.getMysqlKey())) {
            whereSql.delete(whereSql.length() - SelectLinkType.AND.getMysqlKey().length(), whereSql.length());
        }
        //生成排序语句
        whereSql.append(orderBySql(form));
        return whereSql.toString();
    }

    /***
     *  生成排序的sql
     * @param form
     */
    private static String orderBySql(BaseSelectForm form) {
        StringBuilder orderByStr = new StringBuilder();
        List<SelectOrderBy> orderByValueAndType = form.getOrderByValueAndType();
        String formName = BeanToSqlKey.getObjectName(form.getClassName());
        orderByStr.append(" ORDER BY ");
        if (orderByValueAndType == null) {
            orderByStr.append(Constants.TABLE_ALIAS_DOT);
            orderByStr.append(formName);
            orderByStr.append("_id");
        } else {
            for (SelectOrderBy selectOrderBy : orderByValueAndType) {
                if (StringUtils.isEmpty(selectOrderBy.getOrderValue())) {
                    throw new ApiRuntimeException(HttpStatus.NOT_ACCEPTABLE, 1, "数据格式错误请添加相应的排序属性名称");
                }
                orderByStr.append(Constants.TABLE_ALIAS_DOT);
                orderByStr.append(BeanToSqlKey.toSqlKey(selectOrderBy.getOrderValue()));
                orderByStr.append(selectOrderBy.getOrderType().getMysqlKey());
                orderByStr.append(",");
            }

            orderByStr.delete(orderByStr.length() - 2, orderByStr.length());
        }
        return orderByStr.toString();
    }

    //拼装sql
    private PageInfo<Map<String, Object>> selectByPrimaryWithPower(BaseSelectForm form, List<SelectExampleForm> powerForms) {
        List<Map<String, Object>> lists;
        HashMap<String, Object> sqlMap = Maps.newHashMap();
        if (form.getLimit() > 0) {
            PageHelper.startPage(form.getPage(), form.getLimit());
        } else {
//            PageHelper.startPage(form.getPage(), 1000000);
        }
        //获取返回字段
        String objectValue = BeanToSqlKey.getObjectValue(form.getClassName());
        if (StringUtils.isNotEmpty(objectValue)) {
            sqlMap.put("columns", objectValue);
//            log.info(objectValue);

        } else {
            throw new ApiRuntimeException(HttpStatus.INTERNAL_SERVER_ERROR, 1, "查询类型无法获取字段");
        }
        String fromName = BeanToSqlKey.getObjectName(form.getClassName());
        if (StringUtils.isNotEmpty(fromName)) {
            sqlMap.put("tableName", fromName);
            System.out.println(fromName);
            sqlMap.put("aliasName", Constants.TABLE_ALIAS);
//            log.info(fromName);
        } else {
            throw new ApiRuntimeException(HttpStatus.INTERNAL_SERVER_ERROR, 1, "查询类型无法获取表名");
        }
        String joinObjectRelation = BeanToSqlKey.getJoinObjectRelation(form.getClassName());
        sqlMap.put("joinSelect", joinObjectRelation);
//        log.info(joinObjectRelation);
        System.out.println(joinObjectRelation);
        String whereSql = getWhereSql(form, powerForms);
        sqlMap.put("extendSql", whereSql);
//        log.info(whereSql);
        System.out.println(whereSql);
        lists = mapper.selectCustomByExample(sqlMap);
        return new PageInfo<>(lists);
    }

    //没有权限的查询入口，已经被废除
    @Override
    @Deprecated
    public PageInfo<Map<String, Object>> selectByPrimary(BaseSelectForm form) {
        return selectByPrimaryWithPower(form, null);
    }

    //查询入口
    @Override
    public PageInfo<Map<String, Object>> selectByPrimaryWithId(BaseSelectForm form, String id) {
        String ruleJson = redisService.get(RedisKeys.USER_RULES + id);
        List<SelectExampleForm> powerForms = Lists.newArrayList();
        if (StringUtils.isNotEmpty(ruleJson)) {
            List<String> ruleList = GsonUtil.toList(ruleJson, String.class);
            if (!CollectionUtils.isEmpty(ruleList)) {//需要增加数据权限验证
                ruleList.sort(Ordering.natural());
                List<String> grpIgnoreNext = Lists.newArrayList();//忽略下一级的集团ID
                List<String> comIgnoreNext = Lists.newArrayList();//忽略下一级的公司ID
                List<String> dptIgnoreNext = Lists.newArrayList();//忽略下一级的部门ID
                List<String> clzIgnoreNext = Lists.newArrayList();//忽略下一级的班级ID
                List<String> unitIgnoreNext = Lists.newArrayList();//忽略下一级的小组ID
                ruleList.stream().forEach(r -> {
                    //DT：HJ2018061016413656674z2-0000-0000-0000-0000
                    //UI：HJ20180614190808670p590-0000-0000-0000//忽略
                    List<String> ids = Splitter.on(Constants.TOKEN_SEPARATOR).trimResults().splitToList(r);
                    if (ids.size() < Constants.MIN_DT_RULE_LENGTH) {
                        return;
                    }
                    String groupId = ids.get(0);
                    String companyId = ids.get(1);
                    String departmentId = ids.get(2);
                    String classId = ids.get(3);
                    String unitId = ids.get(4);
                    if (grpIgnoreNext.contains(groupId)) {
                        return;
                    }//未忽略公司的集团
                    if (StringUtils.isNumeric(companyId) &&
                            0 == NumberUtils.parseNumber(companyId, Integer.class).intValue()) {
                        grpIgnoreNext.add(groupId);
                    } else {
                        if (comIgnoreNext.contains(companyId)) {
                            return;
                        }//未忽略部门的公司
                        if (StringUtils.isNumeric(departmentId) &&
                                0 == NumberUtils.parseNumber(departmentId, Integer.class)) {
                            comIgnoreNext.add(companyId);
                        } else {
                            if (dptIgnoreNext.contains(departmentId)) {
                                return;
                            }//未忽略班级的部门
                            if (StringUtils.isNumeric(classId) &&
                                    0 == NumberUtils.parseNumber(classId, Integer.class)) {
                                dptIgnoreNext.add(departmentId);
                            } else {
                                if (clzIgnoreNext.contains(classId)) {
                                    return;
                                }//未忽略小组的班级
                                if (StringUtils.isNumeric(unitId) &&
                                        0 == NumberUtils.parseNumber(unitId, Integer.class)) {
                                    clzIgnoreNext.add(classId);
                                } else {
                                    if (unitIgnoreNext.contains(unitId)) {
                                        return;
                                    } else {
                                        unitIgnoreNext.add(unitId);
                                    }
                                }
                            }
                        }
                    }
                });
                if (!CollectionUtils.isEmpty(grpIgnoreNext)) {
                    SelectExampleForm grpForm = new SelectExampleForm();
                    grpForm.setField("sysGroupId");
                    grpForm.setFieldValue(grpIgnoreNext);
                    grpForm.setLink(SelectLinkType.OR);
                    grpForm.setType(SelectKeyWordType.IN);
                    powerForms.add(grpForm);
                }
                if (!CollectionUtils.isEmpty(comIgnoreNext)) {
                    SelectExampleForm comForm = new SelectExampleForm();
                    comForm.setField("sysCompanyId");
                    comForm.setFieldValue(comIgnoreNext);
                    comForm.setLink(SelectLinkType.OR);
                    comForm.setType(SelectKeyWordType.IN);
                    powerForms.add(comForm);
                }
                if (!CollectionUtils.isEmpty(dptIgnoreNext)) {
                    SelectExampleForm dptForm = new SelectExampleForm();
                    dptForm.setField("sysDepartmentId");
                    dptForm.setFieldValue(dptIgnoreNext);
                    dptForm.setLink(SelectLinkType.OR);
                    dptForm.setType(SelectKeyWordType.IN);
                    powerForms.add(dptForm);
                }
                if (!CollectionUtils.isEmpty(clzIgnoreNext)) {
                    SelectExampleForm clzForm = new SelectExampleForm();
                    clzForm.setField("sysClassId");
                    clzForm.setFieldValue(clzIgnoreNext);
                    clzForm.setLink(SelectLinkType.OR);
                    clzForm.setType(SelectKeyWordType.IN);
                    powerForms.add(clzForm);
                }
                if (!CollectionUtils.isEmpty(unitIgnoreNext)) {
                    SelectExampleForm unitForm = new SelectExampleForm();
                    unitForm.setField("sysUnitId");
                    unitForm.setFieldValue(unitIgnoreNext);
                    unitForm.setLink(SelectLinkType.OR);
                    unitForm.setType(SelectKeyWordType.IN);
                    powerForms.add(unitForm);
                }
            }

        }
        return selectByPrimaryWithPower(form, powerForms);
    }
}
