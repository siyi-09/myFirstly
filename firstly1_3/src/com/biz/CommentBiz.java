package com.biz;

import java.util.List;

import com.bean.Comment;

public interface CommentBiz {
	public void addComment(Comment c);
	public void delComment(int id);
	public List<Comment> SeCommentByTid(int tid);
}
