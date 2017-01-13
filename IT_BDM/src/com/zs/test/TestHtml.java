package com.zs.test;

import org.springframework.web.util.HtmlUtils;

public class TestHtml {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		String str="<p>\"'a'</p>";
		String s=HtmlUtils.htmlEscape(str);
		System.out.println(s);
		System.out.println(str);
		
	}

}
