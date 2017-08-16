package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Opinion implements Serializable {
	private static final long serialVersionUID = -656041199222217324L;
	
	private Integer o_id;
	private Integer do_id;
	private Integer u_id;
	private Date o_time;
	private String o_opinion;
	private String o_reason;
	
	public Integer getO_id() {
		return o_id;
	}
	public void setO_id(Integer o_id) {
		this.o_id = o_id;
	}
	public Integer getDo_id() {
		return do_id;
	}
	public void setDo_id(Integer do_id) {
		this.do_id = do_id;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Date getO_time() {
		return o_time;
	}
	public void setO_time(Date o_time) {
		this.o_time = o_time;
	}
	public String getO_opinion() {
		return o_opinion;
	}
	public void setO_opinion(String o_opinion) {
		this.o_opinion = o_opinion;
	}
	public String getO_reason() {
		return o_reason;
	}
	public void setO_reason(String o_reason) {
		this.o_reason = o_reason;
	}
	
	@Override
	public String toString() {
		return "Opinion [o_id=" + o_id + ", do_id=" + do_id + ", u_id=" + u_id + ", o_time=" + o_time + ", o_opinion="
				+ o_opinion + ", o_reason=" + o_reason + "]";
	}
}
