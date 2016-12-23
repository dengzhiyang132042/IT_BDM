package com.zs.mail;

import java.util.Date;
import java.util.Vector;

import javax.mail.MessagingException;

import com.zs.entity.custom.MailModel;


/**
 * 公共邮件管理者
 * 使用单例模式
 * @author it023
 *
 */
public class MailManager {

	private boolean isIng=false;//是否在发送的一个标志
	private Vector<MailModel> mails;//模拟邮件体集合
	private static MailManager factory=new MailManager();//一个自己的实例
	
	private MailManager() {
		mails=new Vector<MailModel>();
	}
	
	public static MailManager getInstance() {
		return factory;  
	}
	
	public void addMail(MailModel mail) {
		//将邮件加到邮件队列中
		mails.add(mail);
		//如果有新的邮件就开始发送邮件
		//这里需要异步来处理
		new Thread(){
			public void run() {
				sendMail();
			};
		}.start();
	}
	
	/**
	 * 发送邮件
	 */
	private synchronized void sendMail() {
		if (isIng==false) {
			isIng=true;
			boolean isSend=false;//是否发送过的标志
			for (int i = 0; i < mails.size(); i++) {
				try {
					isSend=true;
					System.out.println("--------[邮件管理者发送邮件]-----"+new Date().toLocaleString()+"-------------");
					MailTest.outputMail(mails.get(i));
					mails.remove(i);//发完就删掉
					//休眠10分钟
					Thread.sleep(1000*60*10);
				} catch (InterruptedException e) {
					e.printStackTrace();
				} catch (MessagingException e) {
					e.printStackTrace();
				}
			} 
			if (isSend) {
				System.out.println("----------邮件全部发完----------");
			}
			isIng=false;
		}
	}
	
}
