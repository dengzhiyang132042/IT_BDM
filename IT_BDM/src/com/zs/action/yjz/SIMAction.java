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
import com.zs.entity.FbdListLink;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.entity.Sim;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class SIMAction extends MyBaseAction{
	IService ser;
	
	Page page;
	
	Sim sim;
	List<Sim> sims;
	
	String result_sim="sim";
	String result_succ="succ";
	String result_fail="fail";
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public Sim getSim() {
		return sim;
	}
	public void setSim(Sim sim) {
		this.sim = sim;
	}
	public List<Sim> getSims() {
		return sims;
	}
	public void setSims(List<Sim> sims) {
		this.sims = sims;
	}
	
	//------------------------------------------------
	public String queryOfFenyeSIM() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from Sim where SId  = ?";
			String ss[]={id};
			String hql2="from Sim where SId = '"+id+"'";
			sims=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from Sim";
			String ss[]={};
			String hql2="from Sim";
			sims=ser.query(hql, ss, hql2, page, ser);
		}
		for (int i = 0; i < sims.size(); i++) {
			//带上部门信息
			sims.get(i).setCsName(ser.idToName(sims.get(i).getCsId()));
		}
		ser.receiveStructure(getRequest());
		return result_sim;
	}
	
	public String deleteSIM() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			sim=(Sim) ser.get(Sim.class, id);
			ser.delete(sim);
		}
		sim=null;
		return result_succ;
	}
	
	public String updateSIM() throws Exception {
		if(sim!=null && sim.getSId()!=null && !"".equals(sim.getSId().trim())){
			ser.update(sim);
		}
		getRequest().setAttribute("sim", sim);
		sim=null;
		return result_succ;
	}
	
	public String addSIM() throws Exception {
		if(sim!=null){
			sim.setSId("sim"+NameOfDate.getNum());
			ser.save(sim);
		}
		getRequest().setAttribute("sim", sim);
		sim=null;
		return result_succ;
	}
	
	
	
	
}
