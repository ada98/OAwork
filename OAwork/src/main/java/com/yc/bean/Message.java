package com.yc.bean;

import java.io.Serializable;

public class Message extends CommonBean implements Serializable{
	
	/*m_id int primary key auto_increment,
	m_title varchar(200) not null,
	m_send int not null,
	m_recevie int not null,
	m_content varchar(4000) not null,
	m_date date not null,
	m_file varchar(200),
	m_status int default 0,
	temp1 varchar(200),
	temp2 varchar(200)*/	
	
	
	private static final long serialVersionUID = 1L;
	private Integer m_id;
	private String m_title;
	private Integer m_send;
	private Integer m_recevie;
	private String m_content;
	private String m_date;
	private String m_file;
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
	public String getM_date() {
		return m_date;
	}
	public void setM_date(String m_date) {
		this.m_date = m_date;
	}
	public String getM_file() {
		return m_file;
	}
	public void setM_file(String m_file) {
		this.m_file = m_file;
	}
	public Integer getM_status() {
		return m_status;
	}
	public void setM_status(Integer m_status) {
		this.m_status = m_status;
	}
	
	

}
