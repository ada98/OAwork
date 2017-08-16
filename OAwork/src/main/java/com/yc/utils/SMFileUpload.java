package com.yc.utils;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
/**
 * 测试用
 * @author ada
 *
 */
public class SMFileUpload {
	
	public List<Map<String, String>> Upload(HttpServletRequest request) throws IllegalStateException, IOException{
		List<Map<String, String>> list=new ArrayList<Map<String, String>>();
		 //将当前上下文初始化给  CommonsMutipartResolver （多部分解析器）
		CommonsMultipartResolver multipartResolver=new CommonsMultipartResolver(request.getSession().getServletContext());
		//检查form中是否有enctype="multipart/form-data"
		if(multipartResolver.isMultipart(request)){
			//将request变成多部分request
			MultipartHttpServletRequest multiRequest=(MultipartHttpServletRequest)request;
		   //获取multiRequest 中所有的文件名
			Iterator iter=multiRequest.getFileNames();
			while(iter.hasNext()){
				//一次遍历所有文件
				MultipartFile file=multiRequest.getFile(iter.next().toString());
				if(file!=null)
				{

					Map<String, String> map = new HashMap<String, String>();
					// 取tomcat路径
					Calendar c = Calendar.getInstance();
					String tomcatdir = request.getRealPath("/"); // xxx/xxx/webapps/yc3637web1
					File tomcatFile = new File(tomcatdir);
					File webapppath = tomcatFile.getParentFile(); // xxx/xxx/webapps
					// xxx/xxx/webapps/pic/2017/7
					File picpath = new File(webapppath, "pic" + File.separator + c.get(Calendar.YEAR) + File.separator
							+ (c.get(Calendar.MONTH) + 1) + File.separator);
					// 访问路径名
					String weburl = "../pic/" + c.get(Calendar.YEAR) + "/" + (c.get(Calendar.MONTH) + 1) + "/";
					// 判断目录是否存在，不在则创建
					if (picpath.exists() == false) {
						picpath.mkdirs();
					}
					String filePrefixName = genNewFilePrefixName();
					// 取出原文件的后缀名
					String ext = file.getOriginalFilename();
					String extName=ext.substring(ext.lastIndexOf(".")+1, ext.length());
					// 拼接新的文件名
					String fileName = filePrefixName + "." + extName;
					//  xxx/xxx/webapps/pic/2017/7/xxx.jpgyyyjpg
					weburl += fileName;
					// 物理路径: xxx/xxx/webapps/pic/2017/7/20170720222222.png
					String destFilePathName = picpath + "/" + fileName;
					//String path="E:/springUpload"+file.getOriginalFilename();
					//上传
					file.transferTo(new File(destFilePathName));
					String fieldName=file.getOriginalFilename();   // 163邮箱.png
					String oldFileName=file.getOriginalFilename(); // 文件名
					
					map.put("weburl", weburl);   // url访问地址       ../pic/xx/xxx/xxx/xxx.jpg
					map.put("destFilePathName", destFilePathName);   //   c:\tomcat\webapps/pic/xx
					map.put("fileName", oldFileName);     //    a.jpg
					list.add(map);
				}
			}
		}
		return list;
	}
	
	
	private String genNewFilePrefixName() {
		// 生成新的文件名
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("SSyyyymmddHHmmss");
		String filePrefixName = sdf.format(d); // 文件的前缀名
		return filePrefixName;
	}
	
}
