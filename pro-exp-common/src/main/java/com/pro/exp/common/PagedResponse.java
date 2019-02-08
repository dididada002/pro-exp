package com.pro.exp.common;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

import java.io.Serializable;
import java.util.List;

@ApiModel(description="正确响应分页结果")
public class PagedResponse<T> implements Serializable {
    @ApiModelProperty("分页信息")
    private PageMeta meta;
    @ApiModelProperty("数据")
    private List<T> data;

    public void setMeta(PageMeta meta)
    {
        this.meta = meta;
    }

    public void setData(List<T> data)
    {
        this.data = data;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof PagedResponse)) {
            return false;
        }
        PagedResponse<?> other = (PagedResponse)o;
        if (!other.canEqual(this)) {
            return false;
        }
        Object this$meta = getMeta();Object other$meta = other.getMeta();
        if (this$meta == null ? other$meta != null : !this$meta.equals(other$meta)) {
            return false;
        }
        Object this$data = getData();Object other$data = other.getData();return this$data == null ? other$data == null : this$data.equals(other$data);
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof PagedResponse;
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;Object $meta = getMeta();result = result * 59 + ($meta == null ? 43 : $meta.hashCode());Object $data = getData();result = result * 59 + ($data == null ? 43 : $data.hashCode());return result;
    }

    public String toString()
    {
        return "PagedResponse(meta=" + getMeta() + ", data=" + getData() + ")";
    }

    public PageMeta getMeta()
    {
        return this.meta;
    }

    public List<T> getData()
    {
        return this.data;
    }
}
