package com.biz;

import java.util.List;

import com.bean.Comment;
import com.dao.CommentDao;

public class CommentBizImp implements CommentBiz {
	private CommentDao cd;

	public CommentDao getCd() {
		return cd;
	}

	public void setCd(CommentDao cd) {
		this.cd = cd;
	}

	@Override
	public void addComment(Comment c) {
		// TODO Auto-generated method stub
		cd.addComment(c);
	}

	@Override
	public void delComment(int id) {
		// TODO Auto-generated method stub
		cd.delComment(id);
	}

	@Override
	public List<Comment> SeCommentByTid(int tid) {
		// TODO Auto-generated method stub
		return cd.SeCommentByTid(tid);
	}
	
	
}
