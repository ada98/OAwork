<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="yc" uri="http://www.hyycinfo.com" %> 

<%
	String path=request.getContextPath(); 
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath %>">


<script type="text/javascript" src="js/jquery-1.9.1.js" charset="utf-8"></script>  <!-- 必须放在第一句执行 -->
<link rel="stylesheet" type="text/css" href="easyui15/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui15/themes/icon.css">

<script type="text/javascript" src="easyui15/jquery.min.js"></script>
<script type="text/javascript" src="easyui15/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui15/jquery.edatagrid.js"></script>
<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="js/ycPageBar.js"></script>
