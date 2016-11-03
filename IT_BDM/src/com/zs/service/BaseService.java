package com.zs.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFDataFormat;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import com.zs.dao.IBaseDaoOfSpring;
import com.zs.entity.CompanySection;
import com.zs.entity.CompanySection1;
import com.zs.entity.CompanySection2;
import com.zs.entity.CompanySection3;
import com.zs.entity.CompanySection4;
import com.zs.entity.CompanySection5;
import com.zs.entity.CompanySection6;
import com.zs.entity.CompanySection7;
import com.zs.entity.CompanySection8;
import com.zs.entity.DaDemPer;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.entity.FbdComputer;
import com.zs.entity.SectionFenbodian;
import com.zs.entity.SectionFenbu;
import com.zs.entity.SectionQubu;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.tools.Page;

public class BaseService implements IService{

	IBaseDaoOfSpring dao;
	
	public IBaseDaoOfSpring getDao() {
		return dao;
	}
	public void setDao(IBaseDaoOfSpring dao) {
		this.dao = dao;
	}
	public void delete(Object obj) {
		dao.delete(obj);
	}
	public List find(String hql,Object[] ss) {
		return dao.find(hql,ss);
	}
	public List findOfFenYe(String hql, int start, int size) {
		return dao.findOfFenYe(hql, start, size);
	}
	public Object get(Class c, Serializable id) {
		return dao.get(c, id);
	}
	public void save(Object obj) {
		dao.save(obj);
	}
	public void update(Object obj) {
		dao.update(obj);
	}
	
	
	
	public List<CompanySection> initCs(CompanySection cs) {
		List<CompanySection> css1=dao.find("from CompanySection where csLast=?", new Object[]{cs.getCsId()});
		for (int i = 0; i < css1.size(); i++) {
			css1.get(i).setNexts(initCs(css1.get(i)));
			css1.get(i).setLast(cs);
		}
		return css1;
	}
	
