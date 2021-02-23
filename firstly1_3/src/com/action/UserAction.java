package com.action;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.filechooser.FileSystemView;

import org.apache.struts2.ServletActionContext;

import com.bean.Topic;
import com.bean.User;
import com.biz.TopicBiz;
import com.biz.UserBiz;
import com.opensymphony.xwork2.ActionSupport;
import com.util.UheadUpload;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport {
	HttpSession session = ServletActionContext.getRequest().getSession();
	private UserBiz ub;
	private TopicBiz tb;
	private User u;
	private List<User> ulist;
	private List<Topic> tlist;

	public UserBiz getUb() {
		return ub;
	}

	public void setUb(UserBiz ub) {
		this.ub = ub;
	}

	public List<Topic> getTlist() {
		return tlist;
	}

	public void setTlist(List<Topic> tlist) {
		this.tlist = tlist;
	}

	public TopicBiz getTb() {
		return tb;
	}

	public void setTb(TopicBiz tb) {
		this.tb = tb;
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

	public String registUser() {
		u.setUhead("rxw.png");
		ub.registUser(u);
		return SUCCESS;

	}

	public String loginUser() {
			if (ub.loginUser(u.getUid(), u.getUpwd()) != 0) {
				ulist = ub.selectUserById(u.getUid());
				session.setAttribute("Userone", ulist);
				session.setAttribute("uloginsession", "1");
				session.setAttribute("uid", u.getUid());
				session.setAttribute("messageerror", "");
				return SUCCESS;
			} else {
				session.setAttribute("uiderror", u.getUid());
				session.setAttribute("upwderror", u.getUpwd());
				session.setAttribute("messageerror", "用户名或密码错误");
				session.setAttribute("uloginsession", "0");
				return INPUT;
			}
	}

	public String invalidateUser() {
		session.invalidate();
		return SUCCESS;
	}

	public String selectUserById() {
		ulist = ub.selectUserById(u.getUid());
		session.setAttribute("Userone", ulist);
		tlist = tb.selectTopicByUid(u.getUid());
		session.setAttribute("topicnum", tlist.size());
		session.setAttribute("listUser", ulist);
		return SUCCESS;
	}

	public String updateUser() {
		// TODO Auto-generated method stub
		ub.updateUser(u);
		return this.selectUserById();
	}

	public String selectUserByName() {
		// TODO Auto-generated method stub
		ulist = ub.selectUserByName(u.getUname());
		return SUCCESS;
	}

	public boolean accept(File file) {
		// 文件夹必须是可选（打开）的
		if (file.isDirectory())
			return true;
		// 以.jpg结尾，设置为可选
		else if (file.getName().endsWith(".jpg")
				|| file.getName().endsWith(".jpeg")
				|| file.getName().endsWith(".png"))
			return true;
		// 其它的文件类型都设置为不可选
		return false;
	}

	public String updateUhead() {
		int uid = (Integer) session.getAttribute("uid");
		// 创建一个JFrame组件为parent组件
		JFrame frame = new JFrame();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setAlwaysOnTop(true);
		// 创建一个默认打开用户文件夹的文件选择器
		JFileChooser chooser = new JFileChooser();
		FileSystemView fsv = FileSystemView.getFileSystemView(); // 桌面路径
		chooser.setCurrentDirectory(fsv.getHomeDirectory());
		int flag = chooser.showOpenDialog(frame);
		if (flag == JFileChooser.APPROVE_OPTION
				&& accept(chooser.getSelectedFile())) {
			//取所选文件的绝对路径
			String filePath = chooser.getSelectedFile().getAbsolutePath();
			UheadUpload uheadUpload = new UheadUpload();
			String upName = uheadUpload.headUpload(filePath, uid);
			ub.updateUhead(upName, uid);
		} else {
			JOptionPane.showMessageDialog(null, "无效的头像上传");
		}
		ulist = ub.selectUserById(uid);
		session.setAttribute("Userone", ulist);
		tlist = tb.selectTopicByUid(uid);
		session.setAttribute("topicnum", tlist.size());
		session.setAttribute("listUser", ulist);
		return SUCCESS;
	}

}
