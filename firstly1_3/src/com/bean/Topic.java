package com.bean;

import java.io.Serializable;
import java.util.Date;

/**
 * Topic entity. @author MyEclipse Persistence Tools
 */

public class Topic implements Serializable {

	// Fields

	private Integer tid;
	private Integer tuid;
	private Integer tsid;
	private String ttop;
	private String tdesc;
	private Date ttime;
	private String tbg;
	private String uname;
	private String usex;
	private String udesc;
	private String uhead;

	// Constructors

	/** default constructor */
	public Topic() {
	}

	/** minimal constructor */
	public Topic(Integer tuid,Integer tsid, String ttop, Date ttime,String tbg) {
		this.tuid = tuid;
		this.tsid = tsid;
		this.ttop = ttop;
		this.ttime = ttime;
		this.tbg = tbg;
	}

	/** full constructor */
	public Topic(Integer tuid,Integer tsid,String ttop, String tdesc, Date ttime,String tbg,String uname,String usex,String udesc,String Uhead) {
		this.tuid = tuid;
		this.tsid = tsid;
		this.ttop = ttop;
		this.tdesc = tdesc;
		this.ttime = ttime;
		this.tbg = tbg;
		this.uname = uname;
		this.uname = usex;
		this.uname = udesc;
		this.uname = uhead;
	}

	// Property accessors

	public Integer getTid() {
		return this.tid;
	}

	public void setTid(Integer tid) {
		this.tid = tid;
	}

	public Integer getTuid() {
		return this.tuid;
	}

	public void setTuid(Integer tuid) {
		this.tuid = tuid;
	}

	public Integer getTsid() {
		return tsid;
	}

	public void setTsid(Integer tsid) {
		this.tsid = tsid;
	}

	public String getTtop() {
		return this.ttop;
	}

	public void setTtop(String ttop) {
		this.ttop = ttop;
	}

	public String getTdesc() {
		return this.tdesc;
	}

	public void setTdesc(String tdesc) {
		this.tdesc = tdesc;
	}

	public Date getTtime() {
		return this.ttime;
	}

	public void setTtime(Date ttime) {
		this.ttime = ttime;
	}

	public String getTbg() {
		return tbg;
	}

	public void setTbg(String tbg) {
		this.tbg = tbg;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUdesc() {
		return udesc;
	}

	public void setUdesc(String udesc) {
		this.udesc = udesc;
	}

	public String getUhead() {
		return uhead;
	}

	public void setUhead(String uhead) {
		this.uhead = uhead;
	}
	
}