	/**2016年7月30日14:08:24
	 *张顺 
	 *用来取结构关系
	 * */
	public List query(String hql1,Object ss[],String hql2,Page page,IService ser) {
		String hql="from SectionQubu where qbId like ?"; 
		if (page==null) {
			page=new Page(1, 0, 5);
		}
		List list=ser.find(hql1,ss);
		if (0==list.size()%page.getSize()) {
			page.setPageMax(list.size()/page.getSize());
		}else {
			page.setPageMax(list.size()/page.getSize()+1);
		}
//		System.out.println(list.size()+"(list)   "+page.getPageMax()+"(max)   "+page.getPageOn()+"(On)");
		List list2=ser.findOfFenYe(hql2, (page.getPageOn()-1)*page.getSize(), page.getSize());
		return list2;
	}
	public void timeLine(String state, String tableName, String id) {
		// TODO Auto-generated method stub
		
	}
	public void receiveStructure(HttpServletRequest req)
			throws UnsupportedEncodingException {
		//外部
		List<SectionQubu> qbsList;
		qbsList=this.find("from SectionQubu", new String[]{});
		for (int i = 0; i < qbsList.size(); i++) {
			List<SectionFenbu> fbsList=this.find("from SectionFenbu where qbId=?",new String[]{qbsList.get(i).getQbId()});
			for (int j = 0; j < fbsList.size(); j++) {
				List<SectionFenbodian> fbdsList=this.find("from SectionFenbodian where fbId=?", new String[]{fbsList.get(j).getFbId()});
				fbsList.get(j).setFbds(fbdsList);
			}
			qbsList.get(i).setFbs(fbsList);
		}
		req.setAttribute("structure", qbsList);
		// 内部
		List<CompanySection1> cs1List;
		cs1List=this.find("from CompanySection1", new String[]{});
		for (int i = 0; i < cs1List.size(); i++) {
			List<CompanySection2> cs2List=this.find("from CompanySection2 where SIdLast=?", new String[]{cs1List.get(i).getS1Id()});
			for (int j = 0; j < cs2List.size(); j++) {
				List<CompanySection3> cs3List=this.find("from CompanySection3 where SIdLast=?", new String[]{cs2List.get(j).getS2Id()});
				for (int k = 0; k < cs3List.size(); k++) {
					List<CompanySection4> cs4List=this.find("from CompanySection4 where SIdLast=?", new String[]{cs3List.get(k).getS3Id()});
					for (int l = 0; l < cs4List.size(); l++) {
						List<CompanySection5> cs5=this.find("from CompanySection5 where SIdLast=?", new String[]{cs4List.get(l).getS4Id()});
						for (int m = 0; m < cs5.size(); m++) {
							List<CompanySection6> cs6=this.find("from CompanySection6 where SIdLast=?", new String[]{cs5.get(m).getS5Id()});
							for (int n = 0; n < cs6.size(); n++) {
								List<CompanySection7> cs7=this.find("from CompanySection7 where SIdLast=?", new String[]{cs6.get(n).getS6Id()});
								for (int o = 0; o < cs7.size(); o++) {
									List<CompanySection8> cs8=this.find("from CompanySection8 where SIdLast=?", new String[]{cs7.get(o).getS7Id()});
									cs7.get(o).setNexts(cs8);
								}
								cs6.get(n).setNexts(cs7);
							}
							cs5.get(m).setNexts(cs6);
						}
						cs4List.get(l).setNexts(cs5);
					}
					cs3List.get(k).setNexts(cs4List);
				}
				cs2List.get(j).setNexts(cs3List);
			}
			cs1List.get(i).setNexts(cs2List);
		}
		req.setAttribute("structure2", cs1List);
	}
	
	
	public String idToMaster(String id) {
		String master=""; 
		char cnumber=id.charAt(2);
		int inumber=Integer.valueOf(cnumber+"");
		switch (inumber) {
		case 1:
			master=(((CompanySection1)this.get(CompanySection1.class, id)).getS1Master());
			break;
		case 2:
			master=(((CompanySection2)this.get(CompanySection2.class, id)).getS2Master());
			break;
		case 3:
			master=(((CompanySection3)this.get(CompanySection3.class, id)).getS3Master());
			break;
		case 4:
			master=(((CompanySection4)this.get(CompanySection4.class, id)).getS4Master());
			break;
		case 5:
			master=(((CompanySection5)this.get(CompanySection5.class, id)).getS5Master());
			break;
		case 6:
			master=(((CompanySection6)this.get(CompanySection6.class, id)).getS6Master());
			break;
		case 7:
			master=(((CompanySection7)this.get(CompanySection7.class, id)).getS7Master());
			break;
		case 8:
			master=(((CompanySection8)this.get(CompanySection8.class, id)).getS8Master());
			break;
		default:
			break;
		}
		return master;
	}
	
	
	public String idToName(String id) {
		String name=""; 
		char cnumber=id.charAt(2);
		int inumber=Integer.valueOf(cnumber+"");
		switch (inumber) {
		case 1:
			name=(((CompanySection1)this.get(CompanySection1.class, id)).getS1Name());
			break;
		case 2:
			name=(((CompanySection2)this.get(CompanySection2.class, id)).getS2Name());
			break;
		case 3:
			name=(((CompanySection3)this.get(CompanySection3.class, id)).getS3Name());
			break;
		case 4:
			name=(((CompanySection4)this.get(CompanySection4.class, id)).getS4Name());
			break;
		case 5:
			name=(((CompanySection5)this.get(CompanySection5.class, id)).getS5Name());
			break;
		case 6:
			name=(((CompanySection6)this.get(CompanySection6.class, id)).getS6Name());
			break;
		case 7:
			name=(((CompanySection7)this.get(CompanySection7.class, id)).getS7Name());
			break;
		case 8:
			name=(((CompanySection8)this.get(CompanySection8.class, id)).getS8Name());
			break;
		default:
			break;
		}
		return name;
	}

