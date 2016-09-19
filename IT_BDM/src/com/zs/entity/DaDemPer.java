package com.zs.entity;

import java.util.List;

public class DaDemPer {
	DaDemand demand;
	List<DaPerform> performs;
	
	public DaDemPer(DaDemand demand,List<DaPerform> performs) {
		this.demand=demand;
		this.performs=performs;
	}
	
	
	public DaDemand getDemand() {
		return demand;
	}
	public void setDemand(DaDemand demand) {
		this.demand = demand;
	}
	public List<DaPerform> getPerforms() {
		return performs;
	}
	public void setPerforms(List<DaPerform> performs) {
		this.performs = performs;
	}
	
	
}
