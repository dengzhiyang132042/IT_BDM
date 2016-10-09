package com.zs.tools;


import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.zs.action.da.DaHandleAction;
import com.zs.entity.DaDemand;
import com.zs.entity.DaPerform;
import com.zs.service.IService;

/**
 * 自动改变需求单的状态
 */
public class AutoTransState implements Runnable{

	
	private DaDemand demand;
	private IService ser;
	//--------备用变量---------
	private Date date1,date2;
	//---------日志----------
	private Logger logger=Logger.getLogger(AutoTransState.class);
	
	
	
	//------------------------------------------
	public DaDemand getDemand() {
		return demand;
	}
	public void setDemand(DaDemand demand) {
		this.demand = demand;
	}
	public IService getSer() {
		return ser;
	}
	public void setSer(IService ser) {
		this.ser = ser;
	}
	//------------------------------------------

	
	
	public AutoTransState(DaDemand demand,IService ser) {
		this.demand=demand;
		this.ser=ser;
	}
	
	
	
	
	public void run() {
		logger.debug("线程开始... DId:"+demand.getDId());
		try {
			if (demand!=null && ser!=null) {
				date1=demand.getDTimeExpect();
				date2=new Date();
				while (date2.before(date1)) {
					date2=new Date();
					Thread.sleep(1000*60);
				}
				List<DaPerform> performs=ser.find("from DaPerform where DId=? order by PTime desc", new String[]{demand.getDId()});
				if (performs.size()>0) {
					DaPerform perform=performs.get(0);
					if (perform.getPState().equals(DaHandleAction.STATE_DOING)) {
						perform.setPState(DaHandleAction.STATE_NO);
						perform.setPNote("超时，系统自动设为未完成。");
						ser.update(perform);
						DaHandleAction.outMailFromUpdate(perform, demand, getSer());
						logger.debug("已更改        DId:"+demand.getDId()+"   PId:"+perform.getPId());
					}
				}
				logger.debug("看看size:"+performs.size());
			}
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		logger.debug("线程结束...DId:"+demand.getDId()+"  date1:"+date1.toLocaleString()+"  date2:"+date2.toLocaleString());
	}
}
