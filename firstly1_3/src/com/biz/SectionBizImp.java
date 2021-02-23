package com.biz;

import java.util.List;

import com.bean.Section;
import com.dao.SectionDao;

public class SectionBizImp implements SectionBiz {
	private SectionDao sd;
	
	public SectionDao getSd() {
		return sd;
	}

	public void setSd(SectionDao sd) {
		this.sd = sd;
	}

	@Override
	public void addSection(Section s) {
		// TODO Auto-generated method stub
		sd.addSection(s);
	}

	@Override
	public void delSection(int id) {
		// TODO Auto-generated method stub
		sd.delSection(id);
	}

	@Override
	public List<Section> selectSectionById(int id) {
		// TODO Auto-generated method stub
		return sd.selectSectionById(id);
	}

	@Override
	public List<Section> selAllSection() {
		// TODO Auto-generated method stub
		return sd.selAllSection();
	}

	@Override
	public void upSection(Section s) {
		// TODO Auto-generated method stub
		sd.upSection(s);
	}


}
