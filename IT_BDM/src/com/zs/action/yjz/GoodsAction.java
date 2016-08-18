package com.zs.action.yjz;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.MyBaseAction;
import com.zs.entity.FbdListLink;
import com.zs.entity.Goods;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.service.IService;
import com.zs.tools.NameOfDate;
import com.zs.tools.Page;

public class GoodsAction extends MyBaseAction{
	
	IService ser;
	Page page;
	
	Goods good;
	List<Goods> goods;
	
	String result_goods="goods";
	String result_succ="succ";
	String result_fail="fail";
	
	
	public List<Goods> getGoods() {
		return goods;
	}
	public void setGoods(List<Goods> goods) {
		this.goods = goods;
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
	public Goods getGood() {
		return good;
	}
	public void setGood(Goods good) {
		this.good = good;
	}
	
	//------------------------------------------------
	public String queryOfFenyeGoods() throws UnsupportedEncodingException {
		String id=getRequest().getParameter("id");
		String cz=getRequest().getParameter("cz");//用于判断是否清理page，yes清理，no不清理
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		if (cz!=null && cz.equals("yes")) {
			page=new Page(1, 0, 5);
		}
		if (id!=null) {
			String hql="from Goods where GId  = ?";
			String ss[]={id};
			String hql2="from Goods where GId = '"+id+"'";
			goods=ser.query(hql, ss, hql2, page, ser);
		}else {
			String hql="from Goods";
			String ss[]={};
			String hql2="from Goods";
			goods=ser.query(hql, ss, hql2, page, ser);
		}
		return result_goods;
	}
	
	public String deleteGoods() throws Exception {
		String id=getRequest().getParameter("id");
		if (id!=null) {
			good=(Goods) ser.get(Goods.class, id);
			ser.delete(good);
		}
		good=null;
		return result_succ;
	}
	
	public String updateGoods() throws Exception {
		if(good!=null && good.getGId()!=null && !"".equals(good.getGId().trim())){
			ser.update(good);
		}
		getRequest().setAttribute("good", good);
		good=null;
		return result_succ;
	}
	
	public String addGoods() throws Exception {
		if(good!=null){
			good.setGId("g"+NameOfDate.getNum());
			ser.save(good);
		}
		getRequest().setAttribute("good", good);
		good=null;
		return result_succ;
	}
	
	
}
