package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Comment;

public class CommentDaoImp extends HibernateDaoSupport implements CommentDao {

	@Override
	public void addComment(Comment c) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(c);
	}

	@Override
	public void delComment(int id) {
		// TODO Auto-generated method stub
		Comment c=(Comment)this.getHibernateTemplate().get(Comment.class, id);
		this.getHibernateTemplate().delete(c);
	}

	@Override
	public List<Comment> SeCommentByTid(int tid) {
		// TODO Auto-generated method stub
		String hql="from Comment c where c.ctid="+tid;
		List<Comment> list=this.getHibernateTemplate().find(hql);
		return list;
	}

}
