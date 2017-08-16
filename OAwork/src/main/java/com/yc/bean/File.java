package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class File implements Serializable {
	private static final long serialVersionUID = 235704830160342491L;
	
	private String fid;
	private String fname;
	private String fpath;
	private String fsize;
	private Integer u_id;
	private Date ftime;
	private Integer fstatus;
	private Integer f_read;
	private Integer f_updown;
	
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFpath() {
		return fpath;
	}
	public void setFpath(String fpath) {
		this.fpath = fpath;
	}
	public String getFsize() {
		return fsize;
	}
	public void setFsize(String fsize) {
		this.fsize = fsize;
	}
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public Date getFtime() {
		return ftime;
	}
	public void setFtime(Date ftime) {
		this.ftime = ftime;
	}
	public Integer getFstatus() {
		return fstatus;
	}
	public void setFstatus(Integer fstatus) {
		this.fstatus = fstatus;
	}
	public Integer getF_read() {
		return f_read;
	}
	public void setF_read(Integer f_read) {
		this.f_read = f_read;
	}
	public Integer getF_updown() {
		return f_updown;
	}
	public void setF_updown(Integer f_updown) {
		this.f_updown = f_updown;
	}
	
	@Override
	public String toString() {
		return "File [fid=" + fid + ", fname=" + fname + ", fpath=" + fpath + ", fsize=" + fsize + ", u_id=" + u_id
				+ ", ftime=" + ftime + ", fstatus=" + fstatus + ", f_read=" + f_read + ", f_updown=" + f_updown + "]";
	}
}
