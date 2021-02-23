package com.dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.Section;

public class SectionDaoImp extends HibernateDaoSupport implements SectionDao {

	@Override
	public void addSection(Section s) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(s);
	}

	@Override
	public void delSection(int id) {
		// TODO Auto-generated method stub
		Section s=this.getHibernateTemplate().get(Section.class, id);
		this.getHibernateTemplate().delete(s);
	}

	@Override
	public List<Section> selectSectionById(int id) {
		// TODO Auto-generated method stub
		String hql="from Section s where s.sid="+id;
		List<Section> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List<Section> selAllSection() {
		// TODO Auto-generated method stub
		String hql="from Section";
		List<Section> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void upSection(Section s) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(s);
	}
	

}
