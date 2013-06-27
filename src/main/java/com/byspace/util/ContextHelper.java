package com.byspace.util;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class ContextHelper implements ApplicationContextAware {

	private static ApplicationContext context = null;
	
	public static ApplicationContext getContext() {
		if (context == null) {
			context = new ClassPathXmlApplicationContext("context.xml");
		}
		
		return context;
	}

	public static Object getBean(String name) {
		return getContext().getBean(name);
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext)
			throws BeansException {
		context = applicationContext;
	}
	
	
}
