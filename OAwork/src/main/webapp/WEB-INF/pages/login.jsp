<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<base href="<%=basePath%>">
<meta charset="utf-8">
<title>用户登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/login.css">
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/common.js"></script>

<script>
	$(function(){ 
		$(".container").css("position","fixed").css("top",($(window).height()-$(".container").height())/2)
		.css("left",($(window).width()-$(".container").width())/2);
		
		$('.close-button').click(function(){
			$(this).parent().removeClass("slidePageInFromLeft").addClass("slidePageBackLeft");
		});
		
		$(window).resize(function(){
			$(".container").css("position","fixed").css("top",($(window).height()-$(".container").height())/2)
			.css("left",($(window).width()-$(".container").width())/2);
		});
	});
	
	function login(id,role) {
    	var flag = $("#"+id).text();
    	$("#"+role).val(flag);
	}
	
	function showRegisterPage(){
		$(".register-page").addClass("slidePageInFromLeft").removeClass("slidePageBackLeft");
	}
	
	function backlogin(){
		$(".register-page").removeClass("slidePageInFromLeft").addClass("slidePageBackLeft");
	}
		
	$(function(){
		$("#inputbutton").click(function(){
			$.ajax({
				type:"POST",
				data:$("#myform").serialize(),
				url:"login.action",
				dataType:"JSON",
				success:function(data){
					//alert(1111);
					if(data.code==1){
						 location.href="toMain.action";
					}else{
						alert("登录失败！原因:"+data.msg);
					} 
				}
			});
		});	
	});
	
</script>
</head>

<body>
	<div class="container">
		<div class="row">
            <div class="col-md-5 col-md-offset-3">
            	<div class="panel">
                	<div class="panel-heading login-top">用户登录</div>
                    <div class="panel-body">
                    	<form id="myform" class="form-group col-lg-10 col-md-offset-1" action="login.action" method="post" role="form">
                            <input type="hidden" name="op" value="login"/>
                            <div class="input-group">
                            	<label for="u_name" class="input-group-addon">用户名</label>
                                <input type="text" class="form-control" name="u_name" id="u_name" required placeholder="请输入用户名"/>
                            </div>
                            <br />
                            <div class="input-group">
                            	<label for="u_pwd" class="input-group-addon">密&nbsp;&nbsp;&nbsp;码</label>
                                <input type="password" class="form-control" name="u_pwd" id="u_pwd" required  placeholder="请输入密码"/>
                            </div>
                            <br />
                            <div class="input-group">
                            	<label for="vcode" class="input-group-addon">验证码</label>
                                <input type="text" class="form-control" name="vcode" id="vcode" required placeholder="请输入右边的验证码"/>
                                <label class="input-group-btn"><img src="image.jsp" onclick="changeVilidateCode(this)"/></label>
                            </div>
                            <br/>
                            <div class="input-group">
                            	<input type="button" value="登陆" id="inputbutton" class="btn btn-success mybtn"/>
                                <input type="reset" value="重置" class="btn btn-warning mybtn"/>
                            </div>
                            <div class="error"></div>
                		</form>
                    </div>
                    <div class="panel-footer login-footer">源辰信息 &copy; 版权所有</div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
	</div>
</body>
</html>
