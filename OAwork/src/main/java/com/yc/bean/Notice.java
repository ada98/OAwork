package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Notice extends CommonBean implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Integer n_id;
	private String n_title;
	private String u_name;
	private String d_name;
	private String n_content ;
	private String n_time;
	private String n_file;
	private Integer n_weight;
	
	private String date_from;
	private String date_to;
	
	//easyui ids批量删除
	private String ids;
	
	
	
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public String getDate_from() {
		return date_from;
	}
	public void setDate_from(String date_from) {
		this.date_from = date_from;
	}
	public String getDate_to() {
		return date_to;
	}
	public void setDate_to(String date_to) {
		this.date_to = date_to;
	}
	public Integer getN_id() {
		return n_id;
	}
	public void setN_id(Integer n_id) {
		this.n_id = n_id;
	}
	public String getN_title() {
		return n_title;
	}
	public void setN_title(String n_title) {
		this.n_title = n_title;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	
	
	public String getN_time() {
		return n_time;
	}
	public void setN_time(String n_time) {
		this.n_time = n_time;
	}
	public String getN_file() {
		return n_file;
	}
	public void setN_file(String n_file) {
		this.n_file = n_file;
	}
	public Integer getN_weight() {
		return n_weight;
	}
	public void setN_weight(Integer n_weight) {
		this.n_weight = n_weight;
	}
	@Override
	public String toString() {
		return "Notice [n_id=" + n_id + ", n_title=" + n_title + ", u_name=" + u_name + ", d_name=" + d_name
				+ ", n_content=" + n_content + ", n_time=" + n_time + ", n_file=" + n_file + ", n_weight=" + n_weight
				+ "]";
	}
	
	
	
	
}
