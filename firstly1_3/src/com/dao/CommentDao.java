package com.dao;

import java.util.List;
import com.bean.Comment;

public interface CommentDao {
	public void addComment(Comment c);
	public void delComment(int id);
	public List<Comment> SeCommentByTid(int tid);
}
