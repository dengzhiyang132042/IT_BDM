/**
 * 
 */
package com.zs.entity.custom;

/**
 * @author 黄光辉
 * 该类主要用来执照的数据返回
 */
public class RespLicence<T> {

	private String result;
	private int code;
	private T data;
	
	
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	
	
}
