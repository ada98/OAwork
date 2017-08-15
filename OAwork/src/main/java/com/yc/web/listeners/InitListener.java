package com.yc.web.listeners;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.yc.bean.Notice;
import com.yc.biz.NoticeBiz;

/**
 * 当servlet容器已启动就会加载这个类
 * @author ada
 *
 */
public class InitListener implements ServletContextListener {
	private ApplicationContext ac;
	
	public InitListener(){
		
	}

	@Override
	public void contextInitialized(ServletContextEvent sce) {
		//取application
		ServletContext application=sce.getServletContext();
		ac=WebApplicationContextUtils.getWebApplicationContext(application);
		//容器初始化
		

	}

	@Override
	public void contextDestroyed(ServletContextEvent sce) {

	}

}
