package com.zs.service;

import com.zs.entity.WhTimeliness;

public interface iWhTimelineService {

	
	public WhTimeliness getTimeliness(String mid);
	
	
	public void saveTimeliness(WhTimeliness tl);
}
