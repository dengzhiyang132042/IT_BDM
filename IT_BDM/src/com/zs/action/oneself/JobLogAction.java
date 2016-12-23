package com.zs.action.oneself;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.mail.MessagingException;

import org.apache.log4j.Logger;

import com.sun.org.apache.bcel.internal.generic.NEW;
import com.zs.action.MyBaseAction;
import com.zs.entity.Users;
import com.zs.entity.custom.MailModel;
import com.zs.mail.MailManager;
import com.zs.mail.MailTest;
import com.zs.service.IService;

public class JobLogAction extends MyBaseAction{
	
	IService ser;
	
	String result="jobLog";
	String result_suc="succ";
	String result_fai="fail";
	
	private String css="<style type=\"text/css\">table{border:#224466;border-collapse:collapse;width:100%;}td{height:30px;text-align:center;padding:1px;font-size:12px;}.td_bold{font-weight:bold;}.indent{text-indent:2em;}textarea{width:100%;height:100px;background-color:#F2F2F2;}.title{text-align:center;color:white;font-weight:bold;background-color:#336699;padding:5px;margin-bottom:10px;}.td_left{text-align: left;}</style>";
	
	Logger logger=Logger.getLogger(JobLogAction.class);
	private static MailManager mailManager=MailManager.getInstance();//邮件发送者
	
	
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}


	public String gotoJob() throws UnsupportedEncodingException {
		Date date=new Date();
		getRequest().setAttribute("date",date);
		return result;
	}
	
	public String send() throws UnsupportedEncodingException, MessagingException {
		String body=getRequest().getParameter("content");
		String str=css+body;
		String sj=getRequest().getParameter("sj");
		String cs=getRequest().getParameter("cs");
		Users user=(Users) getSession().getAttribute("user");
		String date=new SimpleDateFormat("yyyy年M月d日工作日志").format(new Date());
		mailManager.addMail(new MailModel(sj,cs, str, date));
		return result;
	}
	
	
}
