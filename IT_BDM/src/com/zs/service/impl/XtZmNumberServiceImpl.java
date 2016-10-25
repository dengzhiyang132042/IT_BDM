package com.zs.service.impl;

import java.util.List;

import com.zs.entity.XtZmNumber;
import com.zs.service.BaseService;
import com.zs.service.iXtZmNumberService;

public class XtZmNumberServiceImpl extends BaseService implements iXtZmNumberService{
	
	
	public List initXtZmBumberService(List<XtZmNumber> list) {
		// TODO Auto-generated method stub
		System.out.println(getDao().find("from XtZmNumber", null).toString());
		return getDao().find("from XtZmNumber", null);
	}


}
