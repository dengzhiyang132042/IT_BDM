/**
 * 
 */
package com.zs.service.impl;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transaction;

import net.sf.json.JSONObject;

import org.apache.log4j.Logger;

import com.zs.entity.WhOutRepair;
import com.zs.entity.XtDevelopEfficiency;
import com.zs.entity.XtProject;
import com.zs.entity.XtProjectDetail;
import com.zs.entity.XtSite;
import com.zs.service.BaseService;
import com.zs.service.iXtProjectCountService;
import com.zs.tools.ExcelImport;
import com.zs.tools.NameOfDate;
import com.zs.tools.WorkDays;

/**
 * @author 黄光辉
 *	
 */
public class XtProjectCountServiceImpl extends BaseService implements iXtProjectCountService{

	private Logger log=Logger.getLogger(XtProjectCountServiceImpl.class);
	
	public void createTableAll() {
		List<XtProject> ps=find("from XtProject" ,null);
		ps=initProject(ps);
		for (int i = 0; i < ps.size(); i++) {
			createTable(ps.get(i));
		}
	}

	public void createTable(List<XtProject> pros) {
		List<XtProject> ps=initProject(pros);
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
			if((xq!=null && fa!=null && kf!=null && cs!=null && ys!=null) &&
					(xq.getDPlanDate()!=null && xq.getDStartDate()!=null) ||
					(fa.getDPlanDate()!=null && fa.getDStartDate()!=null) ||
					(kf.getDPlanDate()!=null && kf.getDStartDate()!=null) ||
					(cs.getDPlanDate()!=null && cs.getDStartDate()!=null) ||
					(ys.getDPlanDate()!=null && ys.getDStartDate()!=null) 
			){
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
//				System.out.println("计算一次"+pro.getPId());
				de.setEProjectDemand(toInt(de.getEProjectDemand())+1);
				de.setEArrangeTime(toInt(de.getEArrangeTime())+toInt(xq.getDUserDate())+toInt(fa.getDUserDate()));
				de.setEDevelopTime(toInt(de.getEDevelopTime())+toInt(kf.getDUserDate()));
				de.setETestTime(toInt(de.getETestTime())+toInt(cs.getDUserDate())+toInt(ys.getDUserDate()));
				de.setEAllTime(toInt(de.getEAllTime())+toInt(de.getEArrangeTime())+toInt(de.getEDevelopTime())+toInt(de.getETestTime()));
				de.setEDemandEfficiency((double)toInt(de.getEArrangeTime())/toInt(de.getEProjectDemand()));
				de.setEDevelopEfficiency((double)toInt(de.getEDevelopTime())/toInt(de.getEProjectDemand()));
				de.setETestEfficiency((double)toInt(de.getETestTime())/toInt(de.getEProjectDemand()));
				de.setEProjectEfficiency((double)toInt(de.getEAllTime())/toInt(de.getEProjectDemand()));
				de.setERealityComplete(toInt(de.getERealityComplete())+countComp(pro));
				de.setEPlanComplete(toInt(de.getEPlanComplete())+countPlan(pro));
				de.setEOverstep(toInt(de.getEOverstep())+countOver(pro));
				de.setECompleteRatio((double)toInt(de.getERealityComplete())/toInt(de.getEPlanComplete()));
				
//				log.debug(de.toString());
				
				if (isHave) {
					update(de);
				}else {
					save(de);
				}
			}else {
				log.error("效率计算失败");
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
	
	private int countPlan(XtProject pro) {
		int i=0;
		if (pro!=null && pro.getProjectDetails()!=null) {
			for (int j = 0; j < pro.getProjectDetails().size(); j++) {
				if (pro.getProjectDetails().get(j).getDPlanDate()!=null) {
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


	public void ExcelImport(String fileName, File file,String unum){
		try {
			List<String[]> list=ExcelImport.getDataFromExcel(fileName,file);
			XtProject p=null;
			for (int i = 1; i < list.size(); i++) {
				try {
					if(!list.get(i)[0].equals("")){
						p=new XtProject("p"+NameOfDate.getNum(),
								transToDate(list.get(i)[6].substring(0,8)+"20"),
								list.get(i)[0], list.get(i)[1],"注册",new Timestamp(new Date().getTime()),
								"有效",unum);
						save(p);
					}
					if (p!=null) {
						XtProjectDetail pd = new XtProjectDetail(NameOfDate.getNum(),p.getPId() , 
								list.get(i)[2], list.get(i)[3], list.get(i)[4], list.get(i)[5], 
								transToDate(list.get(i)[6]),transToDate(list.get(i)[7]), 
								transToDate(list.get(i)[8]), Double.parseDouble(list.get(i)[9]),
								transToInt(list.get(i)[9]));
						save(pd);
					}
				} catch (Exception e) {
					log.error("数据格式错误:请注意填写的数据格式，另外不要留空，数字类型的没有就写0，文本类型的没有可以不写，时间类型的一定要写");
				}
			}
		} catch (Exception e) {
			log.error("文件错误：请确认是否使用了正确的模板");
		}
	}


	
	
}
