package com.biz;

import java.util.List;

import com.bean.Topic;

public interface TopicBiz {
	public void addTopic(Topic t);
	public void updateTopic(Topic t);
	public void delTopic(int id);
	public List<Topic> selectTopicById(int id);
	public List<Topic> selectTopicAll();
	public List<Topic> selectTopicByTop(String ttop);
	public List<Topic> selectTopicByUid(int id);
	public void updateTbg(String tbg,int tid);
}
