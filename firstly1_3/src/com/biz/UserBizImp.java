package com.biz;

import java.util.List;

import com.bean.User;
import com.dao.UserDao;
import com.dao.UserDaoImp;

public class UserBizImp implements UserBiz {
	private UserDao ud;

	public UserDao getUd() {
		return ud;
	}

	public void setUd(UserDao ud) {
		this.ud = ud;
	}

	@Override
	public void registUser(User u) {
		// TODO Auto-generated method stub
		ud.registUser(u);
	}

	@Override
	public int loginUser(int uid,String upwd) {
		// TODO Auto-generated method stub
		return ud.loginUser(uid, upwd);
	}

	@Override
	public List<User> selectUserById(int id) {
		// TODO Auto-generated method stub
		return ud.selectUserById(id);
	}

	@Override
	public void updateUser(User u) {
		// TODO Auto-generated method stub
		ud.updateUser(u);
	}

	@Override
	public void delUser(int id) {
		// TODO Auto-generated method stub
		ud.delUser(id);
	}

	@Override
	public List<User> selectUserByName(String uname) {
		// TODO Auto-generated method stub
		return ud.selectUserByName(uname);
	}

	@Override
	public void updateUhead(String uhead, int uid) {
		// TODO Auto-generated method stub
		ud.updateUhead(uhead, uid);
	}

}
