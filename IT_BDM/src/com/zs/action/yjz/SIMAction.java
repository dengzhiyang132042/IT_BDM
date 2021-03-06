package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.CompanySection;
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
import com.zs.entity.Users;
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
	
	String id;
	String csName;
	String cz;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCsName() {
		return csName;
	}
	public void setCsName(String csName) {
		this.csName = csName;
	}
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
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	
	//------------------------------------------------
	
	private void clearOption(){
		id=null;
		csName=null;
		cz=null;
		sim=null;
		sims=null;
		if (page==null) {
			page=new Page(1, 0, 10);
		}else {
			page.setPageOn(1);
		}
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if (cz!=null) {
			cz=cz.trim();
		}
		if(csName!=null){
			csName=csName.trim();
		}
	}
	
	public String queryOfFenyeSIM() throws UnsupportedEncodingException {
		clearSpace();
		if (cz!=null && cz.equals("yes")) {
			clearOption();
		}
		String hql2="from Sim where SState ='有效'";
		if (id!=null&&!id.equals("")) {
			hql2=hql2+" and SId like '%"+id+"%'";
		}
		if(csName!=null&&!csName.equals("")){
			hql2=hql2+" and csName like '%"+csName+"%'";
		}
		hql2 =hql2 +" order by SCreateTime desc";
		sims=ser.query(hql2, null, hql2, page, ser);
		//带上部门
		CompanySection cs=ser.queryFirst();
		getRequest().setAttribute("html",ser.fitting1(cs));
		return result_sim;
	}
	
	public String gotoQuery() throws UnsupportedEncodingException{
		clearOption();
		String hql2 = "from Sim where SState ='有效' order by SCreateTime desc";
		sims=ser.query(hql2, null, hql2, page, ser);
		//带上部门
		CompanySection cs=ser.queryFirst();
		getRequest().setAttribute("html",ser.fitting1(cs));
		return result_sim;
	}
	
	public String deleteSIM() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			sim=(Sim) ser.get(Sim.class, id);
			ser.delete(sim);
		}
		sim=null;
		return gotoQuery();
	}
	
	public String updateSIM() throws Exception {
		if(sim!=null && sim.getSId()!=null && !"".equals(sim.getSId().trim())){
			Sim s = (Sim) ser.get(Sim.class, sim.getSId());
			s.setSState("无效");
			ser.update(s);
			getRequest().setAttribute("s", s);
			
			sim.setSId("sim"+NameOfDate.getNum());
			sim.setSCreateTime(new Timestamp(new Date().getTime()));
			sim.setSState("有效");
			sim.setSType("维护");
			Users us = (Users) getSession().getAttribute("user");
			sim.setUNum(us.getUNum());
			ser.save(sim);
			getRequest().setAttribute("sim", sim);
		}
		return gotoQuery();
	}
	
	public String addSIM() throws Exception {
		if(sim!=null){
			sim.setSId("sim"+NameOfDate.getNum());
			sim.setSCreateTime(new Timestamp(new Date().getTime()));
			sim.setSState("有效");
			sim.setSType("注册");
			Users us = (Users) getSession().getAttribute("user");
			sim.setUNum(us.getUNum());
			ser.save(sim);
			getRequest().setAttribute("sim", sim);
		}
		return gotoQuery();
	}
	
	
	
	
}
