package com.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import com.bean.Admin;
import com.bean.Operation;
import com.bean.User;
import com.biz.AdminBiz;
import com.opensymphony.xwork2.ActionSupport;

public class AdminAction extends ActionSupport{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6569394907244442507L;
	HttpSession session= ServletActionContext.getRequest().getSession();
	private AdminBiz ab;
	private Admin a;
	private User u;
	private List<Admin> list;
	private List<User> ulist;
	private List<Operation> olist;
	public AdminBiz getAb() {
		return ab;
	}
	public void setAb(AdminBiz ab) {
		this.ab = ab;
	}
	public Admin getA() {
		return a;
	}
	public void setA(Admin a) {
		this.a = a;
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
	
	public List<Admin> getList() {
		return list;
	}
	public void setList(List<Admin> list) {
		this.list = list;
	}
	public List<Operation> getOlist() {
		return olist;
	}
	public void setOlist(List<Operation> olist) {
		this.olist = olist;
	}
	public String adminLogin(){
		int re=ab.adminLogin(a.getAid(),a.getApwd());
		if(re!=0){
			/*olist=ab.selAlloper();*/
			list=ab.selectAdminById(a.getAid());
			session.setAttribute("listAdmin",list);
			session.setAttribute("current","1");
			session.setAttribute("loginsession","1");
			session.setAttribute("aid",a.getAid());
			session.setAttribute("amerror","");
			return SUCCESS;
			}
		else{
			 session.setAttribute("aiderror",a.getAid());
		     session.setAttribute("apwderror",a.getApwd());
			 session.setAttribute("amerror","用户名或密码错误");
			 session.setAttribute("loginsession","0");
			 return INPUT;
		}
	}
	
	public String invalidateAdmin(){
		session.invalidate();
		return SUCCESS;
		}
	
	public String selAlloper(){
		/*olist=ab.selAlloper();*/
		session.setAttribute("current","1");
		return SUCCESS;
	}
	
	public String selectAdminById(){
		list=ab.selectAdminById(a.getAid());
		session.setAttribute("Adminone",list);
		return SUCCESS;
	}
	
	public String selectAdminAll(){
		list=ab.selectAdminAll();
		session.setAttribute("current","5");
		return SUCCESS;
	}
	
	public String selectUserById(){
		ulist=ab.selectUserById(u.getUid());
		session.setAttribute("listUser",ulist);
		return SUCCESS;
	}
	
	public String selAlluser(){
		ulist=ab.selAlluser();
		session.setAttribute("current","2");
		return SUCCESS;
	}
	
	public String delUser(){
	ab.delUser(u.getUid());
	return this.selAlluser();
	}
	
	public String updateUser(){
		ab.updateUser(u);
		return this.selectUserById();
	}
	
	public String addAdmin(){
		ab.addAdmin(a);
		return this.selectAdminAll();
		}
	
	public String updateAdmin(){
		ab.updateAdmin(a);
		return this.selectAdminAll();
	}
	
	public String delAdmin(){
		ab.delAdmin(a.getAid());
		return this.selectAdminAll();
	}
	
	public String selectUserByName(){
		ulist=ab.selectUserByName(u.getUname());
		return SUCCESS;
	}
}
