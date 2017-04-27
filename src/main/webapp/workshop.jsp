<%@page contentType="text/html;charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
  System.out.println(request.getParameter("position"));
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
<meta name="description" content="第八届全国地图学与地理信息系统学术大会">
<meta name="keywords" content="第八届全国地图学与地理信息系统学术大会,第八届,全国,地图学,地理,信息系统,学术大会">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ICUS2017</title>
<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/flexslider.css">
<link rel="stylesheet" href="<%=path%>/static/css/jquery.fancybox.css">
<link rel="stylesheet" href="<%=path%>/static/css/main.css">
<link rel="stylesheet" href="<%=path%>/static/css/responsive.css">
<link rel="stylesheet" href="<%=path%>/static/css/animate.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/countdown/jcountdown.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
<link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
<link href="<%=path%>/static/css/timeTo.css" type="text/css" rel="stylesheet"/>
</head>

<body>
		<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!--
						<a class="navbar-brand" href="#topWrap">
							<span class="fa-stack fa-lg">
								<i class="fa fa-circle fa-stack-2x"></i>
								<i class="fa fa-cloud fa-stack-1x fa-inverse"></i>
							</span>
							e-Sciences+<span class="title"> 会议平台</span>
						</a>
						-->
					</div>
					<div class="collapse navbar-collapse appiNav">
						<ul class="nav navbar-nav">
							<li><a href="index.jsp">Home</a></li>
							<li><a href="callForPapers.jsp">Call For Papers </a></li>
							<li><a href="#Workshop">Workshop</a></li>
							<li><a href="#Keynote Speakers">Keynote Speakers</a></li>
							<li><a href="#Invited Sessions">Invited Sessions</a></li>
							<li><a href="#Paper Submission">Submission</a></li>
							<li><a href="committee.jsp">Committee</a></li>
							<li><a href="#Download">Download</a></li>
							<li><a href="#Venue">Venue</a></li>
							<li style="position:absolute;right:100px;top:10px;">								
								<button class="btn btn-primary" onclick="javascript:registerFormFadeIn();">Register</button>
								<button class="btn btn-primary" onclick="javacript:loginFormFadeIn();">Sign in</button						
							</li>
							
						</ul>
					</div><!--/.nav-collapse -->
				</div>
			</div>
			 <div class="banner" id="Home">
				<p style="position: relative;margin:150px auto 0px;text-align:center;color: white;font-size: 35px;z-index: 1;">The 2017 International Conference on Unmanned Systems </p>
				<p style="position: relative;margin:30px auto;text-align:center;color: white;font-size: 35px;z-index: 1;">(ICUS 2017)</p>
            <ul class="cb-slideshow">
                <li><span>Image 01</span>
                 </li>
                <li><span>Image 02</span>
                </li>
                <li><span>Image 03</span>
                </li>
                <li><span>Image 04</span>
                </li>
                <li><span>Image 05</span>
                </li>
                <li><span>Image 06</span>
                </li>
            </ul>
        </div>
	<hr>
    <section id="Schedule" class="video-section">
		<div class="col-md-12 col-xs-12" style="padding-top:80px;">
		  <h3 class="text-center">
			<b>Schedule</b>
		  </h3>
		</div>
         <div class="container">
			<p>&nbsp;&nbsp;<b>October 27, 2017 (Friday)</b></p>
				<p class="editContent text-center">
					<table class="table table-bordered table-hover table-striped">
						
						<tr>
							<td>13:00-19:00	</td>						
							<td>Onsite Registration (BIT International Education Exchange Center) </td>
						</tr>
						<tr>
							<td rowspan="3" style="vertical-align:middle">14:00-18:00</td>
							<td>Workshops</td>
						</tr>
						<tr>
							<td>Seminar 1: Deep Reinforcement Learning for Unmanned SystemsSpeaker: Prof. Xin Xu</td>
						</tr>
						<tr>
							<td>Seminar 2: Coming soon</td>
						</tr>
					</table>
				</p>
			<h4>Workshops</h4>
			<p>&nbsp;&nbsp;Seminar 1: Deep Reinforcement Learning for Unmanned Systems</p>
			<p>&nbsp;&nbsp;Invited Speaker: Prof. Xin Xu,</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;National University of Defense Technology, China</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Web: www.jilsa.net/xinxu.html email: xinxu@nudt.edu.cn </p>
			<p>&nbsp;&nbsp;<b>Brief Biography of the Invited Speaker: </b></p>
			<p>&nbsp;&nbsp;Prof. Xin Xu received the B.S. degree in electrical engineering from the Department of Automatic Control, National University of Defense Technology (NUDT), Changsha, P. R. China, in 1996 and the Ph.D. degree in control science and engineering from the College of Mechatronics and Automation (CMA), NUDT. He has been a visiting scientist for cooperation research in the Hong Kong Polytechnic University, University of Alberta, University of Guelph, Russian Academy of Sciences and the University of Strathclyde, respectively. Currently, he is a full Professor with the College of Mechatronics and Automation, NUDT. </p>
			<p>&nbsp;&nbsp;His main research areas include: reinforcement learning and approximate dynamic programming, learning control, robotics and intelligent vehicles, machine learning and data mining. He has coauthored four books and published more than 150 papers in international journals and conferences. He is the founding co-Editor-in-Chief of Journal of Intelligent Learning Systems and Applications (with Prof. Haibo He) and the founding associate Editor-in-Chief of CAAI Transactions on Intelligence Technology. He has served as an Associate Editor or Guest Editor of Information Sciences, IEEE Transactions on Systems, Man and Cybernetics: Systems, International Journal of Adaptive Control and Signal Processing, International Journal of Social Robotics, Intelligent Automation and Soft Computing, Acta Automatica Sinica.</p>
			<p>&nbsp;&nbsp;Prof. Xu is one of the recipients received the 2nd class National Natural Science Award of China in 2012, the 1st class Natural Science Award from Hunan Province, P. R. China, in 2009 and the Fork Ying Tong Youth Teacher Fund of China in 2008. He is a Senior Member of IEEE, a Committee Member of the IEEE Technical Committee on Approximate Dynamic Programming and Reinforcement Learning (ADPRL) and the IEEE Technical Committee on Robot Learning. 
			</p>
			<p>&nbsp;&nbsp;<b>Seminar 2:</b></p>
			<p>&nbsp;&nbsp;Invited Speaker: s</p>
			</div>
		</section>
    <!-- package section -->
    <!-- gallery section -->
	<hr>
    <!-- footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <p>Copyright &copy; 2016.<a target="_blank" href="http://www.esciences.com.cn/"> China e-Sciences tech Ltd. </a> technical support.
                        <a href="<%=path%>/auth.do?method=logout" target="_blank" title="进入后台管理">
                            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x"></i>
              <i class="fa fa-table fa-stack-1x fa-inverse"></i>
            </span>
                        </a>
                    </p>
                    <p class="social">
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
	<script src="<%=path%>/static/js/jquery-1.8.2.min.js"></script>
	<script src="<%=path%>/static/js/jquery.jcountdown.min.js"></script>
    <!--<script src="<%=path%>/static/js/jquery.time-to.js"></script>   -->
    <script src="<%=path%>/static/js/main.js"></script>
    <script type="text/javascript" src="<%=path%>/static/js/jquery.contact.js"></script>
	<script>
		var timer;
    $(window).bind('scroll',function () {
        clearTimeout(timer);
        timer = setTimeout( refresh , 50 );
    });
    var refresh = function () {
		if ($(window).scrollTop()>100) {
			$(".tagline").fadeTo( "slow", 0 );
		}
		else {
			$(".tagline").fadeTo( "slow", 1 );
		}
    };
	$('a[href*=#]:not([href=#])').click(function() {
		if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') || location.hostname == this.hostname) {
			var target = $(this.hash);
			target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			if ($(window).width() < 768) {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}
			else {
				if (target.length) {
					$('html,body').animate({
						scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
					}, 1000);
					return false;
				}
			}

		}
	});

	var hash = '${param["position"]}';
	if(hash){
		var target = $('#'+hash);
		if ($(window).width() < 768) {
			if (target.length) {
				$('html,body').animate({
					scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) + 1
				}, 1000);
			}
		}
		else {
			if (target.length) {
				$('html,body').animate({
					scrollTop: target.offset().top - $('.navbar').outerHeight(true) + 1
				}, 1000);
			}
		}
	}
	</script>
</body>

</html>