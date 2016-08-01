package com.zs.action;

import java.util.List;

import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.CompanySection4;
import com.zs.entity.CompanySection5;
import com.zs.entity.CompanySection6;
import com.zs.entity.CompanySection7;
import com.zs.entity.CompanySection8;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;

public class IndexAction extends MyBaseAction{
	List<SectionQubu> qbs;
	List<CompanySection1> cs1s;
	
	
	IService ser;
	
	
	public List<CompanySection1> getCs1s() {
		return cs1s;
	}
	public void setCs1s(List<CompanySection1> cs1s) {
		this.cs1s = cs1s;
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
		cs1s=ser.find("from CompanySection1", new String[]{});
		for (int i = 0; i < cs1s.size(); i++) {
			List<CompanySection2> cs2=ser.find("from CompanySection2 where SIdLast=?", new String[]{cs1s.get(i).getS1Id()});
			for (int j = 0; j < cs2.size(); j++) {
				List<CompanySection3> cs3=ser.find("from CompanySection3 where SIdLast=?", new String[]{cs2.get(j).getS2Id()});
				for (int k = 0; k < cs3.size(); k++) {
					List<CompanySection4> cs4=ser.find("from CompanySection4 where SIdLast=?", new String[]{cs3.get(k).getS3Id()});
					for (int l = 0; l < cs4.size(); l++) {
						List<CompanySection5> cs5=ser.find("from CompanySection5 where SIdLast=?", new String[]{cs4.get(l).getS4Id()});
						for (int m = 0; m < cs5.size(); m++) {
							List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5.get(m).getS5Id()});
							for (int n = 0; n < cs6.size(); n++) {
								List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
								for (int o = 0; o < cs7.size(); o++) {
									List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
									cs7.get(o).setNexts(cs8);
								}
								cs6.get(n).setNexts(cs7);
							}
							cs5.get(m).setNexts(cs6);
						}
						cs4.get(l).setNexts(cs5);
					}
					cs3.get(k).setNexts(cs4);
				}
				cs2.get(j).setNexts(cs3);
			}
			cs1s.get(i).setNexts(cs2);
		}
		return "structure";
	}
	
}
