<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../head.jsp" %>
<title>公告列表</title>
</head>
<style>
	.textbox{
		height:20px;
		margin:0;
		padding:0 2px;
		box-sizing:content-box;
	}
</style>

<script type="text/javascript">
	

$(function (){
	//用来条件查询
	obj={
		search:function(){
			$('#NoticeTable').edatagrid('load',{
				n_title:$.trim($('input[name="n_title"]').val()),//在分页数据后传给后端
				date_from:$.trim($('input[name="date_from"]').val()),//在分页数据后传给后端
				date_to:$.trim($('input[name="date_to"]').val())//在分页数据后传给后端
			});
		},add:function(){
			$('#dlg').dialog('open').dialog('center').dialog('setTitle','发布通知');
			
		},
		remove:function(){  //TODO:复选框不起作用
			var rows=$("#NoticeTable").datagrid('getSelections');
			if(rows.length>0){
				$.messager.confirm('确定操作','您要删除所选中的记录吗？',function(flag){
					if(flag){
						var ids=[];
						for(var i=0;i<rows.length;i++){
							ids.push(rows[i].n_id);
						}
						//console.log(ids.join(','));
						$.ajax({
							type : "post",
							url : "notice/delNotice.action",
							data : "ids="+ids,
							dataType : "json",
							success : function(data) {
								if (data.code == 1) {
									alert("删除成功！");
									location.href = "notice/toNoticeList.action";
								} else {
									alert("删除失败，原因：" + data.msg);
								}
							}
						});
					}
				});
			}else{
				$.messager.alert('提示','请选择要删除的记录','info');
			}
			
		}
	};
	
	$('#NoticeTable').edatagrid({
		url:'notice/findAllNotice.action',	//查询时加载的url
		pagination: true, //显示分页
		pageSize:5, //默认分页的条数
		pageList:[5,10,15,20,25,30,35,40,45,50,100,200,500],//可选分页条数
		fitColumns:true,//自适应列
		fit:true,//自动补全
		title:"公告列表", //名字并没有被修改
		idField:"nid",//标识，会记录我们选中的一行的id，不一定是id,通常都是主键
		rownumbers:"true",//显示行号
		nowrap:"true",//不换行显示
		sortName:"n_time",//排序的列，这个参数会传递到后台的servlet上，所以要有后台对应的接收
		sortOrder:"desc",//排序方式
		singleSelect:true,
		toolbar:"#db",
		remoteSort:true,
		multiSort:true,
		
		//以上的四种增删改查操作，只要失败，都会回调这个onError
		onError:function(a,b){
			$.messager.alert("错误","操作失败");
		},
		//用来给表格内容处理
		rowStyler: function(index,row){
			//console.log(row);
			if(row.n_id%2==0){
				return 'background-color:orange';
				
			}
		},		
		columns:[[{
			field: 'n_id',
			title: '公告编号',
			width: 50,
			sortable:true,
			checkbox:true,
			formatter:function(value,rowData,rowIndex){
				return value;
			}
		},{
			field: 'n_title',
			title: '标题',
			width: 50,
			align: 'center'
		},{
			field: 'n_content',
			title: '内容',
			width: 200,
			align: 'center'
		},{
			field: 'u_name',
			title: '姓名',
			width: 50,
			align: 'center'
		},{
			field: 'd_name',
			title: '部门',
			width: 50,
			align: 'center'
		},{
			field: 'n_time',
			title: '时间',
			width: 50,
			align: 'center',
			sortable:true
		}]],
		onRowContextMenu: function(e,rowIndex,rowData){
			$('#menu').menu('show',{
				left:e.pageX,
				top:e.pageY
			});
			alert(111);
			e.preventDefault();
		}
	
	});
});	


	
	//日期组件
	function myformatter(date){
	    var y = date.getFullYear();
	    var m = date.getMonth()+1;
	    var d = date.getDate();
	    return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
	}
	        
	function myparser(s){
	    if (!s) return new Date();
	    var ss = (s.split('-'));
	    var y = parseInt(ss[0],10);
	    var m = parseInt(ss[1],10);
	    var d = parseInt(ss[2],10);
	    if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
	        return new Date(y,m-1,d);
	    } else {
	        return new Date();
	    }
	}
	//页面加载
	$(function(){
		//设置时间
		var curr_time = new Date();  
		$("#date_from").datebox("setValue",myformatter(curr_time));
		$("#date_to").datebox("setValue",myformatter(curr_time));
		//获取时间
		
		var beginTime=$("#date_from").datebox("getValue");
		var endTime=$("#date_to").datebox("getValue");
		
	});
	
	
	
