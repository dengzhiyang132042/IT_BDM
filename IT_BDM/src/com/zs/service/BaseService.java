package com.zs.service;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.CompanySection4;
import com.zs.entity.CompanySection5;
import com.zs.entity.CompanySection6;
import com.zs.entity.CompanySection7;
import com.zs.entity.CompanySection8;
import com.zs.entity.FbdComputer;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.tools.Page;

public class BaseService implements IService{

	IBaseDaoOfSpring dao;
	
	public IBaseDaoOfSpring getDao() {
		return dao;
	}
	public void setDao(IBaseDaoOfSpring dao) {
		this.dao = dao;
	}
	public void delete(Object obj) {
		dao.delete(obj);
	}
	public List find(String hql,String[] ss) {
		return dao.find(hql,ss);
	}
	public List findOfFenYe(String hql, int start, int size) {
		return dao.findOfFenYe(hql, start, size);
	}
	public Object get(Class c, Serializable id) {
		return dao.get(c, id);
	}
	public void save(Object obj) {
		dao.save(obj);
	}
	public void update(Object obj) {
		dao.update(obj);
	}
	
	/*2016年7月30日14:08:24
	 *张顺 
	 *用来取结构关系
	 * */
	public List query(String hql1,String ss[],String hql2,Page page,IService ser) {
		String hql="from SectionQubu where qbId like ?"; 
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		List list=ser.find(hql1,ss);
		if (0==list.size()%page.getSize()) {
			page.setPageMax(list.size()/page.getSize());
		}else {
			page.setPageMax(list.size()/page.getSize()+1);
		}
//		System.out.println(list.size()+"(list)   "+page.getPageMax()+"(max)   "+page.getPageOn()+"(On)");
		List list2=ser.findOfFenYe(hql2, (page.getPageOn()-1)*page.getSize(), page.getSize());
		return list2;
	}
	public void timeLine(String state, String tableName, String id) {
		// TODO Auto-generated method stub
		
	}
	public void receiveStructure(HttpServletRequest req)
			throws UnsupportedEncodingException {
		//外部
		List<SectionQubu> qbsList;
		qbsList=this.find("from SectionQubu", new String[]{});
		for (int i = 0; i < qbsList.size(); i++) {
			List<SectionFenbu> fbsList=this.find("from SectionFenbu where qbId=?",new String[]{qbsList.get(i).getQbId()});
			for (int j = 0; j < fbsList.size(); j++) {
				List<SectionFenbodian> fbdsList=this.find("from SectionFenbodian where fbId=?", new String[]{fbsList.get(j).getFbId()});
				fbsList.get(j).setFbds(fbdsList);
			}
			qbsList.get(i).setFbs(fbsList);
		}
		req.setAttribute("structure", qbsList);
		// 内部
		List<CompanySection1> cs1List;
		cs1List=this.find("from CompanySection1", new String[]{});
		for (int i = 0; i < cs1List.size(); i++) {
			List<CompanySection2> cs2List=this.find("from CompanySection2 where SIdLast=?", new String[]{cs1List.get(i).getS1Id()});
			for (int j = 0; j < cs2List.size(); j++) {
				List<CompanySection3> cs3List=this.find("from CompanySection3 where SIdLast=?", new String[]{cs2List.get(j).getS2Id()});
				for (int k = 0; k < cs3List.size(); k++) {
					List<CompanySection4> cs4List=this.find("from CompanySection4 where SIdLast=?", new String[]{cs3List.get(k).getS3Id()});
					for (int l = 0; l < cs4List.size(); l++) {
						List<CompanySection5> cs5=this.find("from CompanySection5 where SIdLast=?", new String[]{cs4List.get(l).getS4Id()});
						for (int m = 0; m < cs5.size(); m++) {
							List<CompanySection6> cs6=this.find("from CompanySection6 where SIdLast=?", new String[]{cs5.get(m).getS5Id()});
							for (int n = 0; n < cs6.size(); n++) {
								List<CompanySection7> cs7=this.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
								for (int o = 0; o < cs7.size(); o++) {
									List<CompanySection8> cs8=this.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
									cs7.get(o).setNexts(cs8);
								}
								cs6.get(n).setNexts(cs7);
							}
							cs5.get(m).setNexts(cs6);
						}
						cs4List.get(l).setNexts(cs5);
					}
					cs3List.get(k).setNexts(cs4List);
				}
				cs2List.get(j).setNexts(cs3List);
			}
			cs1List.get(i).setNexts(cs2List);
		}
		req.setAttribute("structure2", cs1List);
	}

	
}
