package com.zs.listener;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;

/**
 * 已废弃不用<br>
 * 张顺 2016-11-10
 * @author 张顺
 */
public class ServletContextAttributeListenerDemo implements ServletContextAttributeListener{

	String tmp=null;
	
	public void attributeAdded(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("application范围属性被添加，属性名称："+
				arg0.getName()+"，属性值："+arg0.getValue());
	}

	public void attributeRemoved(ServletContextAttributeEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("application范围属性被删除，属性名称："+
				arg0.getName()+"，属性值："+arg0.getValue());
	}

	public void attributeReplaced(ServletContextAttributeEvent arg0) {
		System.out.println("application范围属性被替换，属性名称："+arg0.getName()+"，属性值："+arg0.getValue()+" tmp:"+tmp);
		int i=0;
		if (tmp!=null && tmp.equals(arg0.getValue())) {
			
		}else {
			tmp=(String)arg0.getValue();
			while (i<10) {
				try {
					i++;
					Thread.sleep(1000);
					System.out.println(i+"-------模拟排队------");
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
			}
		}
		tmp=(String)arg0.getValue();
	}

	
	
}
