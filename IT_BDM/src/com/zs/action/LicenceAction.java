package com.zs.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.zs.entity.Permission;
import com.zs.entity.Role;
import com.zs.entity.RolePermission;
import com.zs.entity.Users;
import com.zs.entity.custom.RespLicence;
import com.zs.service.IService;

public class LicenceAction extends MyBaseAction{
	
	IService ser;

	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	
	//此为执照验证
	public String licence() throws IOException {
		String uNum = (String) getRequest().getParameter("u_num");
		String pId = (String) getRequest().getParameter("p_id");
//		System.out.println(pId);
		RespLicence resp = new RespLicence();
		resp.setData("{'u_num':'"+uNum+"'}");
		if(uNum!=null&&!uNum.equals("")&&pId!=null&&!pId.equals("")){
			Users u = (Users) ser.get(Users.class, uNum);
			if(u!=null){
				Permission p = (Permission) ser.get(Permission.class, pId);
				if(p!=null){
					String rpsql = "select PId from RolePermission where RId = ?";
					List rplist = ser.find(rpsql, new Object[]{u.getRId()});
					if(rplist.size()>0){
						String psql = "from RolePermission where RId = ? and PId = ?";
						List list = ser.find(psql, new Object[]{u.getRId(),pId});
						if(list.size()>0){
							resp.setResult("success");
							resp.setCode(100);
							sendObjectJson(resp, ser);
//							System.out.println("验证通过");
						}else{
							resp.setResult("error");
							resp.setCode(101);
							sendObjectJson(resp, ser);
//							System.out.println("101");
						}
					}else{
						resp.setResult("error");
						resp.setCode(102);
						sendObjectJson(resp, ser);
//						System.out.println("102");
					}
				}else{
					resp.setResult("error");
					resp.setCode(103);
					sendObjectJson(resp, ser);
//					System.out.println("103");
				}
			}else{
				resp.setResult("error");
				resp.setCode(104);
				sendObjectJson(resp, ser);
//				System.out.println("104");
			}
		}else{
			resp.setResult("error");
			resp.setCode(105);
			sendObjectJson(resp, ser);
//			System.out.println("105");
		}
		return null;
	}
}
