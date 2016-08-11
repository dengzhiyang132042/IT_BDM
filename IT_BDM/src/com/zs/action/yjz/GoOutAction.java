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
	public String queryOfFenyeGo() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from GoOut where goId  = ?";
			String ss[]={id};
			String hql2="from GoOut where goId = '"+id+"'";
			gos=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from GoOut";
			String ss[]={};
			String hql2="from GoOut";
			gos=ser.query(hql, ss, hql2, page, ser);
		}
		for (int i = 0; i < gos.size(); i++) {
			//带上硬件专员姓名
			gos.get(i).setCsIdApplicantMaster(ser.idToMaster(gos.get(i).getCsIdApplicant()));
			gos.get(i).setCsIdRegisteMaster(ser.idToMaster(gos.get(i).getCsIdRegiste()));
			gos.get(i).setCsIdServiceMaster(ser.idToMaster(gos.get(i).getCsIdService()));
		}
		ser.receiveStructure(getRequest());
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
