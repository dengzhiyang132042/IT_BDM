package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
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
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class CSectionAction extends MyBaseAction{

	
	IService ser;
	List<CompanySection1> cs1s; 
	List<CompanySection2> cs2s; 
	List<CompanySection3> cs3s; 
	List<CompanySection4> cs4s; 
	List<CompanySection5> cs5s; 
	List<CompanySection6> cs6s; 
	List<CompanySection7> cs7s; 
	List<CompanySection8> cs8s; 

	CompanySection1 cs1;
	CompanySection2 cs2;
	CompanySection3 cs3;
	CompanySection4 cs4;
	CompanySection5 cs5;
	CompanySection6 cs6;
	CompanySection7 cs7;
	CompanySection8 cs8;
	
	Page page;

	String result1="success";
	String result2="add";
	String result3="succ";
	String result4="fail";
	String result5="cs1";
	String result6="cs2";
	String result7="cs3";
	String result8="cs4";
	String result9="cs5";
	String result10="cs6";
	String result11="cs7";
	String result12="cs8";
	
	
	
	public List<CompanySection5> getCs5s() {
		return cs5s;
	}

	public void setCs5s(List<CompanySection5> cs5s) {
		this.cs5s = cs5s;
	}

	public List<CompanySection6> getCs6s() {
		return cs6s;
	}

	public void setCs6s(List<CompanySection6> cs6s) {
		this.cs6s = cs6s;
	}

	public List<CompanySection7> getCs7s() {
		return cs7s;
	}

	public void setCs7s(List<CompanySection7> cs7s) {
		this.cs7s = cs7s;
	}

	public List<CompanySection8> getCs8s() {
		return cs8s;
	}

	public void setCs8s(List<CompanySection8> cs8s) {
		this.cs8s = cs8s;
	}

	public CompanySection5 getCs5() {
		return cs5;
	}

	public void setCs5(CompanySection5 cs5) {
		this.cs5 = cs5;
	}

	public CompanySection6 getCs6() {
		return cs6;
	}

	public void setCs6(CompanySection6 cs6) {
		this.cs6 = cs6;
	}

	public CompanySection7 getCs7() {
		return cs7;
	}

	public void setCs7(CompanySection7 cs7) {
		this.cs7 = cs7;
	}

	public CompanySection8 getCs8() {
		return cs8;
	}

	public void setCs8(CompanySection8 cs8) {
		this.cs8 = cs8;
	}

	public IService getSer() {
		return ser;
	}

	public void setSer(IService ser) {
		this.ser = ser;
	}

	public List<CompanySection1> getCs1s() {
		return cs1s;
	}

	public void setCs1s(List<CompanySection1> cs1s) {
		this.cs1s = cs1s;
	}

	public List<CompanySection2> getCs2s() {
		return cs2s;
	}

	public void setCs2s(List<CompanySection2> cs2s) {
		this.cs2s = cs2s;
	}

	public List<CompanySection3> getCs3s() {
		return cs3s;
	}

	public void setCs3s(List<CompanySection3> cs3s) {
		this.cs3s = cs3s;
	}

	public List<CompanySection4> getCs4s() {
		return cs4s;
	}

	public void setCs4s(List<CompanySection4> cs4s) {
		this.cs4s = cs4s;
	}

	public CompanySection1 getCs1() {
		return cs1;
	}

	public void setCs1(CompanySection1 cs1) {
		this.cs1 = cs1;
	}

	public CompanySection2 getCs2() {
		return cs2;
	}

	public void setCs2(CompanySection2 cs2) {
		this.cs2 = cs2;
	}

	public CompanySection3 getCs3() {
		return cs3;
	}

	public void setCs3(CompanySection3 cs3) {
		this.cs3 = cs3;
	}

	public CompanySection4 getCs4() {
		return cs4;
	}

	public void setCs4(CompanySection4 cs4) {
		this.cs4 = cs4;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	//------------------------cs1-------------------------------------------
	public String deleteCs1() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs1=(CompanySection1) ser.get(CompanySection1.class, id);
			List<CompanySection2> cs2sList=ser.find("from CompanySection2 where SIdLast=?",new String[]{cs1.getS1Id()});
			for (int j = 0; j < cs2sList.size(); j++) {
				List<CompanySection3> cs3sList=ser.find("from CompanySection3 where SIdLast=?", new String[]{cs2sList.get(j).getS2Id()});
				for (int k = 0; k < cs3sList.size(); k++) {
					List<CompanySection4> cs4sList=ser.find("from CompanySection4 where SIdLast=?", new String[]{cs3sList.get(k).getS3Id()});
					for (int i = 0; i < cs4sList.size(); i++) {
						List<CompanySection5> cs5sList=ser.find("from CompanySection5 where SIdLast=?", new String[]{cs4sList.get(i).getS4Id()});
						for (int l = 0; l < cs5sList.size(); l++) {
							List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5sList.get(l).getS5Id()});
							for (int n = 0; n < cs6.size(); n++) {
								List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
								for (int o = 0; o < cs7.size(); o++) {
									List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
									for (int m = 0; m < cs8.size(); m++) {
										ser.delete(cs8.get(m));
									}
									ser.delete(cs7.get(o));
								}
								ser.delete(cs6.get(n));
							}
							ser.delete(cs5sList.get(l));
						}
						ser.delete(cs4sList.get(i));
					}
					ser.delete(cs3sList.get(k));
				}
				ser.delete(cs2sList.get(j));
			}
			ser.delete(cs1);
		}
		cs1=null;
		return result3;
	}
	
	public String updateCs1() throws Exception {
		if(cs1!=null && cs1.getS1Id()!=null && !"".equals(cs1.getS1Id().trim())){
			ser.update(cs1);
		}
		cs1=null;
		return result3;
	}
	
	public String addCs1() throws Exception {
		if(cs1!=null){
			cs1.setS1Id("cs1"+NameOfDate.getNum());
			ser.save(cs1);
		}
		cs1=null;
		return result3;
	}
	
	public String queryCs1() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs1=(CompanySection1) ser.get(CompanySection1.class, id);
		}
		return result5;
	}
	//------------------------------cs2---------------------------------------------------------
	public String deleteCs2() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs2=(CompanySection2) ser.get(CompanySection2.class, id);
			List<CompanySection3> cs3sList=ser.find("from CompanySection3 where SIdLast=?", new String[]{cs2.getS2Id()});
			for (int k = 0; k < cs3sList.size(); k++) {
				List<CompanySection4> cs4sList=ser.find("from CompanySection4 where SIdLast=?", new String[]{cs3sList.get(k).getS3Id()});
				for (int i = 0; i < cs4sList.size(); i++) {
					List<CompanySection5> cs5sList=ser.find("from CompanySection5 where SIdLast=?", new String[]{cs4sList.get(i).getS4Id()});
					for (int l = 0; l < cs5sList.size(); l++) {
						List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5sList.get(l).getS5Id()});
						for (int n = 0; n < cs6.size(); n++) {
							List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
							for (int o = 0; o < cs7.size(); o++) {
								List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
								for (int m = 0; m < cs8.size(); m++) {
									ser.delete(cs8.get(m));
								}
								ser.delete(cs7.get(o));
							}
							ser.delete(cs6.get(n));
						}
						ser.delete(cs5sList.get(l));
					}
					ser.delete(cs4sList.get(i));
				}
				ser.delete(cs3sList.get(k));
			}
			ser.delete(cs2);
		}
		cs2=null;
		return result3;
	}
	
	public String updateCs2() throws Exception {
		if(cs2!=null && cs2.getS2Id()!=null && !"".equals(cs2.getS2Id().trim())){
			ser.update(cs2);
		}
		cs2=null;
		return result3;
	}
	
	public String addCs2() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs2!=null){
			cs2.setS2Id("cs2"+NameOfDate.getNum());
			cs2.setSIdLast(structure2);
			ser.save(cs2);
		}
		cs2=null;
		return result3;
	}
	
	public String queryCs2() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs2=(CompanySection2) ser.get(CompanySection2.class, id);
		}
		return result6;
	}
	//------------------------------cs3---------------------------------------------------------
	public String deleteCs3() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs3=(CompanySection3) ser.get(CompanySection3.class, id);
			List<CompanySection4> cs4sList=ser.find("from CompanySection4 where SIdLast=?", new String[]{cs3.getS3Id()});
			for (int i = 0; i < cs4sList.size(); i++) {
				List<CompanySection5> cs5sList=ser.find("from CompanySection5 where SIdLast=?", new String[]{cs4sList.get(i).getS4Id()});
				for (int l = 0; l < cs5sList.size(); l++) {
					List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5sList.get(l).getS5Id()});
					for (int n = 0; n < cs6.size(); n++) {
						List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
						for (int o = 0; o < cs7.size(); o++) {
							List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
							for (int m = 0; m < cs8.size(); m++) {
								ser.delete(cs8.get(m));
							}
							ser.delete(cs7.get(o));
						}
						ser.delete(cs6.get(n));
					}
					ser.delete(cs5sList.get(l));
				}
				ser.delete(cs4sList.get(i));
			}
			ser.delete(cs3);
		}
		cs3=null;
		return result3;
	}
	
	public String updateCs3() throws Exception {
		if(cs3!=null && cs3.getS3Id()!=null && !"".equals(cs3.getS3Id().trim())){
			ser.update(cs3);
		}
		cs3=null;
		return result3;
	}
	
	public String addCs3() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs3!=null){
			cs3.setS3Id("cs3"+NameOfDate.getNum());
			cs3.setSIdLast(structure2);
			ser.save(cs3);
		}
		cs3=null;
		return result3;
	}
	
	public String queryCs3() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs3=(CompanySection3) ser.get(CompanySection3.class, id);
		}
		return result7;
	}
	//------------------------------cs4---------------------------------------------------------
	public String deleteCs4() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs4=(CompanySection4) ser.get(CompanySection4.class, id);
			
			List<CompanySection5> cs5sList=ser.find("from CompanySection5 where SIdLast=?", new String[]{cs4.getS4Id()});
			for (int l = 0; l < cs5sList.size(); l++) {
				List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5sList.get(l).getS5Id()});
				for (int n = 0; n < cs6.size(); n++) {
					List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
					for (int o = 0; o < cs7.size(); o++) {
						List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
						for (int m = 0; m < cs8.size(); m++) {
							ser.delete(cs8.get(m));
						}
						ser.delete(cs7.get(o));
					}
					ser.delete(cs6.get(n));
				}
				ser.delete(cs5sList.get(l));
			}
			ser.delete(cs4);
		}
		cs4=null;
		return result3;
	}
	
	public String updateCs4() throws Exception {
		if(cs4!=null && cs4.getS4Id()!=null && !"".equals(cs4.getS4Id().trim())){
			ser.update(cs4);
		}
		cs4=null;
		return result3;
	}
	
	public String addCs4() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs4!=null){
			cs4.setS4Id("cs4"+NameOfDate.getNum());
			cs4.setSIdLast(structure2);
			ser.save(cs4);
		}
		cs3=null;
		return result3;
	}
	
	public String queryCs4() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs4=(CompanySection4) ser.get(CompanySection4.class, id);
		}
		return result8;
	}
	//------------------------------cs5---------------------------------------------------------
	public String deleteCs5() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs5=(CompanySection5) ser.get(CompanySection5.class, id);
			List<CompanySection6> cs6=ser.find("from CompanySection6 where SIdLast=?", new String[]{cs5.getS5Id()});
			for (int n = 0; n < cs6.size(); n++) {
				List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
				for (int o = 0; o < cs7.size(); o++) {
					List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
					for (int m = 0; m < cs8.size(); m++) {
						ser.delete(cs8.get(m));
					}
					ser.delete(cs7.get(o));
				}
				ser.delete(cs6.get(n));
			}
			ser.delete(cs5);
		}
		cs5=null;
		return result3;
	}
	
	public String updateCs5() throws Exception {
		if(cs5!=null && cs5.getS5Id()!=null && !"".equals(cs5.getS5Id().trim())){
			ser.update(cs5);
		}
		cs5=null;
		return result3;
	}
	
	public String addCs5() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs5!=null){
			cs5.setS5Id("cs5"+NameOfDate.getNum());
			cs5.setSIdLast(structure2);
			ser.save(cs5);
		}
		cs3=null;
		return result3;
	}
	
	public String queryCs5() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs5=(CompanySection5) ser.get(CompanySection5.class, id);
		}
		return result9;
	}
	//------------------------------cs6---------------------------------------------------------
	public String deleteCs6() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs6=(CompanySection6) ser.get(CompanySection6.class, id);
			List<CompanySection7> cs7=ser.find("from CompanySection7 where SIdLast=?", new String[]{cs6.getS6Id()});
			for (int o = 0; o < cs7.size(); o++) {
				List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
				for (int m = 0; m < cs8.size(); m++) {
					ser.delete(cs8.get(m));
				}
				ser.delete(cs7.get(o));
			}
			ser.delete(cs6);
		}
		cs6=null;
		return result3;
	}
	
	public String updateCs6() throws Exception {
		if(cs6!=null && cs6.getS6Id()!=null && !"".equals(cs6.getS6Id().trim())){
			ser.update(cs6);
		}
		cs6=null;
		return result3;
	}
	
	public String addCs6() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs6!=null){
			cs6.setS6Id("cs6"+NameOfDate.getNum());
			cs6.setSIdLast(structure2);
			ser.save(cs6);
		}
		cs3=null;
		return result3;
	}
	
	public String queryCs6() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs6=(CompanySection6) ser.get(CompanySection6.class, id);
		}
		return result10;
	}
	//------------------------------cs7---------------------------------------------------------
	public String deleteCs7() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs7=(CompanySection7) ser.get(CompanySection7.class, id);
			List<CompanySection8> cs8=ser.find("from CompanySection8 where SIdLast=?", new String[]{cs7.getS7Id()});
			for (int m = 0; m < cs8.size(); m++) {
				ser.delete(cs8.get(m));
			}
			ser.delete(cs7);
		}
		cs7=null;
		return result3;
	}
	
	public String updateCs7() throws Exception {
		if(cs7!=null && cs7.getS7Id()!=null && !"".equals(cs7.getS7Id().trim())){
			ser.update(cs7);
		}
		cs7=null;
		return result3;
	}
	
	public String addCs7() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs7!=null){
			cs7.setS7Id("cs7"+NameOfDate.getNum());
			cs7.setSIdLast(structure2);
			ser.save(cs7);
		}
		cs3=null;
		return result3;
	}
	
	public String queryCs7() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs7=(CompanySection7) ser.get(CompanySection7.class, id);
		}
		return result11;
	}
	//------------------------------cs8---------------------------------------------------------
	public String deleteCs8() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			cs8=(CompanySection8) ser.get(CompanySection8.class, id);
			ser.delete(cs8);
		}
		cs8=null;
		return result3;
	}
	
	public String updatecs8() throws Exception {
		if(cs8!=null && cs8.getS8Id()!=null && !"".equals(cs8.getS8Id().trim())){
			ser.update(cs8);
		}
		cs8=null;
		return result3;
	}
	
	public String addcs8() throws Exception {
		String structure2=getRequest().getParameter("structure2");
		if(cs8!=null){
			cs8.setS8Id("cs8"+NameOfDate.getNum());
			cs8.setSIdLast(structure2);
			ser.save(cs8);
		}
		cs3=null;
		return result3;
	}
	
	public String querycs8() throws UnsupportedEncodingException {
		String id=(String) getRequest().getParameter("id");
		if (id!=null) {
			cs8=(CompanySection8) ser.get(CompanySection8.class, id);
		}
		return result12;
	}
	
}
