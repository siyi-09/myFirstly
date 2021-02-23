package com.biz;

import java.util.List;

import com.bean.User;

public interface UserBiz {
	public void registUser(User u);
	public int loginUser(int uid,String upwd);
	public List<User> selectUserById(int id);
	public void updateUser(User u);
	public void delUser(int id);
	public List<User> selectUserByName(String uname);
	public void updateUhead(String uhead,int uid);
}
