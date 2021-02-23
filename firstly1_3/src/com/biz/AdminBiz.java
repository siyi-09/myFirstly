package com.biz;

import java.util.List;

import com.bean.Admin;
import com.bean.Operation;
import com.bean.User;

public interface AdminBiz {
	public int adminLogin(int aid,String apwd);
	/*public List<Operation> selAlloper();*/
	public List<Admin> selectAdminById(int id);
	public List<Admin> selectAdminAll();
	public List<User> selAlluser();
	public int delUser(int id);
	public void updateUser(User u);
	public List<User> selectUserById(int id);
	public int addAdmin(Admin a);
	public void updateAdmin(Admin a);
	public int delAdmin(int id);
	public List<User> selectUserByName(String uname);
}
