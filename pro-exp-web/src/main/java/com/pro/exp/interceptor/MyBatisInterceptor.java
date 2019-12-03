package com.pro.exp.interceptor;

import org.apache.ibatis.cache.CacheKey;
import org.apache.ibatis.executor.Executor;
import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.SqlCommandType;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.session.ResultHandler;
import org.apache.ibatis.session.RowBounds;

import java.util.Properties;

@Intercepts({
        @Signature(type = Executor.class, method = "update", args = {MappedStatement.class, Object.class}),
        @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class}),
        @Signature(type = Executor.class, method = "query", args = {MappedStatement.class, Object.class, RowBounds.class, ResultHandler.class, CacheKey.class, BoundSql.class})
})
public class MyBatisInterceptor implements Interceptor {

    private Properties properties;

    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        MappedStatement mappedStatement = (MappedStatement) invocation
                .getArgs()[0];
        String sqlId = mappedStatement.getId();
        SqlCommandType sqlCommandType = mappedStatement.getSqlCommandType();
        String namespace = sqlId.substring(0, sqlId.indexOf('.'));
        Executor exe = (Executor) invocation.getTarget();
        String methodName = invocation.getMethod().getName();
        /**
         * 我们的删除比较特殊，需要特殊处理，因为我们使用的逻辑删除，需要判断那个字段的值。
         * 这里只做数据权限，不做操作权限，所以可以忽略这个问题。
         * 不过删除的假如使用的“主键+标记字段”修改，那么需要加载对象，对比权限。
         */
        if (methodName.equals("update")) {//增删改
            if (SqlCommandType.INSERT.equals(sqlCommandType)) {//添加

            } else if (SqlCommandType.UPDATE.equals(sqlCommandType)) {//修改

            } else if (SqlCommandType.DELETE.equals(sqlCommandType)) {//删除

            }
        } else {//查询

        }
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target, this);
    }

    @Override
    public void setProperties(Properties properties) {
        this.properties = properties;
    }
}
