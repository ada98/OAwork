<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/javascript">
	$(function() {
		var treeData = [ {
			"text" : "类别管理",
			"children" : [
					{
						"text" : "发送公文",
						"attributes" : {
							"url":"<iframe height=100% width=100% src='todocument.action' />", 
						}
					},
					{
						"text" : "接收公文",
						"attributes" : {
							"url":"<iframe height=100% width=100% src='todocumentreceive.action' />",
						}
					} ,{
						"text":"公文列表",
						"attributes" : {
							"url":"<iframe height=100% width=100% src='todocumentsend.action' />", 
						}
					}]
		} ];

		showTree("documentTypeTree", treeData);
	});

	$(function() {
		var treeDataNews = [ {
			"text" : "内部通讯",
			"children" : [
					{
						"text" : "发送消息"
					},
					{
						"text" : "接收消息"
					},{
						"text" : "消息列表"
					} ]
		} ];
		showTree("messageTypeTree", treeDataNews);
	});

	function openTab(node) { //明明是两个不同的界面，为什么可以调main.jsp的id
		if ($("#mainTt").tabs("exists", node.text)) {
			$("#mainTt").tabs("select", node.text);
		} else {
			$("#mainTt").tabs("add", {
				title : node.text,
				selected : true,
				closed : true,
				closable:true,
				content : node.attributes.url
			})
		}
	}

	//显示树
	//要显示的树
	function showTree(treeId, data) {
		$("#" + treeId).tree({
			data : data, //将这里改成： url:"right.action" 这个地址会得到treeDATE这样的json字符串
			onClick : function(node) {
				//alert(node.text);
				if (node.attributes) {
					//alert(node.attributes.url);
					openTab(node);
				}
			}
		});
	}
</script>


<div class="easyui-accordion" style="width: 100%; height: 670px;">
	<div title="公文管理" style="overflow: auto; padding: 10px;">
		<ul id="documentTypeTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true,closable:true">
		</ul>
	</div>
	<div title="短消息" style="overflow: auto; padding: 10px;">
		<ul id="messageTypeTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true">
		</ul>
	</div>
	<div title="公告" style="overflow: auto; padding: 10px;">
		<ul id="noticeTypeTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true">
		</ul>
	</div>
	<div title="人事管理" style="overflow: auto; padding: 10px;">
		<ul id="userTypeTree" class="easyui-tree" data-options="animate:true,state:closed,fit:true">
		</ul>
	</div>
	
</div>   
    