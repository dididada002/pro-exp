package com.pro.exp.service.impl;

import com.google.common.collect.ImmutableMap;
import com.hejun.lib.common.HttpStatus;
import com.hejun.lib.common.exception.ApiRuntimeException;
import com.hejun.lib.util.StringUtils;
import com.hejun.lib.util.encoder.BCryptPasswordEncoder;
import com.hejun.lib.util.encoder.PasswordEncoder;
import com.pro.exp.common.Constants;
import com.pro.exp.dao.entity.SysDepartment;
import com.pro.exp.dao.entity.SysEmployee;
import com.pro.exp.dao.entity.SysUnit;
import com.pro.exp.dao.interfaces.*;
import com.pro.exp.model.biz.EmployeeInfo;
import com.pro.exp.model.request.LoginForm;
import com.pro.exp.model.response.LoginResponse;
import com.pro.exp.model.response.RoleResponse;
import com.pro.exp.service.LoginService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * Description: pro-exp
 * Created by JT on 2018/11/18 1:06
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    SysEmployeeVerificationMapper sysEmployeeVerificationMapper;

    @Autowired
    SysEmployeeMapper sysEmployeeMapper;

    @Autowired
    SysDepartmentMapper sysDepartmentMapper;

    @Autowired
    SysUnitMapper sysUnitMapper;

    @Autowired
    RelationSysEmployeeRoleMapper relationSysEmployeeRoleMapper;


    @Override
    public LoginResponse login(LoginForm form) {
        String password = form.getPassword();
        String username = form.getUsername();
        if (!StringUtils.isAnyEmpty(username,password)){
            //先验证用户名是否正确
            EmployeeInfo employeeInfo = sysEmployeeVerificationMapper.selectByParam(ImmutableMap.of("sysEmployeePhone",username,
                    "sysEmployeeEmail",username,"sysEmployeeWechat",username,"sysIsactive",Constants.IS_ACTIVE));
            //若返回值不为空，则证明用户输入的用户名是正确的，接下来验证密码是否匹配
            if (Optional.ofNullable(employeeInfo).isPresent()){
                //用户名正确
                PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
                if (passwordEncoder.matches(password,employeeInfo.getSysEmployeePassword())){
                    //用户名和密码都正确，接下来获取返回值
                    return getLoginResponse(employeeInfo);
                }
                throw new ApiRuntimeException(HttpStatus.UNAUTHORIZED,1,"密码不正确");
            }
            throw new ApiRuntimeException(HttpStatus.UNAUTHORIZED,1,"用户名不正确");
        }
        throw new ApiRuntimeException(HttpStatus.UNAUTHORIZED,1,"用户名或密码不正确");
    }

    /**
    *
    * 获取登录返回信息
    * */
    private LoginResponse getLoginResponse(EmployeeInfo employeeInfo) {
        LoginResponse loginResponse = new LoginResponse();
        //先根据id获取人员表现有的基础信息
        String sysEmployeeId = employeeInfo.getSysEmployeeId();
        SysEmployee sysEmployee = sysEmployeeMapper.selectByPrimaryKey(sysEmployeeId);
        BeanUtils.copyProperties(sysEmployee,loginResponse);
        String sysDepartmentId = sysEmployee.getSysDepartmentId();
        String sysUnitId = sysEmployee.getSysUnitId();
        String sysPostId = sysEmployee.getSysPostId();
        //获取部门信息
        SysDepartment sysDepartment = sysDepartmentMapper.selectByPrimaryKey(sysDepartmentId);
        loginResponse.setSysDepartmentName(sysDepartment.getSysDepartmentName());
        //获取项目组信息
        SysUnit sysUnit = sysUnitMapper.selectByPrimaryKey(sysUnitId);
        loginResponse.setSysUnitName(sysUnit.getSysUnitName());
        //todo 获取岗位信息,详细考虑岗位信息应该包含的所有信息

        //获取角色信息
//        List<RoleResponse> roleResponses = relationSysEmployeeRoleMapper.selectByParam();
        return loginResponse;
    }
}
