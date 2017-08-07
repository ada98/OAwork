package com.yc.web.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yc.bean.Users;
import com.yc.biz.UsersBiz;
import com.yc.web.model.JsonModel;

@Controller
public class UsersController {
	
	@Resource(name="usersBizImpl")
	private UsersBiz usersBiz;

	@RequestMapping("/login.action")
	public JsonModel login(Users user,HttpServletRequest request,HttpSession session){
		JsonModel jsonmodel=new JsonModel();
		String zccode=request.getParameter("zccode");
		String rand=session.getAttribute("rand").toString();
		if(!rand.equals(zccode)){
			jsonmodel.setCode(0);
			jsonmodel.setMsg("验证码错误");
		}else{
			try {
				user=usersBiz.login(user);
				if(user!=null){
					session.setAttribute("user", user);
					jsonmodel.setCode(1);
					user.setU_pwd(null);
					jsonmodel.setObj(user);
				}else{
					jsonmodel.setCode(0);
					jsonmodel.setMsg("用户名或密码错误");
				}
			} catch (Exception e) {
				e.printStackTrace();
				jsonmodel.setCode(0);
				jsonmodel.setMsg(e.getMessage());
			}
		}
		return jsonmodel;
	}
}
