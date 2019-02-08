package com.pro.exp.common;

public class Pagination {
    private int total;
    private int pageSize;
    private int pageNum;
    private int pages;

    public void setTotal(int total)
    {
        this.total = total;
    }

    public void setPageSize(int pageSize)
    {
        this.pageSize = pageSize;
    }

    public void setPageNum(int pageNum)
    {
        this.pageNum = pageNum;
    }

    public void setPages(int pages)
    {
        this.pages = pages;
    }

    public boolean equals(Object o)
    {
        if (o == this) {
            return true;
        }
        if (!(o instanceof Pagination)) {
            return false;
        }
        Pagination other = (Pagination)o;
        if (!other.canEqual(this)) {
            return false;
        }
        if (getTotal() != other.getTotal()) {
            return false;
        }
        if (getPageSize() != other.getPageSize()) {
            return false;
        }
        if (getPageNum() != other.getPageNum()) {
            return false;
        }
        return getPages() == other.getPages();
    }

    protected boolean canEqual(Object other)
    {
        return other instanceof Pagination;
    }

    public int hashCode()
    {
        int PRIME = 59;int result = 1;result = result * 59 + getTotal();result = result * 59 + getPageSize();result = result * 59 + getPageNum();result = result * 59 + getPages();return result;
    }

    public String toString()
    {
        return "Pagination(total=" + getTotal() + ", pageSize=" + getPageSize() + ", pageNum=" + getPageNum() + ", pages=" + getPages() + ")";
    }

    public int getTotal()
    {
        return this.total;
    }

    public int getPageSize()
    {
        return this.pageSize;
    }

    public int getPageNum()
    {
        return this.pageNum;
    }

    public int getPages()
    {
        return this.pages;
    }
}
