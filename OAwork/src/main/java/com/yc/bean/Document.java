package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Document extends CommonBean implements Serializable {
	private static final long serialVersionUID = 38379706721094012L;
	private String do_id;
	private String do_title;
	private Integer do_send;
	private Date do_time;
	private String do_content;
	private Integer do_see;
	private Integer do_receive;
	private Integer do_status;
	private String fid;
	
	private String do_sendname;
	private String do_receivename;
	
	public String getDo_sendname() {
		return do_sendname;
	}
	public void setDo_sendname(String do_sendname) {
		this.do_sendname = do_sendname;
	}
	public String getDo_receivename() {
		return do_receivename;
	}
	public void setDo_receivename(String do_receivename) {
		this.do_receivename = do_receivename;
	}
	public String getDo_id() {
		return do_id;
	}
	public void setDo_id(String do_id) {
		this.do_id = do_id;
	}
	public String getDo_title() {
		return do_title;
	}
	public void setDo_title(String do_title) {
		this.do_title = do_title;
	}
	public Integer getDo_send() {
		return do_send;
	}
	public void setDo_send(Integer do_send) {
		this.do_send = do_send;
	}
	public Date getDo_time() {
		return do_time;
	}
	public void setDo_time(Date do_time) {
		this.do_time = do_time;
	}
	public String getDo_content() {
		return do_content;
	}
	public void setDo_content(String do_content) {
		this.do_content = do_content;
	}
	public Integer getDo_see() {
		return do_see;
	}
	public void setDo_see(Integer do_see) {
		this.do_see = do_see;
	}
	public Integer getDo_receive() {
		return do_receive;
	}
	public void setDo_receive(Integer do_receive) {
		this.do_receive = do_receive;
	}
	public Integer getDo_status() {
		return do_status;
	}
	public void setDo_status(Integer do_status) {
		this.do_status = do_status;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}

	@Override
	public String toString() {
		return "Document [do_id=" + do_id + ", do_title=" + do_title + ", do_send=" + do_send + ", do_time=" + do_time
				+ ", do_content=" + do_content + ", do_see=" + do_see + ", do_receive=" + do_receive + ", do_status="
				+ do_status + ", fid=" + fid + ", do_sendname=" + do_sendname + ", do_receivename=" + do_receivename
				+ "]";
	}
}
