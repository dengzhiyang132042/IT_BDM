package com.zs.mail;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.log4j.Logger;

import com.zs.entity.custom.MailModel;
public class MailTest {

	// 配置发送邮件的环境属性
	public final static Properties props = new Properties();
	
	/**
     * 可用的属性： mail.store.protocol / mail.transport.protocol / mail.host /
     * mail.user / mail.from
     */
    // 表示SMTP发送邮件，需要进行身份验证
	static{
		props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.host", "smtp.qq.com");
        props.put("mail.smtp.port", "587");
        // 发件人的账号
        props.put("mail.user", "3554832577@qq.com");
        // 访问SMTP服务时需要提供的密码
        props.put("mail.password", "ixqgsyoncdyyched");
	}
	
	
	public static final String IT_ROBOT="itrobot@szexpress.com.cn";
	
	
	private static Logger logger = Logger.getLogger(MailTest.class);
	
	/**张顺
	 * <br>2016年9月2日11:35:15
	 * <br>发邮件
	 * @param toAddress
	 * @param ccAddress
	 * @param mailContent
	 * @param title
	 * @return
	 * @throws MessagingException
	 */
	public static String outputMail(MailModel mail) throws MessagingException {
        // 构建授权信息，用于进行SMTP进行身份验证
        Authenticator authenticator = new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                // 用户名、密码
                String userName = props.getProperty("mail.user");
                String password = props.getProperty("mail.password");
                return new PasswordAuthentication(userName, password);
            }
        };
        // 使用环境属性和授权信息，创建邮件会话
        Session mailSession = Session.getInstance(props, authenticator);
        // 创建邮件消息
        MimeMessage message = new MimeMessage(mailSession);
        // 设置发件人
        InternetAddress form = new InternetAddress(props.getProperty("mail.user"));
        message.setFrom(form);
        // 设置收件人
        InternetAddress to = new InternetAddress(mail.getToAddress());
        message.setRecipient(RecipientType.TO, to);

        // 设置抄送
        InternetAddress cc = new InternetAddress(mail.getCcAddress());
        message.setRecipient(RecipientType.CC, cc);

        // 设置密送，其他的收件人不能看到密送的邮件地址
        InternetAddress bcc = new InternetAddress(mail.getCcAddress());
        message.setRecipient(RecipientType.CC, bcc);
        // 设置邮件标题
        message.setSubject(mail.getTitle());

        // 设置邮件的内容体
        message.setContent(mail.getMailContent(), "text/html;charset=UTF-8");
        // 发送邮件
        Transport.send(message);
        
        //返回一个值，用于判断邮件状态，暂时还没设计，留着以后用
		return null;  
        
	}

	
}
