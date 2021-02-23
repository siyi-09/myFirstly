package com.dao;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Admin;
import com.bean.Topic;
import com.bean.User;

public class UserDaoImp extends HibernateDaoSupport implements UserDao  {

	@Override
	public void registUser(User u) {
		// TODO Auto-generated method stub
		Serializable re=this.getHibernateTemplate().save(u);
		String hql="from User u1 where u1.uid=(select max(u1.uid) from u1)";
		List<User> list=this.getHibernateTemplate().find(hql);
		HttpSession session= ServletActionContext.getRequest().getSession();
		session.setAttribute("reId", list);
	}

	@Override
	public int loginUser(int uid,String upwd) {
		// TODO Auto-generated method stub
		String hql="from User as u where u.uid='"+uid+"' and u.upwd='"+upwd+"'";
		List<Admin> list=this.getHibernateTemplate().find(hql);
		//System.out.print(list);
		return list.size();
	}

	@Override
	public List<User> selectUserById(int id) {
		// TODO Auto-generated method stub
		String hql="from User as u1 where u1.uid="+id;
		List<User> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	
	@Override
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(u);
	}

	
	@Override
	public void delUser(int id) {
		// TODO Auto-generated method stub
		User u=(User)this.getHibernateTemplate().get(User.class, id);
		this.getHibernateTemplate().delete(u);
	}

	@Override
	public List<User> selectUserByName(String uname) {
		// TODO Auto-generated method stub
		String hql="from User as u1 where u1.uname like '%"+uname+"%'";
		List<User> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void updateUhead(String uhead,int uid) {
		// TODO Auto-generated method stub
		//String hql="update User u1 set u1.uhead ="+uhead+"where u1.uid="+uid;
		User user=this.getHibernateTemplate().get(User.class, uid);
		user.setUhead(uhead);
		this.getHibernateTemplate().update(user);
	}

	
	

	
}
