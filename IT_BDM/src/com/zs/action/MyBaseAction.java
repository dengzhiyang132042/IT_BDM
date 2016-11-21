package com.zs.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class MyBaseAction extends ActionSupport{
	
	HttpServletRequest request;
	HttpServletResponse response;
	HttpSession session;
	PrintWriter out;
	
	/**
	 * 张顺
	 * 2016年9月2日10:35:53
	 * @return 获得session
	 */
	public HttpSession getSession() {
		return ServletActionContext.getRequest().getSession();
	}
	public void setSession(HttpSession session) {
		this.session = session;
	}
	/**
	 * 张顺
	 * 2016年9月2日10:35:53
	 * @return 获得request
	 */
	public HttpServletRequest getRequest() throws UnsupportedEncodingException {
		request=ServletActionContext.getRequest();
		request.setCharacterEncoding("utf-8");
		return request;
	}
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	/**
	 * 张顺
	 * 2016年9月2日10:35:53
	 * @return 获得response
	 */
	public HttpServletResponse getResponse() {
		response=ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		return response;
	}
	public void setResponse(HttpServletResponse response) {
		this.response = response;
	}
	public PrintWriter getOut() throws IOException {
		return getResponse().getWriter();
	}
	public void setOut(PrintWriter out) {
		this.out = out;
	}
	
	
	
}
