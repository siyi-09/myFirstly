package com.biz;

import java.util.List;

import com.bean.Admin;
import com.bean.Operation;
import com.bean.User;
import com.dao.AdminDao;

public class AdminBizImp implements AdminBiz{
	private AdminDao ad;

	public AdminDao getAd() {
		return ad;
	}

	public void setAd(AdminDao ad) {
		this.ad = ad;
	}

	@Override
	public int adminLogin(int aid, String apwd) {
		// TODO Auto-generated method stub
		return ad.adminLogin(aid, apwd);
	}


/*	@Override
	public List<Operation> selAlloper() {
		// TODO Auto-generated method stub
		return ad.selAlloper();
	}*/


	@Override
	public List<Admin> selectAdminById(int id) {
		// TODO Auto-generated method stub
		return ad.selectAdminById(id);
	}

	@Override
	public List<Admin> selectAdminAll() {
		// TODO Auto-generated method stub
		return ad.selectAdminAll();
	}

	@Override
	public List<User> selAlluser() {
		// TODO Auto-generated method stub
		return ad.selAlluser();
	}

	@Override
	public int delUser(int id) {
		// TODO Auto-generated method stub
		return ad.delUser(id);
	}

	@Override
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		ad.updateUser(u);
	}

	@Override
	public List<User> selectUserById(int id) {
		// TODO Auto-generated method stub
		return ad.selectUserById(id);
	}

	@Override
	public int addAdmin(Admin a) {
		// TODO Auto-generated method stub
		return ad.addAdmin(a);
	}

	@Override
	public void updateAdmin(Admin a) {
		// TODO Auto-generated method stub
		ad.updateAdmin(a);
	}

	@Override
	public int delAdmin(int id) {
		// TODO Auto-generated method stub
		return ad.delAdmin(id);
	}

	@Override
	public List<User> selectUserByName(String uname) {
		// TODO Auto-generated method stub
		return ad.selectUserByName(uname);
	}

}
