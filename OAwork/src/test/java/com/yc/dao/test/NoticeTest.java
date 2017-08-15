package com.yc.dao.test;



import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.biz.NoticeBiz;
import com.yc.utils.Encrypt;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:beans.xml")
public class NoticeTest {
	@Autowired
	ApplicationContext ac;
	
	@Test
	public void testFindAllNoticeCount(){
		NoticeBiz noticeBiz=(NoticeBiz) ac.getBean("noticeBizImpl");
		int a=noticeBiz.findAllNoticeCount();
		System.out.println(a);
	}
	
	@Test
	public void testAddNotice(){
		NoticeBiz noticeBiz=(NoticeBiz) ac.getBean("noticeBizImpl");
		
		int a=noticeBiz.findAllNoticeCount();
		System.out.println(a);
	}
	

}
