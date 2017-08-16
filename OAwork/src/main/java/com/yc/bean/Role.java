package com.yc.bean;

import java.io.Serializable;

public class Role implements Serializable {
	private static final long serialVersionUID = -3716731964490431987L;
	
	private Integer r_id;
	private String r_name;
	private String r_before;
	private String r_next;
	
	public Integer getR_id() {
		return r_id;
	}
	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_before() {
		return r_before;
	}
	public void setR_before(String r_before) {
		this.r_before = r_before;
	}
	public String getR_next() {
		return r_next;
	}
	public void setR_next(String r_next) {
		this.r_next = r_next;
	}
	
	@Override
	public String toString() {
		return "Role [r_id=" + r_id + ", r_name=" + r_name + ", r_before=" + r_before + ", r_next=" + r_next + "]";
	}
}
