package com.bean;

import java.io.Serializable;

public class Operation implements Serializable{
	private int oid;
	private String oaid;
	private String oaname;
	private String oper;
	private String oreason;
	private String otime;

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getOaid() {
		return oaid;
	}
	public void setOaid(String oaid) {
		this.oaid = oaid;
	}
	public String getOaname() {
		return oaname;
	}
	public void setOaname(String oaname) {
		this.oaname = oaname;
	}
	public String getOper() {
		return oper;
	}
	public void setOper(String oper) {
		this.oper = oper;
	}
	public String getOreason() {
		return oreason;
	}
	public void setOreason(String oreason) {
		this.oreason = oreason;
	}
	public String getOtime() {
		return otime;
	}
	public void setOtime(String otime) {
		this.otime = otime;
	}

}
