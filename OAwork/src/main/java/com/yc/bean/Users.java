package com.yc.bean;

import java.io.Serializable;

public class Users implements Serializable {
	private static final long serialVersionUID = 1580042080015532771L;
	
	private Integer u_id;
	private String u_name;
	private String u_pwd;
	private String u_sex;
	private String u_tel;
	private String u_email;
	private String u_dress;			
	private String u_card;	
	private double s_alary;		
	private String u_photo;		
	private Integer u_status;   		
	private Integer r_id;
	private Integer d_id;
	public Integer getU_id() {
		return u_id;
	}
	public void setU_id(Integer u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public String getU_tel() {
		return u_tel;
	}
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_dress() {
		return u_dress;
	}
	public void setU_dress(String u_dress) {
		this.u_dress = u_dress;
	}
	public String getU_card() {
		return u_card;
	}
	public void setU_card(String u_card) {
		this.u_card = u_card;
	}
	public double getS_alary() {
		return s_alary;
	}
	public void setS_alary(double s_alary) {
		this.s_alary = s_alary;
	}
	public String getU_photo() {
		return u_photo;
	}
	public void setU_photo(String u_photo) {
		this.u_photo = u_photo;
	}
	public Integer getU_status() {
		return u_status;
	}
	public void setU_status(Integer u_status) {
		this.u_status = u_status;
	}
	public Integer getR_id() {
		return r_id;
	}
	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
	public Integer getD_id() {
		return d_id;
	}
	public void setD_id(Integer d_id) {
		this.d_id = d_id;
	}
	@Override
	public String toString() {
		return "Users [u_id=" + u_id + ", u_name=" + u_name + ", u_pwd=" + u_pwd + ", u_sex=" + u_sex + ", u_tel="
				+ u_tel + ", u_email=" + u_email + ", u_dress=" + u_dress + ", u_card=" + u_card + ", s_alary="
				+ s_alary + ", u_photo=" + u_photo + ", u_status=" + u_status + ", r_id=" + r_id + ", d_id=" + d_id
				+ "]";
	}
}
