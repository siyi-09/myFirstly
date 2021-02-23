package com.biz;

import java.util.List;

import com.bean.Section;

public interface SectionBiz {
	public void addSection(Section s);
	public void delSection(int id);
	public List<Section> selectSectionById(int id);
	public List<Section> selAllSection();
	public void upSection(Section s);
}
