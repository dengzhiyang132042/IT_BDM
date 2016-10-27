package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.GoOut;
import com.zs.entity.Goods;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class GoOutAction extends MyBaseAction{
	IService ser;
	Page page;
	
	GoOut go;
	List<GoOut> gos;
	
	String result_go="go";
	String result_succ="succ";
	String result_fail="fail";
	
	String id;
	String csMasterApplicant;
	String Dates;
	String Datee;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCsMasterApplicant() {
		return csMasterApplicant;
	}
	public void setCsMasterApplicant(String csMasterApplicant) {
		this.csMasterApplicant = csMasterApplicant;
	}

	public String getDates() {
		return Dates;
	}
	public void setDates(String dates) {
		Dates = dates;
	}
	public String getDatee() {
		return Datee;
	}
	public void setDatee(String datee) {
		Datee = datee;
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
	public GoOut getGo() {
		return go;
	}
	public void setGo(GoOut go) {
		this.go = go;
	}
	public List<GoOut> getGos() {
		return gos;
	}
	public void setGos(List<GoOut> gos) {
		this.gos = gos;
	}
	//------------------------------------------------
	
	private void clearOption(){
		id=null;
		csMasterApplicant=null;
		Dates=null;
		Datee=null;
	}
	
	private void clearSpace(){
		if(id!=null){
			id=id.trim();
		}
		if(csMasterApplicant!=null){
			csMasterApplicant=csMasterApplicant.trim();
		}
		if(Dates!=null){
			Dates=Dates.trim();
		}
		if(Datee!=null){
			Datee=Datee.trim();
		}
	}
	
	public String queryOfFenyeGo() throws UnsupportedEncodingException {
		id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
			clearOption();
		}
		clearSpace();
		if (id!=null) {
			String hql2="from GoOut where goId like '%"+id+"%'";
			if(csMasterApplicant!=null){
				hql2=hql2+" and csMasterApplicant like '%"+csMasterApplicant+"%'";
			}
			if (Dates!=null && !Dates.trim().equals("")) {
				hql2=hql2+" and goDateComplete >= '"+Dates+"'";
			}
			if (Datee!=null && !Datee.trim().equals("")) {
				hql2=hql2+" and goDateComplete <= '"+Datee+"'";
			}
			hql2=hql2+" order by goDateComplete desc";
			gos=ser.query(hql2, null, hql2, page, ser);
		}else {
			String hql="from GoOut";
			String ss[]={};
			String hql2="from GoOut";
			gos=ser.query(hql, ss, hql2, page, ser);
		}
		return result_go;
	}
	
	public String deleteGo() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			go=(GoOut) ser.get(GoOut.class, id);
			ser.delete(go);
		}
		go=null;
		return result_succ;
	}
	
	public String updateGo() throws Exception {
		if(go!=null && go.getGoId()!=null && !"".equals(go.getGoId().trim())){
			ser.update(go);
		}
		getRequest().setAttribute("go", go);
		go=null;
		return result_succ;
	}
	
	public String addGo() throws Exception {
		if(go!=null){
			go.setGoId("go"+NameOfDate.getNum());
			ser.save(go);
		}
		getRequest().setAttribute("go", go);
		go=null;
		return result_succ;
	}
	
	
	
	
	
}
