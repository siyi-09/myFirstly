package com.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.bean.Topic;
import com.bean.User;

public class TopicDaoImp extends HibernateDaoSupport implements TopicDao{

	@Override
	public List<Topic> selectTopicById(int id) {
		// TODO Auto-generated method stub
		String hql="select t.tid,t.tuid,t.tsid,t.ttop,t.tdesc,t.ttime,t.tbg,u.uname,u.usex,u.udesc,u.uhead " +
				"from Topic t,User u where t.tuid=u.uid and t.tid="+id;
		//join score on student.sno=score.sno
		List<Topic> list=new ArrayList<Topic>();
		Topic t=new Topic();
		List<Object[]> list1=this.getHibernateTemplate().find(hql);
		for (Object o[] : list1) {
			t.setTid((Integer)o[0]);
			t.setTuid((Integer)o[1]);
			t.setTsid((Integer)o[2]);
			t.setTtop((String)o[3]);	
			t.setTdesc((String)o[4]);
			t.setTtime((Date)o[5]);
			t.setTbg((String)o[6]);
			t.setUname((String)o[7]);
			t.setUsex((String)o[8]);
			t.setUdesc((String)o[9]);
			t.setUhead((String)o[10]);
        }
		list.add(t);
/*		for(int k=0;k<list.size();k++){
			Topic tr=(Topic)list.get(k);
			System.out.println(tr.getUname());
		}*/
		return list;
	}

	@Override
	public List<Topic> selectTopicAll() {
		// TODO Auto-generated method stub
		String hql="from Topic";
		List<Topic> list=this.getHibernateTemplate().find(hql);
		

		return list;
	}

	@Override
	public List<Topic> selectTopicByTop(String ttop) {
		// TODO Auto-generated method stub
		String hql="from Topic t where t.ttop like '%"+ttop+"%'";
		List<Topic> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public List<Topic> selectTopicByUid(int id) {
		// TODO Auto-generated method stub
		String hql="from Topic t where t.tuid="+id;
		List<Topic> list=this.getHibernateTemplate().find(hql);
		return list;
	}

	@Override
	public void addTopic(Topic t) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(t);
	}

	@Override
	public void updateTopic(Topic t) {
		// TODO Auto-generated method stub
		Topic t1=(Topic)this.getHibernateTemplate().get(Topic.class,t.getTid());
		t1.setTtop(t.getTtop());
		t1.setTdesc(t.getTdesc());
		this.getHibernateTemplate().update(t1);
	}

	@Override
	public void delTopic(int id) {
		// TODO Auto-generated method stub
		Topic t=(Topic)this.getHibernateTemplate().get(Topic.class, id);
		this.getHibernateTemplate().delete(t);
	}
	
	public void updateTbg(String tbg,int tid) {
		// TODO Auto-generated method stub
		//String hql="update Topic t set t.tbg ="+tbg+"where t.tid="+tid;
		Topic topic=this.getHibernateTemplate().get(Topic.class, tid);
		topic.setTbg(tbg);
		this.getHibernateTemplate().update(topic);
	}

}
