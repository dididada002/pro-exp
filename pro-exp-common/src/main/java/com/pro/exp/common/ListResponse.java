package com.pro.exp.common;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.Collection;

@ApiModel(description="正确响应列表结果")
public class ListResponse<T> implements Serializable {
    @ApiModelProperty("数据")
    private Collection<T> data;

    public String toString()
    {
        return "ListResponse(data=" + getData() + ")";
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;Object $data = getData();result = result * 59 + ($data == null ? 43 : $data.hashCode());return result;
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof ListResponse;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof ListResponse)) {
            return false;
        }
        ListResponse<?> other = (ListResponse)o;
        if (!other.canEqual(this)) {
            return false;
        }
        Object this$data = getData();Object other$data = other.getData();return this$data == null ? other$data == null : this$data.equals(other$data);
    }

    public void setData(Collection<T> data)
    {
        this.data = data;
    }

    public Collection<T> getData()
    {
        return this.data;
    }

    public ListResponse(Collection<T> data)
    {
        this.data = data;
    }
}
