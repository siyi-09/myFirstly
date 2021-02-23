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
public class TopicAction extends ActionSupport {
	HttpSession session = ServletActionContext.getRequest().getSession();
	private TopicBiz tb;
	private Topic t;
	private UserBiz ub;
	private User u;
	private List<User> ulist;
	private List<Topic> tlist;

	public TopicBiz getTb() {
		return tb;
	}

	public void setTb(TopicBiz tb) {
		this.tb = tb;
	}

	public List<Topic> getTlist() {
		return tlist;
	}

	public void setTlist(List<Topic> tlist) {
		this.tlist = tlist;
	}

	public Topic getT() {
		return t;
	}

	public void setT(Topic t) {
		this.t = t;
	}

	public UserBiz getUb() {
		return ub;
	}

	public void setUb(UserBiz ub) {
		this.ub = ub;
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

	public String selectTopicById() {
		tlist=tb.selectTopicById(t.getTid());
		ulist = ub.selectUserById(t.getTuid());
		session.setAttribute("Userone", ulist);
		session.setAttribute("TopicOne", tlist);
		return SUCCESS;
	}

	public String selectTopicByUid() {
		tlist = tb.selectTopicByUid(t.getTuid());
		return SUCCESS;
	}

	public String selectTopicAll() {
		/*
		 * int id=0; if((Integer) session.getAttribute("uid")==null){
		 * session.setAttribute("current","4"); tlist=tb.selectTopicAll(); }
		 * else{
		 */
		tlist = tb.selectTopicAll();
		// ulist=ub.selectUserById(id);
		// session.setAttribute("Userone",ulist);
		// }
		return SUCCESS;
	}

	public String selectTopicByTop() {
		session.setAttribute("messSeach", t.getTtop());
		tlist = tb.selectTopicByTop(t.getTtop());
		System.out.print(tlist);
		return SUCCESS;
	}

	public String addTopic() {
		t.setTbg("");
		tb.addTopic(t);
		return this.selectTopicAll();
	}

	public String updateTopic() {
		if ((Integer) session.getAttribute("uid") == null) {
			return this.selectTopicAll();
		}
		tb.updateTopic(t);
		int id = (Integer) session.getAttribute("uid");
		ulist = ub.selectUserById(id);
		session.setAttribute("Userone", ulist);
		tlist = tb.selectTopicByUid(id);
		session.setAttribute("topicnum", tlist.size());
		session.setAttribute("listUser", ulist);
		return SUCCESS;
	}

	public String delTopic() {
		tb.delTopic(t.getTid());
		int id = (Integer) session.getAttribute("uid");
		ulist = ub.selectUserById(id);
		session.setAttribute("Userone", ulist);
		tlist = tb.selectTopicByUid(id);
		session.setAttribute("topicnum", tlist.size());
		session.setAttribute("listUser", ulist);
		return SUCCESS;
	}

	public String adelTopic() {
		tb.delTopic(t.getTid());
		return this.selectTopicAll();
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

	public String updateTbg() {
		int tid = t.getTid();
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
			String upName = uheadUpload.tbgUpload(filePath, tid);
			tb.updateTbg(upName, tid);
		} else {
			JOptionPane.showMessageDialog(null, "无效的背景图上传");
		}
		tlist=tb.selectTopicById(t.getTid());
		session.setAttribute("TopicOne", tlist);
		return SUCCESS;
	}
	
}
