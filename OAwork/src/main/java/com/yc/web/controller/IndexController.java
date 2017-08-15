package com.yc.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/***
 * 这个controller专门用来跳转页面，及首页 登录页面
 * @author ada
 *
 */
@Controller
public class IndexController {
	
	@RequestMapping(value="/notice/toFail.action", method=RequestMethod.POST)
	public String tofile(){
		return "notice/fail";
	}
	@RequestMapping(value="/notice/toSuccess.action", method=RequestMethod.POST)
	public String toSuccess(){
		return "notice/success";
	}
	
	@RequestMapping(value="/index.action", method=RequestMethod.GET)
	public String toLogin(){
		return "login";
	}
	
	@RequestMapping(value="/westpanel.action", method=RequestMethod.GET)
	public String toWestpanel(){
		return "westpanel";
	}
	
	
	@RequestMapping(value="/toMain.action", method=RequestMethod.GET)
	public String toMain(){
		return "main";
	}
	
	@RequestMapping(value="/notice/toAddNotice.action", method=RequestMethod.GET)
	public String toAddNotice(){
		return "notice/addNotice";
	}

	@RequestMapping(value="/notice/toNoticeList.action", method=RequestMethod.GET)
	public String toNoticeList(){
		return "notice/NoticeList";
	}
	
	@RequestMapping(value="/message/toAddMessage.action", method=RequestMethod.GET)
	public String toAddMessage(){
		return "message/addMessage";
	}
	
	@RequestMapping(value="/message/toReceiveMessageList.action", method=RequestMethod.GET)
	public String toReceiveMessageList(){
		return "message/receiveMessageLis";
	}
	
	@RequestMapping(value="/message/toSendMessageList.action", method=RequestMethod.GET)
	public String toSendMessageList(){
		return "message/sendMessageList";
	}
	
	
}
