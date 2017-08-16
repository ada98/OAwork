package com.yc.bean;

import java.io.Serializable;

public class CommonBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	
	private Integer page;
	private Integer rows;
	private String order;	//select * from xxx order by 列名 desc/asc;
	private String sort;
	
	private Integer start;

	private Integer pages=1;
	private Integer pagesize=5;
	private String orderby;	//select * from xxx order by 列名 desc/asc;
	private String orderway;
	
	
	
	public Integer getPages() {
		return pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
		this.start = (this.pages-1)*this.pagesize;
	}

	public Integer getPagesize() {
		return pagesize;
	}

	public void setPagesize(Integer pagesize) {
		this.pagesize = pagesize;
	}

	public String getOrderby() {
		return orderby;
	}

	public void setOrderby(String orderby) {
		this.orderby = orderby;
	}

	public String getOrderway() {
		return orderway;
	}

	public void setOrderway(String orderway) {
		this.orderway = orderway;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
		this.start = (this.page-1)*this.rows;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	

	
	public Integer getStart() {
		return start;
	}
	
	
	
	
	
	

}
