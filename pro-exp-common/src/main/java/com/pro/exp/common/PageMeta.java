package com.pro.exp.common;

public class PageMeta {
    private Pagination pagination;

    public String toString()
    {
        return "PageMeta(pagination=" + getPagination() + ")";
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;Object $pagination = getPagination();result = result * 59 + ($pagination == null ? 43 : $pagination.hashCode());return result;
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof PageMeta;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof PageMeta)) {
            return false;
        }
        PageMeta other = (PageMeta)o;
        if (!other.canEqual(this)) {
            return false;
        }
        Object this$pagination = getPagination();Object other$pagination = other.getPagination();return this$pagination == null ? other$pagination == null : this$pagination.equals(other$pagination);
    }

    public void setPagination(Pagination pagination)
    {
        this.pagination = pagination;
    }

    public Pagination getPagination()
    {
        return this.pagination;
    }

    public PageMeta(Pagination pagination)
    {
        this.pagination = pagination;
    }
}
