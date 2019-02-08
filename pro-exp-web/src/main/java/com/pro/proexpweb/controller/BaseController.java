package com.pro.proexpweb.controller;

import com.github.pagehelper.PageInfo;
import com.pro.exp.common.*;
import com.pro.exp.dao.entity.SysRole;
import com.pro.exp.model.biz.EmployeeInfo;
import com.pro.exp.service.utils.LoginRoleUtils;
import com.pro.exp.service.utils.StringUtils;
import com.pro.proexpweb.utils.RequestUtil;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.extern.log4j.Log4j2;
import org.springframework.util.Assert;
import org.springframework.util.ReflectionUtils;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/17 22:29
 */
@Log4j2
public class BaseController {
    /**
     * 转换集合对象到前端格式
     *
     * @param list
     * @return
     */
    protected <T> ListResponse<T> listResponse(Collection<T> list) {
        return new ListResponse(list);
    }

    /**
     * 转换数组对象到前端格式
     *
     * @param array
     * @return
     */
    protected <T> ListResponse<T> listResponse(T[] array) {
        return new ListResponse(Arrays.asList(array));
    }

    /**
     * 转换对象到前端格式
     *
     * @param data
     * @return
     */
    protected <T> ObjectResponse<T> response(T data) {
        return new ObjectResponse(data);
    }


    /**
     * 转换分页对象到前端格式
     *
     * @param pageInfo
     * @return
     */
    protected <T> PagedResponse<T> pageResponse(PageInfo<T> pageInfo) {
        PagedResponse pr = new PagedResponse();
        pr.setData(pageInfo.getList());
        Pagination pagination = new Pagination();
        pagination.setPageNum(pageInfo.getPageNum());
        pagination.setPages(pageInfo.getPages());
        pagination.setPageSize(pageInfo.getPageSize());
        pagination.setTotal((int) pageInfo.getTotal());
        pr.setMeta(new PageMeta(pagination));
        return pr;
    }

    /**
     * 检查表单对象不能为空
     *
     * @param form 表单对象，只处理Swagger注解的
     * @author xiepeikuan
     */
    protected void checkParamNotNull(final Object form) {
        Assert.notNull(form, "表单数据不能为空！");
        if (form.getClass().isAnnotationPresent(ApiModel.class)) {
            ReflectionUtils.doWithFields(form.getClass(), field -> {
                if (field.isAnnotationPresent(ApiModelProperty.class)) {
                    ApiModelProperty amp = field.getAnnotation(ApiModelProperty.class);
                    if (amp.required()) {
                        ReflectionUtils.makeAccessible(field);
                        Object obj = ReflectionUtils.getField(field, form);
                        String propName = amp.value();
                        if (StringUtils.isEmpty(propName)) {
                            propName = amp.name();
                        }
                        if (field.getType() == String.class) {
                            Assert.hasText((String) obj, propName + "不能为空！");
                        } else {
                            Assert.notNull(obj, propName + "不能为空！");
                        }
                    }
                }
            });
        }
    }

    /**
     * @param request
     * @return
     */
    protected String getEmployeeName(HttpServletRequest request) {
        return RequestUtil.getEmployeeInfo(request).getSysEmployeeName();
    }

    /**
     * @param request
     * @return
     */
    protected String getEmployeeId(HttpServletRequest request) {
        return RequestUtil.getEmployeeInfo(request).getSysEmployeeId();
    }

    /**
     * 保存运营日志
     *
     * @param action  动作，比如Login，Delete
     * @param type    类型：1运营日志 2学生日志
     * @param param   Request参数体,记得屏蔽敏感信息
     * @param request
     */
    /*
    protected void saveOperateLog(String action, int type, Object param, HttpServletRequest request) {
        saveOperateLogWithToken(action, type, request.getHeader(Constants.TOKEN_HEADER), param, request);
    }
    */

    /*
    protected void saveOperateLogWithToken(String action, int type, String token, Object param, HttpServletRequest request) {
        OperateLogModel log = new OperateLogModel();
        log.setAction(action);
        String id = EduTokenUtil.getId(token);
        EmployeeInfo info = RequestUtil.getEmployeeInfo(id);
        log.setEmployeeId(info.getSysEmployeeId());
        log.setEmployeeName(info.getSysEmployeeName());
        log.setIp(RequestUtil.getRemoteHost(request));
        log.setTimestamp(DateUtil.getCurrentTime());
        log.setMethod(request.getMethod());
        log.setType(type);
        log.setSessionId(info.getSysSessionId());//TODO:获取当前届
        log.setUri(request.getRequestURI());
        log.setParameters(GsonUtil.toJson(param));
        SaveOperateLogQueue.addOperateLog(log);
    }
    */
    /**
     * @param request
     * @return
     */
    protected EmployeeInfo getEmployeeInfo(HttpServletRequest request) {
        return RequestUtil.getEmployeeInfo(request);
    }

    protected static <T> T convertNoStringToNull(T form){
        if(form == null){
            return null;
        }
        try {
            Class<?> cls = form.getClass();
            List<Field> fieldList = new ArrayList<>() ;
            while (cls != null) {
                fieldList.addAll(Arrays.asList(cls .getDeclaredFields()));
                cls = cls.getSuperclass();
            }
            for(int i = 0, size = fieldList.size(); i < size; i++){
                Field field = fieldList.get(i);
                field.setAccessible(true);
                Object value = field.get(form);
                if("".equals(value)){
                    field.set(form, null);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return form;
    }

    /**
     * @param request
     * @return
     */
    protected String getLoginRoleId(HttpServletRequest request) {
        String employeeId = getEmployeeId(request);
        return LoginRoleUtils.getLoginRoleId(employeeId);
    }

    /**
     * @param request
     * @return
     */
    protected SysRole getLoginRole(HttpServletRequest request) {
        String employeeId = getEmployeeId(request);
        return LoginRoleUtils.getLoginRole(employeeId);
    }
}
