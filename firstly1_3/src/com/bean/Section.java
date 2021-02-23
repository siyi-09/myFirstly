package com.bean;

/**
 * Section entity. @author MyEclipse Persistence Tools
 */

public class Section implements java.io.Serializable {

	// Fields

	private Integer sid;
	private String stop;
	private Integer suid;
	private String sdesc;
	private String simage;

	// Constructors

	/** default constructor */
	public Section() {
	}

	/** full constructor */
	public Section(String stop, Integer suid, String sdesc, String simage) {
		this.stop = stop;
		this.suid = suid;
		this.sdesc = sdesc;
		this.simage = simage;
	}

	// Property accessors

	public Integer getSid() {
		return this.sid;
	}

	public void setSid(Integer sid) {
		this.sid = sid;
	}

	public String getStop() {
		return this.stop;
	}

	public void setStop(String stop) {
		this.stop = stop;
	}

	public Integer getSuid() {
		return this.suid;
	}

	public void setSuid(Integer suid) {
		this.suid = suid;
	}

	public String getSdesc() {
		return this.sdesc;
	}

	public void setSdesc(String sdesc) {
		this.sdesc = sdesc;
	}

	public String getSimage() {
		return this.simage;
	}

	public void setSimage(String simage) {
		this.simage = simage;
	}

}