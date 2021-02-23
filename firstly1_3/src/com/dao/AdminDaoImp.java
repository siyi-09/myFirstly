package com.dao;

import java.io.Serializable;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.bean.Admin;
import com.bean.Operation;
import com.bean.User;

public class AdminDaoImp extends HibernateDaoSupport implements AdminDao {
	//HttpSession session= ServletActionContext.getRequest().getSession();
	
	@SuppressWarnings("unchecked")
	@Override
	public int adminLogin(int aid, String apwd) {
		// TODO Auto-generated method stub
	    String hql="from Admin as a where a.aid='"+aid+"' and a.apwd='"+apwd+"'";
		//String hql="from Admin where aname=? and apass=?";
		List<Admin> list=this.getHibernateTemplate().find(hql);
		return list.size();
	}
	
/*	@SuppressWarnings("unchecked")
	@Override
 	public List<Operation> selAlloper() {
		// TODO Auto-generated method stub
		String hql="from Operation o order by o.oid desc limit 8";
		System.out.print(hql);
		List<Operation> list=this.getHibernateTemplate().find(hql);
		return list;
	}*/
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> selectAdminById(int id) {
		// TODO Auto-generated method stub
		String hql="from Admin as a1 where a1.aid="+id;
		List<Admin> list=this.getHibernateTemplate().find(hql);
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Admin> selectAdminAll() {
		// TODO Auto-generated method stub
		String hql="from Admin";
		List<Admin> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List<User> selAlluser() {
		// TODO Auto-generated method stub
		String hql="from User";
		List<User> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public int delUser(int id) {
		// TODO Auto-generated method stub
		User u=(User)this.getHibernateTemplate().get(User.class, id);
		this.getHibernateTemplate().delete(u);
		return 1;
	}

	@Override
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(u);
	}

	@Override
	public List<User> selectUserById(int id) {
		// TODO Auto-generated method stub
		String hql="from User as u1 where u1.uid="+id;
		List<User> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public int addAdmin(Admin a) {
		// TODO Auto-generated method stub
		Serializable re=this.getHibernateTemplate().save(a);
		Integer i=(Integer)re;
		return i;
	}
	
	@Override
	public void updateAdmin(Admin a) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(a);
	}
	
	@Override
	public int delAdmin(int id) {
		// TODO Auto-generated method stub
		Admin a=(Admin)this.getHibernateTemplate().get(Admin.class, id);
		this.getHibernateTemplate().delete(a);
		return 1;
	}
	
	@Override
	public List<User> selectUserByName(String uname) {
		// TODO Auto-generated method stub
		String hql="from User as u1 where u1.uname like '%"+uname+"%'";
		List<User> list=this.getHibernateTemplate().find(hql);
		return list;
	}
	
	
}
