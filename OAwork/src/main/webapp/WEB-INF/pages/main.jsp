<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>
<title>自动办公平台</title>

<script type="text/javascript">
	$(function(){
		$("#westpanel").panel({
			href:'westpanel.action'
		});
	});
	
</script>

</head>
<body>
	<div class="easyui-layout" style="width:100%;height:850px;">
		<div data-options="region:'north'" style="height:50px">
			
			<input type="button" value="退出" onclick="location.href='index.action'" id="exit"/>
			<li id="hello">  欢迎您:${user.u_name } &nbsp;&nbsp;&nbsp;&nbsp; </li>
		</div>
		<div data-options="region:'west',split:true" title="功能列表" style="width:150px;">
			<div id="westpanel">
				
			</div>
			
		</div>
		<div data-options="region:'center',title:'主操作区',iconCls:'icon-ok'">
			<div id="mainTt" class="easyui-tabs" fit="true" border="false" >
				<div title="首页">这里是首页，会显示通知</div>
			</div>
		</div>
	</div>
</body>
</html>