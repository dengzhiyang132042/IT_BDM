package com.zs.action;

import java.util.List;

import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;

public class IndexAction extends MyBaseAction{
	List<SectionQubu> qbs;
	List<CompanySection1> cs1;
	
	
	IService ser;
	
	
	public List<CompanySection1> getCs1() {
		return cs1;
	}
	public void setCs1(List<CompanySection1> cs1) {
		this.cs1 = cs1;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public List<SectionQubu> getQbs() {
		return qbs;
	}
	public void setQbs(List<SectionQubu> qbs) {
		this.qbs = qbs;
	}
	
	public String contacts() {
		//区部的
		qbs=ser.find("from SectionQubu", new String[]{});
		for (int i = 0; i < qbs.size(); i++) {
			List<SectionFenbu> fbs=ser.find("from SectionFenbu where qbId=?",new String[]{qbs.get(i).getQbId()});
			for (int j = 0; j < fbs.size(); j++) {
				List<SectionFenbodian> fbds=ser.find("from SectionFenbodian where fbId=?", new String[]{fbs.get(j).getFbId()});
				fbs.get(j).setFbds(fbds);
			}
			qbs.get(i).setFbs(fbs);
		}
		//公司的
		cs1=ser.find("from CompanySection1", new String[]{});
		for (int i = 0; i < cs1.size(); i++) {
			List<CompanySection2> cs2=ser.find("from CompanySection2 where SIdLast=?", new String[]{cs1.get(i).getS1Id()});
			for (int j = 0; j < cs2.size(); j++) {
				List<CompanySection3> cs3=ser.find("from CompanySection3 where SIdLast=?", new String[]{cs2.get(j).getS2Id()});
				for (int k = 0; k < cs3.size(); k++) {
					List<CompanySection3> cs4=ser.find("from CompanySection4 where SIdLast=?", new String[]{cs3.get(j).getS3Id()});
					
				}
			}
			
		}
		
		
		return "left";
	}
	
}
