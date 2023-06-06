package com.liying.pojo;

import java.util.List;

public class page {
    public static final Integer PAGE_SIZE=4;
    //当前页码
    private Integer currentPage;
    //总页码
    private Integer totalPage;
    //当前页码 显示数量
    private Integer  sizePage=PAGE_SIZE;
    //总的记录数
    private Integer totalPageCount;
    //当前页数据
    private List<UserShow> item;

    @Override
    public String toString() {
        return "page{" +
                "currentPage=" + currentPage +
                ", totalPage=" + totalPage +
                ", sizePage=" + sizePage +
                ", totalPageCount=" + totalPageCount +
                ", item=" + item +
                '}';
    }

    public static Integer getPageSize() {
        return PAGE_SIZE;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getSizePage() {
        return sizePage;
    }

    public void setSizePage(Integer sizePage) {
        this.sizePage = sizePage;
    }

    public Integer getTotalPageCount() {
        return totalPageCount;
    }

    public void setTotalPageCount(Integer totalPageCount) {
        this.totalPageCount = totalPageCount;
    }

    public List<UserShow> getItem() {
        return item;
    }

    public void setItem(List<UserShow> item) {
        this.item = item;
    }



}
