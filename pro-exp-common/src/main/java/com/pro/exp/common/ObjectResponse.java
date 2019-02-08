package com.pro.exp.common;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;

@ApiModel(description="正确相应对象结果")
public class ObjectResponse<T> implements Serializable {
    @ApiModelProperty("数据")
    private T data;

    public String toString()
    {
        return "ObjectResponse(data=" + getData() + ")";
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;Object $data = getData();result = result * 59 + ($data == null ? 43 : $data.hashCode());return result;
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof ObjectResponse;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof ObjectResponse)) {
            return false;
        }
        ObjectResponse<?> other = (ObjectResponse)o;
        if (!other.canEqual(this)) {
            return false;
        }
        Object this$data = getData();Object other$data = other.getData();return this$data == null ? other$data == null : this$data.equals(other$data);
    }

    public void setData(T data)
    {
        this.data = data;
    }

    public T getData()
    {
        return (T)this.data;
    }

    public ObjectResponse(T data)
    {
        this.data = data;
    }
}
