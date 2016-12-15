package com.zs.tools;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.zs.action.IMyBaseAction;
import com.zs.action.MyBaseAction;
import com.zs.service.IService;

public class TransIdAction extends MyBaseAction implements IMyBaseAction{

	private IService ser;
	private String result="transId";
	private String sql;
	private String cz;
	
	
	public String getCz() {
		return cz;
	}
	public void setCz(String cz) {
		this.cz = cz;
	}
	public String getSql() {
		return sql;
	}
	public void setSql(String sql) {
		this.sql = sql;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}

	//------------------------------------------
	
	public String add() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void clearOptions() {
		// TODO Auto-generated method stub
		
	}

	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String gotoQuery() throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		return null;
	}

	public String queryOfFenye() throws UnsupportedEncodingException {
		if (sql!=null) {
			List list=ser.queryBySql(sql);
			getRequest().setAttribute("list", list);//查询的数据
		}
		return result;
	}

	public String update() throws Exception {
		if (sql!=null) {
			if (cz!=null && cz.equals("id")) {
				int rows=0;
				List<Object[]> list=ser.queryBySql(sql);
				getRequest().setAttribute("list", list);//查询的数据
				String updateSql=getRequest().getParameter("updateSql");
				for (int i = 0; i < list.size(); i++) {
					String str=updateSql.replaceAll("\\:a", NameOfDate.getNum());
					String str2=str.replaceAll("\\:b", list.get(i)[0].toString());
					sql=sql+"<br/>"+str2;
					rows=rows+ser.excuteBySql(str2);
					getRequest().setAttribute("rows", rows);//行数
				}
			}else {
				int rows=ser.excuteBySql(sql);
				getRequest().setAttribute("rows", rows);//行数
			}
		}
		return result;
	}

}
