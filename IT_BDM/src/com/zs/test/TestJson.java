package com.zs.test;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;

public class TestJson {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		Gson gson=new Gson();
		List list=new ArrayList();
		String json=gson.toJson(list);
		System.out.println(json);
		System.out.println(json.length());
		System.out.println(json.substring(0,json.length()-1));
		
		
	}

}