	/**2016年8月13日15:02:49
	 * 张顺
	 * 转换   时间轴、提醒专用
	 * */
	public List<Map> transtion(List<Timeline> list) {
		List<Map> tlData=new ArrayList<Map>();
		
		Map map1=new HashMap();
		List<Timeline> l1=new ArrayList<Timeline>();
		map1.put("name", "分拨点ASDL登记");
		map1.put("list", l1);
		tlData.add(map1);
		
		Map map2=new HashMap();
		List<Timeline> l2=new ArrayList<Timeline>();
		map2.put("name", "分拨点电脑登记");
		map2.put("list", l2);
		tlData.add(map2);
		
		Map map3=new HashMap();
		List<Timeline> l3=new ArrayList<Timeline>();
		map3.put("name", "分拨点监控登记");
		map3.put("list", l3);
		tlData.add(map3);
		
		Map map4=new HashMap();
		List<Timeline> l4=new ArrayList<Timeline>();
		map4.put("name", "分拨点监控材料申请清单登记");
		map4.put("list", l4);
		tlData.add(map4);
		
		Map map5=new HashMap();
		List<Timeline> l5=new ArrayList<Timeline>();
		map5.put("name", "SIM费用报销登记");
		map5.put("list", l5);
		tlData.add(map5);
		
		Map map6=new HashMap();
		List<Timeline> l6=new ArrayList<Timeline>();
		map6.put("name", "内件收发登记");
		map6.put("list", l6);
		tlData.add(map6);
		
		Map map7=new HashMap();
		List<Timeline> l7=new ArrayList<Timeline>();
		map7.put("name", "硬件组外出登记");
		map7.put("list", l7);
		tlData.add(map7);
		
		for (int i = 0; i < list.size(); i++) {
			Timeline timeline=list.get(i);
			String tableName=timeline.getTlTableName();
			timeline.setTlTableName2(transtion(timeline.getTlTableName()));
			if (tableName!=null) {
				if ("FbdAsdl".equals(tableName)) {
					l1.add(timeline);
				}else if ("FbdComputer".equals(tableName)) {
					l2.add(timeline);
				}else if ("FbdMonitoring".equals(tableName)) {
					l3.add(timeline);
				}else if ("FbdListLink".equals(tableName)) {
					l4.add(timeline);
				}else if ("Sim".equals(tableName)) {
					l5.add(timeline);
				}else if ("Goods".equals(tableName)) {
					l6.add(timeline);
				}else if ("GoOut".equals(tableName)) {
					l7.add(timeline);
				}
			}
		}
		return tlData;
	}
	public List<Map> transtionXt(List<Timeline> list) {
		List<Map> tlData=new ArrayList<Map>();
		
		Map map1=new HashMap();
		List<Timeline> l1=new ArrayList<Timeline>();
		map1.put("name", "站点资料");
		map1.put("list", l1);
		tlData.add(map1);
		
		Map map2=new HashMap();
		List<Timeline> l2=new ArrayList<Timeline>();
		map2.put("name", "二级站点资料");
		map2.put("list", l2);
		tlData.add(map2);
		
		Map map3=new HashMap();
		List<Timeline> l3=new ArrayList<Timeline>();
		map3.put("name", "哲盟账号申请登记");
		map3.put("list", l3);
		tlData.add(map3);
		
		Map map4=new HashMap();
		List<Timeline> l4=new ArrayList<Timeline>();
		map4.put("name", "哲盟数据检查登记");
		map4.put("list", l4);
		tlData.add(map4);
		
		for (int i = 0; i < list.size(); i++) {
			Timeline timeline=list.get(i);
			String tableName=timeline.getTlTableName();
			timeline.setTlTableName2(transtion(timeline.getTlTableName()));
			if (tableName!=null) {
				if ("XtSite".equals(tableName)) {
					l1.add(timeline);
				}else if ("XtBranches".equals(tableName)) {
					l2.add(timeline);
				}else if ("XtZmNumber".equals(tableName)) {
					l3.add(timeline);
				}else if ("XtZmData".equals(tableName)) {
					l4.add(timeline);
				}
			}
		}
		return tlData;
	}
	/**2016年8月12日14:17:37
	 * 张顺
	 * 数据库表名转成实际名称
	 * */
	public String transtion(String tableName) {
		// TODO Auto-generated method stub
		if (tableName!=null) {
			if ("FbdAsdl".equals(tableName)) {
				return "分拨点ASDL登记";
			}else if ("FbdComputer".equals(tableName)) {
				return "分拨点电脑登记";
			}else if ("FbdMonitoring".equals(tableName)) {
				return "分拨点监控登记";
			}else if ("FbdListLink".equals(tableName)) {
				return "分拨点监控材料申请清单登记";
			}else if ("Sim".equals(tableName)) {
				return "SIM费用报销登记";
			}else if ("Goods".equals(tableName)) {
				return "内件收发登记";
			}else if ("GoOut".equals(tableName)) {
				return "硬件组外出登记";
			}else {
				return null;
			}
		}else {
			return null;
		}
	}
	
	
	public CompanySection queryFirst() {
		List<CompanySection> css=dao.find("from CompanySection where csLast=? or csLast=?", new Object[]{"null","0"});
		CompanySection cs=null;
		if (css.size()>0) {
			cs=css.get(0);
			cs.setNexts(initCs(cs));
		}
		return cs;
	}
	
	
	public String fitting1(CompanySection cs) {
		String str="<ul class='easyui-tree' data-options='animate:true,lines:true'>" +
				"<li>" +
				"<span>"+
				cs.getCsName()+
				"(" +
				cs.getCsMaster()+
				")"+
				"<font style='display: none;'>"+
				cs.getCsName()+
				"</font>"+
				"</span>"+
				tell1(cs)+
				"</li>" +
				"</ul>";
		return str;
	}
	
	
	public String fitting2(CompanySection cs) {
		cs.setNexts(initCs(cs));
		String str="<ul class='easyui-tree' data-options='animate:true,lines:true'>" +
				"<li>" +
				"<span>"+
				cs.getCsName()+
				"(" +
				cs.getCsMaster()+
				")"+
				"<font style='display: none;'>"+
				cs.getCsId()+
				"</font>"+
				"</span>"+
				tell2(cs)+
				"</li>" +
				"</ul>";
		return str;
	}

