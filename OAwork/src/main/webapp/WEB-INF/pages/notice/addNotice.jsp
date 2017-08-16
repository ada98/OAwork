<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="javax.servlet.jsp.PageContext"%>
<%@ include file="../head.jsp" %>
<title>发布公告</title>
</head>
<body>
	<div style="width:100%;max-width:800px;padding:30px 60px;">
		<form name="Form2" action="notice/addNotice.action" method="post"  enctype="multipart/form-data">
			标题：<input type="text" name="n_title"><br/>
			内容: &nbsp;&nbsp;&nbsp;&nbsp;<textarea class="ckeditor" name="n_content" style="width:80%"></textarea><br/>
			级别：&nbsp;&nbsp;&nbsp;&nbsp;<select name="n_weight" label="级别" style="width:20%"><option value="0">一般</option><option value="1">重要</option><option value="2">紧急</option><br/>
			<li>附件：<li><br/>
			<li><input type="file" name="file" ><br/></li><br/>
			<input type="submit" value="发布"/>
		</form>
	</div>
    
     

</body>
</html>