/* 	var editFlag=undefined;//设置一个编辑标志
	function edit(){
		//选中一行进行编辑
		var rows=$("#NoticeTable").datagrid('getSelections');
		if(rows.length==1){//选中一行的话触发事件
			//如果当前状态为编辑状态，则退出编辑状态
			if(editFlag!=undefined){	
				$("#NoticeTable").datagrid('endEdit',editFlag); //结束编辑，传入之前编辑的行
			}
			if(editFlag==undefined){
				var index=$("NoticeTable").datagrid('getRowIndex',rows[0]); //获取选定行的索引
				$('#NoticeTable').datagrid('beginEdit',index);  //开启编辑并传入要编辑的行
				editFlag=index;
			}
		}
	} */
</script>

<body>
	<table id="NoticeTable"></table>
	<div id="db" style="padding:5px;">
		<div style="margin-bottom:5px;">
			<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-add" onclick="obj.add()">添加</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-edit" onclick="edit()">修改</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-search" onclick="save()">详情</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-remove" onclick="obj.remove();">删除</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" plain="true" iconCls="icon-reload" onclick="location.href='notice/toNoticeList.action'">刷新</a>
		</div>
		<div style="padding:0 0 0 7px;color:#3333;">
			查询公告：<input type="text" class="textbox" name="n_title" style="width:110px"/>
			起始时间：<input id="date_from" type="text" name="date_from" class="easyui-datebox" style="width:110px" data-options="formatter:myformatter,parser:myparser"/>
			截止时间：<input id="date_to" type="text" name="date_to" class="easyui-datebox" style="width:110px" data-options="formatter:myformatter,parser:myparser"/>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-search" onclick="obj.search();">查询</a>
		</div>
	</div>
	
	<%--弹窗Start --%>
	<div id="dlg" class="easyui-dialog" style="width:600px; height:600px;padding: 10px 20px" closed="true" buttons="#dlg-buttons">
		<form id="fm" method="post" vovalidate>
			<div>
				<label>标题:</label>
				<input id="n_title" class="textbox" required="true" style="width:70%;">
			</div>
			<div>
				<label>公告内容:</label>
				<textarea class="ckeditor" name="n_content" style="width:50%"></textarea><br/>
			</div>
			<div>
				<label>级别：</label>
				<select name="n_weight" label="级别" style="width:20%"><option value="0">一般</option><option value="1">重要</option><option value="2">紧急</option>
			</div>
			
		</form>
		
		<div id="dlg-buttons"><!-- TODO:这里不显示按钮 -->
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-ok" onclick="" >save</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">cancel</a>
		</div>
	</div>
	
	
	<%--弹窗end --%>
	
	<%--右击菜单 --%> <%-- TODO:这里不显示菜单 --%>
	<div id="menu" class="easyui-menu" style="width:120px;display:none">
			<div  iconCls="icon-add"    onclick="add()">添加</div>
			<div  iconCls="icon-edit"   onclick="edit()">修改</div>
			<div  iconCls="icon-search" onclick="save()">详情</div>
			<div  iconCls="icon-remove" onclick="obj.remove();">删除</div>
			
	</div>
</body>
</html>