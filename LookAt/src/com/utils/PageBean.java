package com.utils;

import java.util.List;

public class PageBean<T> {

    private List<T> lists;// 存放当前页面 数据的集合
    private Integer pageNo = 1;// 当前页码数
    private Integer pageSize = 3; // 每页显示的行数
    private Integer totalPage;// 总页数
    private Integer rows;// 总行数

    public List<T> getLists() {
        return lists;
    }

    public void setLists(List<T> lists) {
        this.lists = lists;
    }



    public Integer getPageNo() {
        return pageNo;
    }

    public void setPageNo(Integer pageNo) {
        if (null == pageNo) {
            this.pageNo = 1;
            // 当前页码数 一直点击下一页 变成了 5了  但是数据库查询出来的总页数 只有3页
            // 这种情况 当前页码数=总页数(3)
            //如果在进行上述计算的时候  查询总页数的代码有问题 导致总页数=0
            //这个时候当前页码数=0
        } else if (pageNo > this.totalPage&&this.totalPage>0) { // --》totalPage有值--》pageSize(rows) 要预防多条件查询 总记录数为0 导致当前页码数为0 limit第一个参数为负数
            this.pageNo = this.totalPage;
        } else if(pageNo<=0){
            this.pageNo = 1;
        }else{
            this.pageNo=pageNo;
        }
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getTotalPage() {
        return totalPage;
    }



    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
        //自动计算出总页数
        this.totalPage=rows%this.pageSize==0?rows/this.pageSize:rows/this.pageSize+1;
    }
}
