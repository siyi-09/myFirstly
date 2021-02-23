package com.action;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.bean.Comment;
import com.bean.Topic;
import com.bean.User;
import com.biz.CommentBiz;
import com.biz.TopicBiz;
import com.biz.UserBiz;
import com.opensymphony.xwork2.ActionSupport;

public class CommentAction extends ActionSupport {
	HttpSession session= ServletActionContext.getRequest().getSession();
	private CommentBiz cb;
	private UserBiz ub;
	private TopicBiz tb;
	private Comment c;
	private Topic t;
	private User u;
	private List<User> ulist;
	private List<Topic> tlist;
	private List<Comment> clist;
	public CommentBiz getCb() {
		return cb;
	}
	public void setCb(CommentBiz cb) {
		this.cb = cb;
	}
	public UserBiz getUb() {
		return ub;
	}
	public void setUb(UserBiz ub) {
		this.ub = ub;
	}
	public TopicBiz getTb() {
		return tb;
	}
	public void setTb(TopicBiz tb) {
		this.tb = tb;
	}
	public Comment getC() {
		return c;
	}
	public void setC(Comment c) {
		this.c = c;
	}
	public Topic getT() {
		return t;
	}
	public void setT(Topic t) {
		this.t = t;
	}
	public List<Comment> getClist() {
		return clist;
	}
	public void setClist(List<Comment> clist) {
		this.clist = clist;
	}
	
	public User getU() {
		return u;
	}
	public void setU(User u) {
		this.u = u;
	}
	public List<User> getUlist() {
		return ulist;
	}
	public void setUlist(List<User> ulist) {
		this.ulist = ulist;
	}
	public List<Topic> getTlist() {
		return tlist;
	}
	public void setTlist(List<Topic> tlist) {
		this.tlist = tlist;
	}
	public String addComment(){
		if(c.getContent().trim().equals("")){
			tlist=tb.selectTopicAll();
			return INPUT;
		}
		cb.addComment(c);
		return this.SeCommentByTid();
	}
	public String SeCommentByTid(){
		clist=cb.SeCommentByTid(c.getCtid());
		tlist=tb.selectTopicById(c.getCtid());
		if(session.getAttribute("uid")==null){
			}else{
				int id=(Integer) session.getAttribute("uid");
				ulist=ub.selectUserById(id);
				session.setAttribute("Userone",ulist);
			}
		session.setAttribute("TopicOne",tlist);
		return SUCCESS;
	}
	public String delComment(){
		cb.delComment(c.getCid());
		return this.SeCommentByTid();
	}

}
