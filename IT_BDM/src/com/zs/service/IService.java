package com.zs.service;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.zs.entity.CompanySection;
import com.zs.entity.Timeline;
import com.zs.entity.Users;
import com.zs.tools.Page;


public interface IService {
	
	/**
	 * 张顺 
	 * 2016年9月2日11:01:15
	 * 查询所有（可预编译）
	 * @param hql hql语句
	 * @param ss 预编译，ss==null时不采用预编译，ss!=null采用预编译
	 * @return 结果集
	 */
	public List find(String hql,Object[] ss);
	
	/**
	 * 分页查询
	 * @param hql hql语句
	 * @param start 开始位置
	 * @param size 范围
	 * @return list 结果集
	 */
	public List findOfFenYe(String hql,int start,int size);
	
	/**
	 * 查询一个唯一的，通过主键查询
	 * @param c 实体
	 * @param id 主键
	 * @return 一个实体对象
	 */
	public Object get(Class c,Serializable id);
	
	/**
	 * 保存
	 * @param obj 实体
	 */
	public void save(Object obj);
	
	/**
	 * 修改
	 * @param obj 实体
	 */
	public void update(Object obj);
	
	/**
	 * 删除
	 * @param obj 实体
	 */
	public void delete(Object obj);

	/**
	 * 封装完整的分页查询
	 * @param hql1 真正查询的hql语句
	 * @param ss hql1的预编译，为null时不用预编译
	 * @param hql2 查询所有的hql语句
	 * @param page 传一个页码类参数，page用action的，用于给page设置各项属性
	 * @param ser 传一个service类，ser用action的
	 * @return 结果集
	 */
	public List query(String hql1,Object ss[],String hql2,Page page,IService ser);
	
	/**
	 * 时间轴
	 * @param state 状态：添加、查询、删除、修改（可能有变化，这是暂时的）
	 * @param tableName 操作的表的名字
	 * @param id 操作的表的主键
	 */
	public void timeLine(String state,String tableName,String id);

	/**
	 * 带上通讯录信息，通过request传过去，键是structure(外部)structure2（内部）
	 * @param req
	 * @throws UnsupportedEncodingException
	 */
	public void receiveStructure(HttpServletRequest req) throws UnsupportedEncodingException;
	
	/**
	 *通过id找到一个具体的master（负责人、职员等等）
	 * @param id
	 * @return
	 */
	public String idToMaster(String id);
	
	/**
	 * 通过id找到一个具体部门名称
	 * @param id
	 * @return
	 */
	public String idToName(String id);
		
	/**
	 *  转换   时间轴、提醒专用  （ 数据结构的构建）
	 * @param list
	 * @return
	 */
	public List<Map> transtion(List<Timeline> list);
	
	/**
	 *  转换   时间轴、提醒专用  （ 数据结构的构建）
	 * @param list
	 * @return
	 */
	public List<Map> transtionXt(List<Timeline> list);
	
	/**2016年8月15日15:02:13
	 * <br/>张顺
	 * <br/>递归算法设计——封装cs
	 * <br/>新版取公司结构
	 * */
	public List<CompanySection> initCs(CompanySection cs);
	
	/**找到头
	 * <br> 通讯录内部的
	 * */
	public CompanySection queryFirst() ;
	
	/**
	 * 组装1——查看     value——name，显示——name
	 */
	public String fitting1(CompanySection cs);
	
	
	/**
	 * 组装2——添加     value——id，显示——name
	 */
	public String fitting2(CompanySection cs);

	/**
	 *张顺
	 *<br>2016年9月19日10:44:42
	 *<br>将所有的用户信息带出去
	 * @param req 需要一个request
	 * <br>带回去的是Users集合，名字是listUsers
	 */
	public void bringUsers(HttpServletRequest req);
	
	/**
	 * 黄光辉
	 *<br>2016年9月27日16:27:50
	 *<br>除当前传过去的人外的其余信息带过去
	 *@param req 需要一个request
	 *@Users user 需要一个当前处理人
	 *<br>带回去的是Users集合，名字是listUsers
	 */
	public void bringUsers(HttpServletRequest req,Users user);
	
	
	/**张顺
	 * <br>2016年9月19日10:33:26
	 * <br>完成dempers的组装
	 * @param dems 查询到的需求表集合
	 */
	public List initDemPers(List dems);
	
	/**
	 * 张顺 2016-10-22 10:29:05
	 * <br>带部门信息过去，
	 */
	public void querySection(HttpServletRequest req) ;
	
	
	
	public static final String KEY_DATE_START="dates";
	public static final String KEY_DATE_END="datee";
	
	/**
	 * @author 黄光辉
	 * <br/>传入一个时间返回该时间对应的周一到周日时间段
	 */
	public Map<String, Date> weekDate(Date date);
}
