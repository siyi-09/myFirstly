package com.bean;

import java.io.Serializable;

public class Admin implements Serializable{
	private int aid;
	private String aprotect;
	private String aname;
	private String apwd;
	
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApwd() {
		return apwd;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String toString() {
		// TODO 自动生成的方法存根
		return getAname();
	}
	public String getAprotect() {
		return aprotect;
	}
	public void setAprotect(String aprotect) {
		this.aprotect = aprotect;
	}
}
