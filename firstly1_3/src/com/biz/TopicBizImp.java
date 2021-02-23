package com.biz;

import java.util.List;

import com.bean.Topic;
import com.dao.TopicDao;

public class TopicBizImp implements TopicBiz {
	private TopicDao td;
	
	public TopicDao getTd() {
		return td;
	}

	public void setTd(TopicDao td) {
		this.td = td;
	}

	@Override
	public List<Topic> selectTopicById(int id) {
		// TODO Auto-generated method stub
		return td.selectTopicById(id);
	}

	@Override
	public List<Topic> selectTopicAll() {
		// TODO Auto-generated method stub
		return td.selectTopicAll();
	}

	@Override
	public List<Topic> selectTopicByTop(String ttop) {
		// TODO Auto-generated method stub
		return td.selectTopicByTop(ttop);
	}

	@Override
	public List<Topic> selectTopicByUid(int id) {
		// TODO Auto-generated method stub
		return td.selectTopicByUid(id);
	}

	@Override
	public void addTopic(Topic t) {
		// TODO Auto-generated method stub
		td.addTopic(t);
	}

	@Override
	public void updateTopic(Topic t) {
		// TODO Auto-generated method stub
		td.updateTopic(t);
	}

	@Override
	public void delTopic(int id) {
		// TODO Auto-generated method stub
		td.delTopic(id);
	}

	@Override
	public void updateTbg(String tbg, int tid) {
		// TODO Auto-generated method stub
		td.updateTbg(tbg, tid);
	}

}
