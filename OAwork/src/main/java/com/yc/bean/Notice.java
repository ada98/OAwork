package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Notice implements Serializable {
	private static final long serialVersionUID = -3042360926416388190L;
	
	private Integer n_id;
	private String n_title;
	private Integer u_id;
	private String n_content;
	private Date n_time;
	private String fid;
	private Integer n_weight;
	
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
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getN_content() {
		return n_content;
	}
	public void setN_content(String n_content) {
		this.n_content = n_content;
	}
	public Date getN_time() {
		return n_time;
	}
	public void setN_time(Date n_time) {
		this.n_time = n_time;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public Integer getN_weight() {
		return n_weight;
	}
	public void setN_weight(Integer n_weight) {
		this.n_weight = n_weight;
	}
	
	@Override
	public String toString() {
		return "Notice [n_id=" + n_id + ", n_title=" + n_title + ", u_id=" + u_id + ", n_content=" + n_content
				+ ", n_time=" + n_time + ", fid=" + fid + ", n_weight=" + n_weight + "]";
	}
}
