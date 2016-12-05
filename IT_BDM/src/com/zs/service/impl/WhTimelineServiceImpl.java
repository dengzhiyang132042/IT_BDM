package com.zs.service.impl;

import com.zs.entity.WhBqDraw;
import com.zs.entity.WhExpressList;
import com.zs.entity.WhMassageReceive;
import com.zs.entity.WhTimeliness;
import com.zs.service.BaseService;
import com.zs.service.iWhTimelineService;

public class WhTimelineServiceImpl extends BaseService implements iWhTimelineService{

	public WhTimeliness getTimeliness(String mid) {
		WhMassageReceive mr=(WhMassageReceive) get(WhMassageReceive.class, mid);
		WhBqDraw bd=(WhBqDraw) get(WhBqDraw.class, mid);
		if (mr!=null && bd!=null) {
			WhExpressList el1=(WhExpressList) get(WhExpressList.class, mr.getEId());
			WhExpressList el2=(WhExpressList) get(WhExpressList.class, bd.getEId());
			WhTimeliness tl=new WhTimeliness(mid);
			int tit=(int)(el1.getEStartDate().getTime()-mr.getMDate().getTime())/(1000*60*60*24);
			int tft=(int)(el2.getEEndDate().getTime()-el1.getEStartDate().getTime())/(1000*60*60*24);
			int ta=(int)(el2.getEEndDate().getTime()-mr.getMDate().getTime())/(1000*60*60*24);
			int trd=(int)(bd.getDDate().getTime()-el2.getEEndDate().getTime())/(1000*60*60*24);
			tl.setTIt(tit+1);
			tl.setTFacilitator(tft);
			tl.setTAmount(ta);
			tl.setTResortDate(trd);
			return tl;
		}
		return null;
	}

	public void saveTimeliness(WhTimeliness tl) {
		if (tl!=null) {
			WhTimeliness tlt=(WhTimeliness) get(WhTimeliness.class, tl.getMId());
			if (tlt!=null) {
				update(tl);
			}else {
				save(tl);
			}
		}
	}


	
	
	
}
