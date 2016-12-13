/**
 * 
 */
package com.zs.service.impl;

import java.util.List;

import com.zs.entity.XtDevelopEfficiency;
import com.zs.entity.XtProject;
import com.zs.service.BaseService;
import com.zs.service.iXtProjectCountService;

/**
 * @author 黄光辉
 *	
 */
public class XtProjectCountServiceImpl extends BaseService implements iXtProjectCountService{

	public void createTableAll() {
		XtDevelopEfficiency de = new XtDevelopEfficiency();
		List<XtProject> ps =  find("from XtProject" ,null);
		for (int i = 0; i < ps.size(); i++) {
			
		}
	}

	
	
	public void createTableOfMonth(String date) {
		
		
		
	}

}
