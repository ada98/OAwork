<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<title>发送消息</title>
</head>
<body>
<script type="text/javascript">
	/* 1.首先，先加载所有部门
		2.当部门变动时，人员列表也会随之变动
		3.当点击添加时，会在接收人处
	*/

</script>

	<div>
		<form id="addMessage" action="" method="post" enctype="multipart/form-data">
			接收人：<select name="department" id="department"></select><select name="users" id="users"></select>	
			    <input name="add" id="add" value="增加" type="button">
			    <input name="AllAdd" id="AllAdd" value="部门群发" type="button">
			    <br/>
			  接收人：<input name="" type="text"><br/>
			  标题：<input name="" type="text"><br/>
			 内容：<textarea class="ckeditor" name="n_content" style="width:80%"></textarea><br/>
			 附件：<input value="附件" type="file">
			 <input value="发送" type="submit">
		</form>
		
	</div>
</body>
</html>