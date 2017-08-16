package com.yc.bean;

import java.io.Serializable;
import java.util.Date;

public class Message implements Serializable {
	private static final long serialVersionUID = -7357085473042808947L;
	
	private Integer m_id;
	private String m_title;
	private Integer m_send;
	private Integer m_recevie;
	private String m_content;
	private Date m_date;
	private String fid;
	private Integer m_status;
	
	public Integer getM_id() {
		return m_id;
	}
	public void setM_id(Integer m_id) {
		this.m_id = m_id;
	}
	public String getM_title() {
		return m_title;
	}
	public void setM_title(String m_title) {
		this.m_title = m_title;
	}
	public Integer getM_send() {
		return m_send;
	}
	public void setM_send(Integer m_send) {
		this.m_send = m_send;
	}
	public Integer getM_recevie() {
		return m_recevie;
	}
	public void setM_recevie(Integer m_recevie) {
		this.m_recevie = m_recevie;
	}
	public String getM_content() {
		return m_content;
	}
	public void setM_content(String m_content) {
		this.m_content = m_content;
	}
	public Date getM_date() {
		return m_date;
	}
	public void setM_date(Date m_date) {
		this.m_date = m_date;
	}
	public String getFid() {
		return fid;
	}
	public void setFid(String fid) {
		this.fid = fid;
	}
	public Integer getM_status() {
		return m_status;
	}
	public void setM_status(Integer m_status) {
		this.m_status = m_status;
	}
	
	@Override
	public String toString() {
		return "Message [m_id=" + m_id + ", m_title=" + m_title + ", m_send=" + m_send + ", m_recevie=" + m_recevie
				+ ", m_content=" + m_content + ", m_date=" + m_date + ", fid=" + fid + ", m_status=" + m_status + "]";
	}
}
