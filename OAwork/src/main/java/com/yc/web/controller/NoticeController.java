package com.yc.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.Gson;
import com.yc.bean.Notice;
import com.yc.bean.Users;
import com.yc.biz.NoticeBiz;
import com.yc.utils.SMFileUpload;
import com.yc.web.model.JsonModel;
/**
 * @author ada
 */
@RestController
public class NoticeController{
	
	@Resource(name="noticeBizImpl")
	private NoticeBiz noticeBiz;
	
	/*
	 *采用spring提供的上传文件的方法
	 */
	@RequestMapping("/notice/addNotice.action")
	public void  addNotice(Notice notice,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IllegalStateException, IOException, ServletException{
		JsonModel jm=new JsonModel();
		try {
			Users user=(Users) session.getAttribute("user");
			notice.setU_id(user.getU_id());
			SMFileUpload file=new SMFileUpload();
			List<Map<String,String>> list=file.Upload(request);
			notice.setFid(list.get(0).get("weburl"));
			this.noticeBiz.addNotice(notice);
			jm.setCode(1);
			request.getRequestDispatcher("toSuccess.action").forward(request, response);
		} catch (Exception e) {
			jm.setCode(0);
			jm.setMsg(e.getMessage());
			e.printStackTrace();
			request.getRequestDispatcher("toFail.action").forward(request, response);
		}
	}
	
	//批量删除公告
	@RequestMapping("/notice/delNotice.action")
	public JsonModel delNotice(Notice notice,HttpServletRequest req, HttpServletResponse resp,HttpSession session){
		JsonModel jm=new JsonModel();
		
		try {
			this.noticeBiz.batchDelNotice(notice);
			jm.setCode(1);
		} catch (Exception e) {
			jm.setCode(0);
			jm.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return jm;
	}
	
	
	@RequestMapping("/notice/findAllNotice.action")
	public void findAllNotice(Notice notice,HttpServletRequest req, HttpServletResponse resp) throws IOException{
		List<Notice> list = this.noticeBiz.findAllNotice(notice);
		int count = this.noticeBiz.findAllNoticeCount();
		// easyui要求的格式
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("total", count);
		map.put("rows", list);
		this.outJson(map, resp);
		
	}
	
	//ajax前端
	@RequestMapping("/notice/findAllNoticeList.action")
	public JsonModel findAllNoticeLis(Notice notice,HttpServletRequest req, HttpServletResponse resp) throws IOException{
		JsonModel jm=new JsonModel();
		try {
			List<Notice> list = this.noticeBiz.findAllNotice(notice);
			int count = this.noticeBiz.findAllNoticeCount();
			jm.setRows(list);
			jm.setTotal(count);
			jm.setCode(1);
		} catch (Exception e) {
			jm.setCode(0);
			jm.setMsg(e.getMessage());
			e.printStackTrace();
		}
		return jm;
	}
	
	@RequestMapping("/findNoticeBynid.action")
	public void findNoticeBynid(Notice notice,HttpServletRequest req, HttpServletResponse resp,HttpSession session) throws IOException, ServletException{
		notice=this.noticeBiz.findNoticeBynid(notice);
		session.setAttribute("notice", notice);
		req.getRequestDispatcher("WEB-INF/pages/notice/showNotice.jsp").forward(req, resp);
	}
	
	
	
	
	protected void outJson(Object obj,HttpServletResponse resp) throws IOException{
		Gson gson=new Gson();
		String jsonStr=gson.toJson(obj); //gson读取不出泛型数据
		outJsonStr(jsonStr,resp);
	}

	public void outJsonStr(String jsonStr, HttpServletResponse resp) throws IOException {
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out=resp.getWriter();
		out.println(jsonStr);
		out.flush();
		out.close();
	}

	
	
	
	
}
