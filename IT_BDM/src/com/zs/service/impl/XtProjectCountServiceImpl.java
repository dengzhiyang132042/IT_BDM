/**
 * 
 */
package com.zs.service.impl;

import java.util.Date;
import java.util.List;

import com.zs.entity.XtDevelopEfficiency;
import com.zs.entity.XtProject;
import com.zs.entity.XtProjectDetail;
import com.zs.service.BaseService;
import com.zs.service.iXtProjectCountService;
import com.zs.tools.NameOfDate;
import com.zs.tools.WorkDays;

/**
 * @author 黄光辉
 *	
 */
public class XtProjectCountServiceImpl extends BaseService implements iXtProjectCountService{

	public void createTableAll() {
		List<XtProject> ps=find("from XtProject" ,null);
		ps=initProject(ps);
		for (int i = 0; i < ps.size(); i++) {
			createTable(ps.get(i));
		}
	}

	
	public void createTable(XtProject pro) {
		WorkDays wd=new WorkDays();
		if (pro!=null) {
			//声明出所有需要用的对象,待用
			XtProjectDetail xq=switchProDet(pro, 1);
			XtProjectDetail fa=switchProDet(pro, 2);
			XtProjectDetail kf=switchProDet(pro, 3);
			XtProjectDetail cs=switchProDet(pro, 4);
			XtProjectDetail ys=switchProDet(pro, 5);
			//看一下数据库是否已经有了这条输出表记录
			XtDevelopEfficiency de=null;
			boolean isHave=false;//是否有数据的标志
			List<XtDevelopEfficiency> list=find("from XtDevelopEfficiency where EMonth=?", new Date[]{pro.getPDate()});
			if (list.size()>0) {
				de=list.get(0);
				isHave=true;
			}else {
				de=new XtDevelopEfficiency("e"+NameOfDate.getNum());
				de.setEMonth(pro.getPDate());
				isHave=false;
			}
			de.setEProjectDemand(toInt(de.getEProjectDemand())+1);
			de.setEArrangeTime(toInt(de.getEArrangeTime())+(int)wd.getBetweenDays(xq.getDStartDate(), fa.getDStartDate()));
			de.setEDevelopTime(toInt(de.getEDevelopTime())+(int)wd.getBetweenDays(fa.getDStartDate(),fa.getDRealityDate()));
			de.setETestTime(toInt(de.getETestTime())+(int)wd.getBetweenDays(cs.getDStartDate(),ys.getDStartDate()));
			de.setEAllTime(toInt(de.getEAllTime())+de.getEDevelopTime()+de.getETestTime());
			de.setEDemandEfficiency((double)de.getEArrangeTime()/de.getEProjectDemand());
			de.setEDevelopEfficiency((double)de.getEDevelopTime()/de.getEProjectDemand());
			de.setETestEfficiency((double)de.getETestTime()/de.getEProjectDemand());
			de.setEProjectEfficiency((double)de.getEAllTime()/de.getEProjectDemand());
			de.setERealityComplete(countComp(pro));
			de.setEPlanComplete(5);
			de.setEOverstep(countOver(pro));
			de.setECompleteRatio((double)de.getERealityComplete()/de.getEPlanComplete());
			if (isHave) {
				update(de);
			}else {
				save(de);
			}
		}
	}
	
	
	public void createTableOfMonth(String date) {
	}



	public List<XtProject> initProject(List<XtProject> pros) {
		if (pros!=null) {
			for (int i = 0; i < pros.size(); i++) {
				List<XtProjectDetail> pds=find("from XtProjectDetail where PId=?", new String[]{pros.get(i).getPId()});
				pros.get(i).setProjectDetails(pds);
			}
			return pros;
		}
		return null;
	}
	public XtProject initProject(XtProject pro) {
		if (pro!=null) {
			List<XtProjectDetail> pds=find("from XtProjectDetail where PId=?", new String[]{pro.getPId()});
			pro.setProjectDetails(pds);
			return pro;
		}
		return null;
	}
	
	
	/*获取到具体某一项的项目详情*/
	private XtProjectDetail switchProDet(XtProject pro,int i) {
		if (pro.getProjectDetails()!=null) {
			String dcont="";
			switch (i) {
			case 1:
				dcont="需求调研";
				break;
			case 2:
				dcont="方案确认";
				break;
			case 3:
				dcont="系统开发";
				break;
			case 4:
				dcont="测试完善";
				break;
			case 5:
				dcont="项目验收";
				break;
			default:
				break;
			}
			for (int j = 0; j < pro.getProjectDetails().size(); j++) {
				if (dcont.equals(pro.getProjectDetails().get(j).getDContent())) {
					return pro.getProjectDetails().get(j);
				}
			}
		}
		System.out.println("null");
		return null;
	}
	
	
	private int countComp(XtProject pro) {
		int i=0;
		if (pro!=null && pro.getProjectDetails()!=null) {
			for (int j = 0; j < pro.getProjectDetails().size(); j++) {
				if (pro.getProjectDetails().get(j).getDRealityDate()!=null) {
					i++;
				}
			}
		}
		return i;
	}
	
	
	private int countOver(XtProject pro) {
		int i=0;
		if (pro!=null && pro.getProjectDetails()!=null) {
			for (int j = 0; j < pro.getProjectDetails().size(); j++) {
				if (pro.getProjectDetails().get(j).getDRealityDate()!=null &&
						pro.getProjectDetails().get(j).getDPlanDate()!=null &&
						pro.getProjectDetails().get(j).getDRealityDate().after(pro.getProjectDetails().get(j).getDPlanDate())) {
					i++;
				}
			}
		}
		return i;
	}
	
	private int toInt(Integer i) {
		return i==null?0:(int)i;
	}
}
