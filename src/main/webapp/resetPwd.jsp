<%@page contentType="text/html;charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta name="description" content="2017 IEEE国际无人系统大会">
<meta name="keywords" content="2017 IEEE国际无人系统大会">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ICUS2017</title>
<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/flexslider.css">
<link rel="stylesheet" href="<%=path%>/static/css/jquery.fancybox.css">

<link rel="stylesheet" href="<%=path%>/static/css/responsive.css">
<link rel="stylesheet" href="<%=path%>/static/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
<link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/main.css">
<script type="text/javascript">
	var app = {
		ctx : '<%=path%>',
		curl : window.location.href,
		user : {
			id : '${user.id}'/1,
			name : '${user.cnname}'
		},
		register : {
			id : '${register.id}'/1,
      	bmflag : '${register.bmflag}'/1,
			username : '${register.username}',
			email : '${register.email}',
			nickname : '${register.nickname}',
			telphone : '${register.telphone}',
			sex : '${register.sex}',
			job : '${register.job}',
			company : '${register.company}',
			message : '${register.message}'
		},
	    lunwen : {
	      id : '${lunwen.id}'/1,
	      filename:'${lunwen.filename}',
	      comments:'${lunwen.comments}',
	      type:'${lunwen.type}'
	    },
	    nofile : '${param.nofile}',
	    errormsg : '${errormsg}'
	}
</script>
</head>

<body>
<!-- header section -->
<!-- 头部模块 -->
<%@include file="/inc/headbar_en.jsp" %>
<%--<section class="banner nobanner">
  <header id="header" class="fixed">
	<div class="container" style="width:100%;background-color:#000;color:#fff">
		<div class="row" style="max-width:1170px;margin:0 auto;">
			<div class="col-md-12 no-padding">
				<span style="font-size:16px;line-height:30px;">欢迎您！
				<span style="float:right;" id="registerInfo">
					<button class="btn btn-default" onclick="javascript:registerFormFadeIn();">注 册</button>
					<button class="btn btn-warning" onclick="javacript:loginFormFadeIn();">登 录</button>
				</span>
			</div>
		</div>
	</div>
    <div class="header-content clearfix"> <a class="logo" href="#banner">e-Sciences+会议平台</a>
      <nav class="navigation" role="navigation">
        <ul class="primary-nav">
		 <li><a href="index.jsp">首页</a></li>
          <li><a href="index.jsp?position=%23content-3-10">会议简介</a></li>
          <li><a href="index.jsp?position=%23schedule">会议日程</a></li> 
          <li><a href="index.jsp?position=%23gallery">联系方式</a></li>
          <li><a href="index.jsp?position=%23teams">会议地点</a></li>
          <li><a href="index.jsp?position=%23testimonials" onclick="javascript:return validateAuth()">论文提交</a></li>
		  <li><a href="index.jsp?position=%23download">资料下载</a></li>
          <!-- <li><a href="index.jsp?position=%23reback">往届回顾</a></li> -->
        </ul>
      </nav>
      <a href="#" class="nav-toggle">Menu<span></span></a> </div>
  </header>
</section>--%>
<!-- header section --> 
<!-- contact section -->
<section id="contact" class="section">
  	<div class="container login-form">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Security Center</h2>
	        <p class="wow fadeInDown animated"><!-- 即刻登录，管理您的会议资源。 --></p>
    	</div>
    	<div class="row wow fadeInUp animated">
			<form id="resetPwdForm" action="<%=path%>/auth.do?method=resetPwdOK" method="post">
			<input type="hidden" name="regid" value="${regid}" />
				<input type="hidden" name="language" id="language" value="2" />
			<div class="col-sm-8 col-sm-offset-2">
				<div class="alert alert-warning" id="errorMsg">Please reset your service password and keep it in good order</div>
				<div class="inputContainer">
					<label>Email：</label>
					<input type="text" name="regemail" id="reg_email" value="${regemail}" class="form-control" disabled/>
					
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
					<label>Password：</label>
					<input type="password" name="regpwd" id="login_password" value="" class="form-control" autocomplete="off" placeholder="请输入新密码"/>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
					<label>Password：</label>
					<input type="password" name="reregpwd" id="login_repassword" value="" class="form-control" autocomplete="off" placeholder="请再次输入新密码"/>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
        		<button id="btn-resetpwd" type="submit" class="btn btn-primary btn-lg">reset password</button>
			</div>
			</form>
		</div>
  	</div>
</section>
<!-- contact section --> 

<!-- footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<p>Copyright &copy; 2016.<a target="_blank" href="http://www.esciences.com.cn/">  China e-Sciences tech Ltd. </a> technical support.
					<a href="<%=path%>/auth.do?method=logout" target="_blank" title="进入后台管理">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-table fa-stack-1x fa-inverse"></i>
            </span>
					</a></p>
				<p class="social">
					<!-- <a href="#">
                      <span class="fa-stack fa-lg">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                      </span>
                    </a>
                    <a href="#">
                      <span class="fa-stack fa-lg">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                      </span>
                    </a>
                    <a href="#">
                      <span class="fa-stack fa-lg">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
                      </span>
                    </a> -->
				</p>
			</div>
		</div>
	</div>
</footer>
<!-- JS FILES --> 
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/ResourceService.js'></script>
<script src="<%=path%>/static/js/jquery.min.js"></script> 
<script src="<%=path%>/static/js/bootstrap.min.js"></script> 
<script src="<%=path%>/static/js/jquery.flexslider-min.js"></script> 
<script src="<%=path%>/static/js/jquery.fancybox.pack.js"></script> 
<script src="<%=path%>/static/js/retina.min.js"></script> 
<script src="<%=path%>/static/js/modernizr.js"></script> 
<script src="<%=path%>/static/js/main.js"></script> 
<script type="text/javascript" src="<%=path%>/static/js/jquery.contact.js"></script>

<script type="text/javascript">
	$(function(){
		$('#btn-resetpwd').off('click').on('click',function(e){
			if(!$('#login_password').val()){
				$('#errorMsg').html('请输入新密码！');
				return false;
			}
			if(!$('#login_repassword').val()){
				$('#errorMsg').html('请输入确认密码！');
				return false;
			}
			if($('#login_password').val()!=$('#login_repassword').val()){
				$('#errorMsg').html('两次密码输入不一致！');
				return false;
			} else {
				$('#resetPwdForm').submit();
			}
		});
	});
</script>
</body>
</html>