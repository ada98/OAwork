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
	
	$(function(){
		gopage(1);
	});	
	
	function gopage(pages){
		$.ajax({
			type:"post",
			data:"pages="+pages,
			url:"notice/findAllNoticeList.action",
			dataType:"json",
			success:function(data){
				if(data.code== 1){
					$("#noticeTree").html("");
					var str = "";
					$(data.rows).each(function(index,item){		
						str+="<li style='padding:5px 5px '><span style='float:right;'>"+item.n_time+"</span><a href='findNoticeBynid.action?&n_id="+item.n_id+"' target='_blank'>"+item.n_title+"</a></li>";
					});
					$("#noticeTree").html(str);
					$.createPageBar(data,"pagebardiv");
				}else{
					alert("查询失败！原因"+data.msg);
				}
			}
		});
	}
	
	
</script>

<link rel="stylesheet" type="text/css" href="css/index.css">

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
				<div title="首页">
					<div id="noticeList" class="easyui-panel" title="公告列表" style="width:500px;height:200px;" data-options="maximizable:true,closable:true">
						<ul id="noticeTree"></ul>
						<div id="pagebardiv" style="float:right;"></div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
</body>
</html>