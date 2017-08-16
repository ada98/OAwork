<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公告</title>
</head>
<body>
	<h1 style="text-align:center">${notice.n_title }</h1>
	<li>
		<span style="float:right">时间:${notice.n_time }&nbsp; &nbsp;&nbsp;&nbsp;</span>
		<span style="float:right">发布人：${notice.u_name }&nbsp; &nbsp;&nbsp;&nbsp;</span>
		<span style="float:right">发布部门：${notice.d_name}&nbsp; &nbsp;&nbsp;&nbsp;</span>
	</li>
	
	<li >内容：${notice.n_content }</li>
	
	<c:if test="${notice.n_file}!=null">
		附件：${notice.n_file}
	</c:if>
	
</body>
</html>