	/**组装html
	 * <br>2016年8月15日17:14:07
	 * <br>张顺
	 * <br>因为前台靠无法使用递归，所以不好实现
	 * */
	public String tell1(CompanySection cs) {
		String str="<ul>" ;
		for (int i = 0; i < cs.getNexts().size(); i++) {
			str=str+"<li>" +
					"<span>"
					+cs.getNexts().get(i).getCsName()
					+"(" +
					cs.getNexts().get(i).getCsMaster()+
					")"
					+"<font style='display: none;'>"
					+cs.getNexts().get(i).getCsName()
					+"</font>"
					+"</span>"
					+tell1(cs.getNexts().get(i))
					+"</li>";
		}
		str=str
			+"</ul>";
		return str;
	}	
	
	/**组装html
	 * <br>2016年9月2日11:18:19
	 * <br>张顺
	 * <br>因为前台靠无法使用递归，所以不好实现
	 * <br>配合fitting2使用的
	 * */
	public String tell2(CompanySection cs) {
		String str="<ul>" ;
		for (int i = 0; i < cs.getNexts().size(); i++) {
			str=str+"<li>" +
					"<span>"
					+cs.getNexts().get(i).getCsName()
					+"(" +
					cs.getNexts().get(i).getCsMaster()+
					")"
					+"<font style='display: none;'>"
					+cs.getNexts().get(i).getCsId()
					+"</font>"
					+"</span>"
					+tell2(cs.getNexts().get(i))
					+"</li>";
		}
		str=str
			+"</ul>";
		return str;
	}
	
	
	public void bringUsers(HttpServletRequest req) {
		List<Users> list=this.find("from Users", null);
		req.setAttribute("listUsers", list);
	}	
	
	public void bringUsers(HttpServletRequest req, Users user) {
		List<Users> list=this.find("from Users where UName !='"+user.getUName()+"'", null);
		req.setAttribute("listUsers", list);
		
	}
	
	public List initDemPers(List dems) {
		List demPers=new ArrayList<DaDemPer>();
		for (int i = 0; i < dems.size(); i++) {
			DaDemand d=(DaDemand) dems.get(i);
			d.setDTimeString(d.getDTime().toString());
			d.setDTimeExpectString(d.getDTimeExpect().toString());
			Date nDate = new Date();
			List pers=this.find("from DaPerform where DId = ? order by PTime desc", new Object[]{d.getDId()});
			for (int j = 0; j < pers.size(); j++) {
				DaPerform perform=(DaPerform) pers.get(j);
				perform.setPTimeString(perform.getPTime().toString());
				if (perform.getUNum()!=null && !"".equals(perform.getUNum())) {
					Users u1=(Users) this.get(Users.class, perform.getUNum());
					perform.setUName(u1.getUName());
				}
				if (perform.getUNumNext()!=null && !"".equals(perform.getUNumNext())) {
					Users u2=(Users) this.get(Users.class, perform.getUNumNext());
					perform.setUNameNext(u2.getUName());
				}
				if(d.getDTimeExpect().getTime()-nDate.getTime()<=3*1000*60*60&&perform.getPState().equals("进行中")){
					d.setOutTime(1);
				}else{
					d.setOutTime(0);
				}
			}
			demPers.add(new DaDemPer(d, pers));
		}
		return demPers;
	}
	public void querySection(HttpServletRequest req) {
		List<CompanySection> css=find("from CompanySection", null);
		List<String> str=new ArrayList<String>();
		for (int i = 0; i < css.size(); i++) {
			str.add("'"+css.get(i).getCsName()+"("+css.get(i).getCsMaster()+")'");
		}
		String ss=str.toString();
		req.setAttribute("query_section", ss);
	}
	
