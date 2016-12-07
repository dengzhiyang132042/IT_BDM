package com.zs.tools;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import net.sf.ezmorph.MorphException;
import net.sf.ezmorph.object.AbstractObjectMorpher;

public class TimeStampMorpher extends AbstractObjectMorpher{

	private String[] formats = new String[]{"yyyy-MM-dd hh:mm:ss","yyyy-MM-dd"};
	
	@Override
	public Object morph(Object arg0) {
		if (arg0==null) {
			return null;
			
		}
		if(Timestamp.class.isAssignableFrom(arg0.getClass())){
			return (Timestamp)arg0;
		}
		if(!supports(arg0.getClass())){
			throw new MorphException(arg0.getClass()+"不是支持的类型！");         
		}
		String strValue = (String)arg0;         
		SimpleDateFormat dateParser = null;
		
		for(int i=0,k=formats.length;i<k;i++){
			if(null == dateParser){
				dateParser = new SimpleDateFormat(formats[i]);            
			}else{
				dateParser.applyPattern(formats[i]);            
			}            
			try{
				return new Timestamp(dateParser.parse(strValue.toLowerCase()).getTime());
			}catch(ParseException e){
				e.printStackTrace();            
			}
		}
		return new  java.sql.Timestamp(System.currentTimeMillis());//返回默认日期
	}

	@Override
	public Class morphsTo() {
		return Timestamp.class;
	}

	
}
