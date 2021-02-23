package com.bean;

/**
 * Comment entity. @author MyEclipse Persistence Tools
 */

public class Comment implements java.io.Serializable {

	// Fields

	private Integer cid;
	private Integer ctid;
	private Integer cuid;
	private String content;

	// Constructors

	/** default constructor */
	public Comment() {
	}

	/** full constructor */
	public Comment(Integer ctid, Integer cuid, String content) {
		this.ctid = ctid;
		this.cuid = cuid;
		this.content = content;
	}

	// Property accessors

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getCtid() {
		return this.ctid;
	}

	public void setCtid(Integer ctid) {
		this.ctid = ctid;
	}

	public Integer getCuid() {
		return this.cuid;
	}

	public void setCuid(Integer cuid) {
		this.cuid = cuid;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}