	/**
	 * @author 黄光辉
	 * <br/>传入一个时间返回该时间对应的周一到周日时间段
	 */
	public Map<String, Date> weekDate(Date date) {
		Calendar ca = Calendar.getInstance();//创建一个日期实例
		Calendar ca1 = Calendar.getInstance();
		Calendar ca2 = Calendar.getInstance();
		
		ca.setTime(date);//实例化一个日期
		int a = ca.get(ca.DAY_OF_WEEK);
		//当前时间的周一
		ca1.set(ca.getTime().getYear()+1900, ca.getTime().getMonth(), ca.getTime().getDate()-a,23,59,60);
		ca2.set(ca.getTime().getYear()+1900, ca.getTime().getMonth(), ca.getTime().getDate()+(7-a),23,59,59);
//		System.out.println("当前周的周一   "+ca1.getTime());
//		System.out.println("当前周的周日   "+ca2.getTime());
		
		Map<String, Date> map=new HashMap<String, Date>();
		
		map.put(KEY_DATE_START, ca1.getTime());
		map.put(KEY_DATE_END, ca2.getTime());
		
		return map;
	}
	
	/**
	 * @author 黄光辉 2016年10月29日15:35:54
	 * <br/>传入一个首行数组，和一个Object数组将已Excel文档进行导出
	 */
	public void outExcel(Object[] obj, Object[][] obj2,String path) {
		try {     
			// 创建新的Excel 工作簿     
			HSSFWorkbook workbook = new HSSFWorkbook();    
			// 在Excel 工作簿中建一工作表    
			HSSFSheet sheet = workbook.createSheet("Sheet1"); 
			// 设置单元格格式(文本) 
			HSSFCellStyle cellStyle = workbook.createCellStyle(); 
			// 生成一个字体   
	        HSSFFont font = workbook.createFont();
	        font.setFontName("宋体");
	        font.setFontHeightInPoints((short) 10); //设置字号
	        font.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL); //设置字体样式 正常显示
			cellStyle.setFont(font);
			cellStyle.setDataFormat(HSSFDataFormat.getBuiltinFormat("@"));         
			// 在索引0的位置创建行（第一行）     
			HSSFRow row = sheet.createRow((short) 0); 
			for(int i = 0 ; i < obj.length ; i++){
				HSSFCell cell1 = row.createCell((short) i);
				cell1.setCellType(HSSFCell.CELL_TYPE_STRING); 
				cell1.setEncoding(HSSFCell.ENCODING_UTF_16);
				cell1.setCellValue(obj[i].toString());
			}
			for(int j = 0 ; j < obj2.length ; j++){    
				row = sheet.createRow((short) j+1);     
				//设置i列从第二列开始     
				for (int i = 0; i < obj2[j].length; i++) {      
					HSSFCell cell = row.createCell((short) (i));   
					// 设置单元格格式        
					cell.setCellStyle(cellStyle);  
					cell.setCellType(HSSFCell.CELL_TYPE_STRING); 
					cell.setEncoding(HSSFCell.ENCODING_UTF_16);   
					cell.setCellValue(obj2[j][i].toString());  
				}            
			}        
			// 新建一输出文件流    
			FileOutputStream fOut = new FileOutputStream(path);  
			// 把相应的Excel 工作簿存盘    
			workbook.write(fOut);  
			// 操作结束，关闭文件  
			fOut.flush();   
			fOut.close();    
		}catch (Exception ioexception) { 
			System.out.println("文件导出失败");
		}  
		
	}

}
