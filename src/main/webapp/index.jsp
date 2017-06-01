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
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ICUS2017</title>

	<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/flexslider.css">
	<link rel="stylesheet" href="<%=path%>/static/css/jquery.fancybox.css">
	<link rel="stylesheet" href="<%=path%>/static/css/responsive.css">
	<link rel="stylesheet" href="<%=path%>/static/css/animate.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/countdown/jcountdown.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
	<link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
	<link href="<%=path%>/static/css/timeTo.css" type="text/css" rel="stylesheet"/>
	<link rel="stylesheet" href="<%=path%>/static/css/main.css?v=2">
	<script type="text/javascript">
        var app = {
            ctx : '<%=path%>',
            curl : window.location.href,
            maodian : '${position}'||'${param["position"]}'||(window.location.href.substr(window.location.href.lastIndexOf('#')))||'#header',
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
                message : '${register.message}',
                sfbg : '${register.sfbg}',
                sfkc : '${register.sfkc}',
                sfzs : '${register.sfzs}'
            },
            lunwen : {
                id : '${lunwen.id}'/1,
                filename:'${lunwen.filename}',
                comments:'${lunwen.comments}',
                type:'${lunwen.type}'
            },
            nofile : '${param.nofile}',
            language:2
        }
	</script>
</head>
<body>
<!-- header section -->
<!-- 头部模块 -->
<%@include file="/inc/headbar_en.jsp" %>
<%--<div class="navbox-wap">
    <div class="navbar navbar-inverse" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse appiNav">
                    <ul class="nav navbar-nav">
                        <li><a href="#Home">Home</a></li>
                        <li><a href="#callForPapers">Call For Papers </a></li>
                        <li><a href="#workshop">Workshop</a></li>
                        <li><a href="#Keynote_Speakers">Keynote Speakers</a></li>
                        <li><a href="#Invited_Sessions">Invited Sessions</a></li>
                        <li><a href="#Submission">Submission</a></li>
                        <li><a href="#committee">Committee</a></li>
                        <li><a href="#Fee">Fee</a></li>
                        <li><a href="#Download">Download</a></li>
                        <li><a href="#Venue">Venue</a></li>
                        <li id="registerInfo">
                            <div class="btn-group">
                            <button class="btn btn-primary" onclick="javascript:registerFormFadeIn();" style="padding:1px 8px;">Register</button>
                            <button class="btn btn-warning" onclick="javacript:loginFormFadeIn();" style="padding:1px 8px;">Sign in</button>
                            <button class="btn btn-danger" onclick="javascript:indexCn();" style="padding:1px 14px;"> CN </button>
                            </div>
                        </li>
                        <div class="clear"></div>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>

</div>
</div>--%>
<!-- header section -->
<div class="banner" id="Home">
	<p class="titleInfo">The 2017 IEEE International Conference on Unmanned Systems </p>
	<p class="titleInfo_1">(IEEE ICUS2017)</p>
	<p class="condate">Oct.27-29,2017 &nbsp;&nbsp;&nbsp;<span class="bjchina">Beijing,China</span> </p>
	<p style="position: relative;margin:30px auto;text-align:center;color: white;font-size: 35px;z-index: 1;"></p>
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
        <li><span>Image 07</span>
        </li>
        <li><span>Image 08</span>
        </li>
	</ul>
</div>
<!-- intro section -->
<!-- <section id="intro" class="section intro" style="padding:50px 0px 50px 0px;">
  <div class="container">
    <div class="col-md-12 text-center">
      <h3>科技会议管理平台介绍</h3>
      <p>科技会议管理平台（SCMP）作为一站式科技会议管理平台，致力于为科技会议的主办方提供会议信息化的解决方案。科技会议管理平台具有网站信息发布、会议注册、用户管理、论文提交、酒店预订、在线支付等主要功能。除此之外，公司还开展了网站定制、视频及课件制作、在线直播等业务，我们力争为广大用户提供一流的学术会议网站建设服务及会务组织全程服务。</p>
    </div>
  </div>
</section> -->
<!-- intro section -->
<!--About-->
<!-- <section id="content-3-10" class="content-block data-section nopad content-3-10">-->
<section class="content-block data-section nopad" style="background-color:white;">
	<!-- <div class="image-container col-sm-6 col-xs-12 pull-left fadeInLeft animated">
        <div class="background-image-holder">

        </div>
    </div> -->
	<div class="container" style="background-color:white;">
		<div class="row">
			<div class="col-md-12 col-xs-12">
				<h3 class="text-center">
					<img src="static/images/logo1.png" width='180' height='160' style="margin-right:0px;">
					<img src="static/images/logo2.png" width='160' height='160' style="margin-left:0px;">
					<img src="static/images/IEEE.png" class="img3" width="400" height="160" style="margin-right:0px;">
				</h3>

				<!-- <img src="static/images/logo1.png" width='180' height='160' style="margin-right:130px;">
                   <img src="static/images/logo2.png" width='160' height='160' style="margin-left:150px;">
                 -->
			</div>
			<div class="col-md-12 col-xs-12">

				<h3 class="text-center">
					<b>Welcome to IEEE ICUS2017 !</b>
				</h3>
			</div>
			<div class="col-sm-12 col-xs-12 content fadeInLeft animated" style="padding-top:0px;background-color:white;">
				<div class="editContent">
					<!--<h4 class="text-center">Welcome to IEEE ICUS2017.<h4> -->
					<p>The 2017 IEEE International Conference on Unmanned Systems (IEEE ICUS2017) is approved by China Association for Science and Technology (CAST) and will be held by Chinese Institute of Command and Control (CICC), Beijing Institute of Technology (BIT) and American Institute of Electrical and Electronics Engineers (IEEE) from October 27th to 29th in Beijing, China. </p>
					<p>ICUS provides an international forum for professionals, academics, and researchers over the world to present latest developments about academic and technical issues related to unmanned systems. The theme for the conference in 2017 is “Development and Application of Unmanned Systems in Era of Artificial Intelligence". It particularly welcomes those internationally renowned scholars as well as enterprises at home and aboard to do relevant reports and product display respectively. Forms as group discussion，oral presentation and post presentation, etc. are also included in this conference. </p>
					<p>Please refer to Call for Paper for more details on conference topics.</p>
					<p>Accepted high-quality papers will be recommended to special issue papers in International Journal of Robotics and Automation (SCI-indexed), International Journal of Modeling Identification and Control (EI-indexed) and CAAI Transactions on Intelligence Technology (Elsevier). If you have any query on the submission issue, please email to the Conference Secretariat (icus2017@163.com) directly. </p>
				</div>
				<!--<a href="#services" class="btn btn-lg btn-default" id="services">details</a> -->
			</div>
			<!-- <div class="col-md-6 col-xs-12 fadeInRight animated">
                <ul class='timeline'>
                  <li class="year first"><i class="fa fa-clock-o" style="font-size:50px;"></i></li>
                  <li class='event event-red offset-first'>
                    11月25日<br/>(全天)<br/>代表报到
                  </li>
                  <li class='event event-grey' href="#">
                    11月26日<br/>(上午)<br/>大会开幕式
                  </li>
                  <li class='event event-blue' href="#">
                    11月26日<br/>(下午)<br/>学术会议
                  </li>
                  <li class="event event-green">
                    11月27日<br/>(全天)<br/>学术会议
                  </li>
                  <li class="event event-yellow">
                    11月28日<br/><br/>调研考察
                  </li>
                  <li class="year last">圆满<br/>闭幕</li>
                </ul>
            </div> -->
		</div>
		<!-- /.row-->
	</div>
	<!-- /.container -->
</section>
<!-- services section -->
<hr>
<!-- package section -->

<section id="callForPapers" class="video-section">
	<div class="col-md-12 col-xs-12">
		<h3 class="text-center">
			<b>Call For Papers</b>
		</h3>
	</div>
	<div class="container">
		<h4>★ Scope for Papers</h4>
		<p>The 2017 IEEE International Conference on Unmanned Systems (IEEE IEEE ICUS2017) will be held from October 27th to 29th in Beijing, China. The conference offers a unique and interesting platform for scientists, engineers and practitioners throughout the world to present and share their most recent research and innovative ideas in the areas of unmanned systems, robotics, automation, and intelligent systems. The aim of the IEEE ICUS2017 is to stimulate researchers active in the areas pertinent to intelligent unmanned systems.
		</p>
		<p>The topics of interests include, but are not limited to:</p>
		<p>1. Unmanned Aerial Vehicles</p>
		<p>2. Unmanned Ground Vehicles</p>
		<p>3. Unmanned Underwater Vehicles</p>
		<p>4. Unmanned System Command and Control</p>
		<p>5. Sensing, Navigation and Control</p>
		<p>6. Cooperative Control of Unmanned Systems</p>
		<p>7. Unmanned System Dynamics</p>
		<p>8. Unmanned System Modeling and Simulation</p>
		<p>9. Artificial Intelligence and Intelligent Systems</p>
		<p>10. Robotic Systems</p>
		<p>11. Bionic Technology</p>
		<p>12. New Concept Unmanned Systems</p>
		<p>13. Other Related Technologies for Unmanned Systems</p>
		<p>Accepted high-quality papers will be recommended to special issue papers in International Journal of Robotics and Automation (SCI-indexed), International Journal of Modeling Identification and Control (EI-indexed) and CAAI Transactions on Intelligence Technology (Elsevier). If you have any query on the submission issue, please email to the Conference Secretariat (icus2017@163.com) directly.
		</p>
		<table class="table table-bordered table-hover table-striped">
			<tr>
				<td class="text-center" style="color:red;">Deadline for manuscript paper submission:</td>
				<td class="text-center" style="color:red;">July 1, 2017</td>
			</tr>
			<tr>
				<td class="text-center" style="color:red;">Notification of acceptance:</td>
				<td class="text-center" style="color:red;">Aug. 15, 2017</td>
			</tr>
			<tr>
				<td class="text-center" style="color:red;">Submission of camera-ready:</td>
				<td class="text-center" style="color:red;">Aug. 30, 2017</td>
			</tr>
			<tr>
				<td class="text-center" style="color:red;">Deadline for early bird registration:</td>
				<td class="text-center" style="color:red;">Sep. 15, 2017</td>
			</tr>
			<tr>
				<td class="text-center" style="color:red;">Conference:</td>
				<td class="text-center" style="color:red;">Oct. 27-29, 2017</td>
			</tr>
		</table>
		<h4>★ Special and Invited Sessions</h4>
		<p>The conference will feature Special and invited sessions on new topics and innovative applications. These sessions will consist of 8-10 articles and undergo a regular review process. Prospective organizers should include a brief statement of purpose for the session as well as the abstracts of the papers.</p>
		<h4>★ Submissions & Publication</h4>
		<p>Please prepare your paper in English using the IEEE Template. LaTeX style, Microsoft Word style.</p>
		<p>Please submit the first draft of your paper in PDF format through the website. A maximum of 6 pages per first draft are permitted. Papers should describe original and unpublished work on the above or the related topics. All manuscripts will be reviewed by three members of the international program committee. Instructions for preparation and electronic submission is available on the website.</p>

		<p><b>October 27, 2017 (Friday)</b></p>
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

	</div>
</section>
<hr>
<section id="workshop" class="video-section">
	<div class="col-md-12 col-xs-12">
		<h3 class="text-center">
			<b>Workshop</b>
		</h3>
	</div>
	<div class="container">
		<p>Seminar 1: Deep Reinforcement Learning for Unmanned Systems</p>
		<p>Invited Speaker: Prof. Xin Xu,</p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;National University of Defense Technology, China</p>
		<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Web: www.jilsa.net/xinxu.html email: xinxu@nudt.edu.cn </p>
		<p><b>Brief Biography of the Invited Speaker: </b></p>
		<p>Prof. Xin Xu received the B.S. degree in electrical engineering from the Department of Automatic Control, National University of Defense Technology (NUDT), Changsha, P. R. China, in 1996 and the Ph.D. degree in control science and engineering from the College of Mechatronics and Automation (CMA), NUDT. He has been a visiting scientist for cooperation research in the Hong Kong Polytechnic University, University of Alberta, University of Guelph, Russian Academy of Sciences and the University of Strathclyde, respectively. Currently, he is a full Professor with the College of Mechatronics and Automation, NUDT. </p>
		<p>His main research areas include: reinforcement learning and approximate dynamic programming, learning control, robotics and intelligent vehicles, machine learning and data mining. He has coauthored four books and published more than 150 papers in international journals and conferences. He is the founding co-Editor-in-Chief of Journal of Intelligent Learning Systems and Applications (with Prof. Haibo He) and the founding associate Editor-in-Chief of CAAI Transactions on Intelligence Technology. He has served as an Associate Editor or Guest Editor of Information Sciences, IEEE Transactions on Systems, Man and Cybernetics: Systems, International Journal of Adaptive Control and Signal Processing, International Journal of Social Robotics, Intelligent Automation and Soft Computing, Acta Automatica Sinica.</p>
		<p>Prof. Xu is one of the recipients who received the 2nd class National Natural Science Award of China in 2012, the 1st class Natural Science Award from Hunan Province, P. R. China, in 2009 and the Fork Ying Tong Youth Teacher Fund of China in 2008. He is a Senior Member of IEEE, a Committee Member of the IEEE Technical Committee on Approximate Dynamic Programming and Reinforcement Learning (ADPRL) and the IEEE Technical Committee on Robot Learning.
		</p>
		<p><b>Seminar 2:</b></p>
		<p>Invited Speaker: s</p>
	</div>
</section>
<hr>
<section id="Schedule" class="video-section">
	<div class="col-md-12 col-xs-12">
		<h3 class="text-center">
			<b>Schedule</b>
		</h3>
	</div>
	<div class="container">
		<p><b>October 27, 2017 (Friday)</b></p>
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
		<p><b>October 28, 2017 (Saturday)</b></p>
		<p class="editContent text-center">
		<table class="table table-bordered table-hover table-striped">

			<tr>
				<td>8:30-9:00	</td>
				<td>Opening ceremony	Main Venue</td>
				<td rowspan="6" style="vertical-align:middle">14:00-18:00</td>
			</tr>
			<tr>
				<td>9:00-9:40</td>
				<td>Keynote Speech 1</td>

			</tr>
			<tr>
				<td>9:40-10:20</td>
				<td>Keynote Speech 2</td>
			</tr>
			<tr>
				<td>10:20-10:30</td>
				<td>Tea Break</td>

			</tr>
			<tr>
				<td>10:30-11:10</td>
				<td>Keynote Speech 3</td>
			</tr>
			<tr>
				<td>11:10-11:50</td>
				<td>Keynote Speech 4</td>
			</tr>
			<tr>
				<td>11:50-14:00</td>
				<td>Lunch and Break</td>
				<td>Restaurant</td>
			</tr>
			<tr>
				<td  rowspan="2" style="vertical-align:middle">14:00-17:30</td>
				<td>Group reports</td>
				<td>Branch venue</td>
			</tr>
			<tr>
				<td>Exhibition and Show of Unmanned Systems	</td>
				<td>Outdoor</td>
			</tr>
			<tr>
				<td>17:30-19:30</td>
				<td>Dinner</td>
				<td>Restaurant</td>
			</tr>
		</table>
		</p>
		<p><b>October 29, 2017 (Sunday)</b></p>
		<p class="editContent text-center">
		<table class="table table-bordered table-hover table-striped">
			<tr>
				<td rowspan="2" style="vertical-align:middle">8:30-11:50</td>
				<td>Group reports</td>
				<td>Branch venue</td>
			</tr>
			<tr>
				<td>Exhibition and Show of Unmanned Systems</td>
				<td>Outdoor</td>

			</tr>
			<tr>
				<td>11:50-14:00</td>
				<td>Lunch and Break</td>
				<td>Restaurant</td>
			</tr>
			<tr>
				<td>14:00-14:40</td>
				<td>Keynote Speech 5</td>
				<td rowspan="6" style="vertical-align:middle">Main venue</td>

			</tr>
			<tr>
				<td>14:40-15:20</td>
				<td>Keynote Speech 6</td>
			</tr>
			<tr>
				<td>15:20-15:30</td>
				<td>Tea Break</td>
			</tr>
			<tr>
				<td>15:30-16:10</td>
				<td>Keynote Speech 7</td>
			</tr>
			<tr>
				<td>16:10-16:50</td>
				<td>Keynote Speech 8</td>
			</tr>
			<tr>
				<td>16:50-17:30	</td>
				<td>Closing and Awarding Ceremony	</td>
			</tr>
		</table>
		</p>
	</div>
</section>
<!-- package section -->
<!-- gallery section -->
<hr>

<section id="Keynote_Speakers" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Keynote Speakers</b>
			</h3>
		</div>
		<p>Coming Soon<p>
		<%--<p><b>October 28, 2017 (Saturday)</b></p>
		<p class="editContent text-center">
		<table class="table table-bordered table-hover table-striped">

			<tr>
				<td>8:30-9:00	</td>
				<td>Opening ceremony	Main Venue</td>
				<td rowspan="6" style="vertical-align:middle">14:00-18:00</td>
			</tr>
			<tr>
				<td>9:00-9:40</td>
				<td>Keynote Speech 1</td>

			</tr>
			<tr>
				<td>9:40-10:20</td>
				<td>Keynote Speech 2</td>
			</tr>
			<tr>
				<td>10:20-10:30</td>
				<td>Tea Break</td>

			</tr>
			<tr>
				<td>10:30-11:10</td>
				<td>Keynote Speech 3</td>
			</tr>
			<tr>
				<td>11:10-11:50</td>
				<td>Keynote Speech 4</td>
			</tr>
			<tr>
				<td>11:50-14:00</td>
				<td>Lunch and Break</td>
				<td>Restaurant</td>
			</tr>
			<tr>
				<td  rowspan="2" style="vertical-align:middle">14:00-17:30</td>
				<td>Group reports</td>
				<td>Branch venue</td>
			</tr>
			<tr>
				<td>Exhibition and Show of Unmanned Systems	</td>
				<td>Outdoor</td>
			</tr>
			<tr>
				<td>17:30-19:30</td>
				<td>Dinner</td>
				<td>Restaurant</td>
			</tr>
		</table>
		</p>
		<p><b>October 29, 2017 (Sunday)</b></p>
		<p class="editContent text-center">
		<table class="table table-bordered table-hover table-striped">
			<tr>
				<td rowspan="2" style="vertical-align:middle">8:30-11:50</td>
				<td>Group reports</td>
				<td>Branch venue</td>
			</tr>
			<tr>
				<td>Exhibition and Show of Unmanned Systems</td>
				<td>Outdoor</td>

			</tr>
			<tr>
				<td>11:50-14:00</td>
				<td>Lunch and Break</td>
				<td>Restaurant</td>
			</tr>
			<tr>
				<td>14:00-14:40</td>
				<td>Keynote Speech 5</td>
				<td rowspan="6" style="vertical-align:middle">Main venue</td>

			</tr>
			<tr>
				<td>14:40-15:20</td>
				<td>Keynote Speech 6</td>
			</tr>
			<tr>
				<td>15:20-15:30</td>
				<td>Tea Break</td>
			</tr>
			<tr>
				<td>15:30-16:10</td>
				<td>Keynote Speech 7</td>
			</tr>
			<tr>
				<td>16:10-16:50</td>
				<td>Keynote Speech 8</td>
			</tr>
			<tr>
				<td>16:50-17:30	</td>
				<td>Closing and Awarding Ceremony	</td>
			</tr>
		</table>
		</p>--%>

	</div>
</section>
<hr>
<section id="Invited_Sessions" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Special & Invited Sessions</b>
			</h3>
		</div>
		<p>Coming Soon<p>
	</div>
</section>
<hr>
<section id="Submission" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Submission</b>
			</h3>
		</div>
		<p>Papers can be submitted via the website<a href="javascript:;" id="a-link-submission"><span style="color:red;">www.icus.org.cn/ICUS2017/Submission</span></a>. When submitting a paper, please don’t forget to select the relevant topics or relevant Invited Session (if applicable).</p>
		<p>Selected high-quality papers presented at IEEE ICUS2017 will be considered for publication in International Journal of Robotics and Automation (SCI-indexed), International Journal of Modeling Identification and Control (EI-indexed) and CAAI Transactions on Intelligence Technology (Elsevier).</p>
		<p>Authors are advised to prepare the manuscripts according to the following instructions and use IEEE template:</p>
		<p><span style="font-size:30px;">☛ </span>Page limit: six pages for initial and final submission.</p>
		<p><span style="font-size:30px;">☛ </span>Papers for Invited Sessions: please indicate the invited session topics in submission.</p>
		<p><span style="font-size:30px;">☛ </span>Paper format: Two-column format PDF files in standard IEEE conference style.</p>
		<p><span style="font-size:30px;">☛ </span>New IEEE templates for LaTeX style or Microsoft Word style are available for camera-ready manuscript.</p>
		<br>
		<h5>Attention: Revise Requests for Final Submission</h5>
		<p><b>ALL ACCEPTED</b> papers should match a maximum of<b> 6 PAGES</b>. The paper<b> NOT</b> matched such requests will be required to be revised repeatedly, even rejected.</p>
		<p>According to the convention of international academic conferences, IEEE ICUS2017 will remove<b> NO SHOW</b> papers, which means that<b> at least one of major authors needs to be present and preach at the conference.</b> Either oral presentation or poster session is permitted. Alternatively, it is can be accepted that someone else attends the conference and makes presentation if it is a real difficult for all the authors of one paper to be present. Otherwise, papers will not be sent to the IEEE Xplore and accepted by EI.</p>

		<p>Coming Soon<p>
	</div>
</section>
<hr>
<section id="committee" class="services service-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Committee</b>
			</h3>
		</div>
		<div class="row">
			<div class="col-md-9 col-sm-9 services">
				<h4>★ International Advisory/steering Committee</h4>
				<p>Hao Dai, Chinese Academy of Engineering, Beijing, China</p>
				<p>Feiyue Wang, IEEE Fellow, Institute of Automation, the Chinese Academy of Sciences, Beijing, China</p>
				<p>Yangquan Chen, University of California, USA</p>
				<p>Frank L. Lewis, IEEE Fellow, University of Texas at Arlington, USA</p>
				<p>Chai Wah Wu, IEEE Fellow, IBM Research Center, New York, USA</p>
				<p>Yang Shi, IEEE Fellow, University of Alberta, Edmonton, Canada</p>
				<p>Youmin Zhang, Concordia University Montreal , Montréal, Canada</p>
				<p>Simon X. Yang, University of Guelph, Canada</p>
				<p>Erwin Prassler, Germany</p>
				<p>Maciej Ogorzalek, IEEE Fellow, Jagiellonian University, Poland</p>
				<p>Quanmin Zhu, UK</p>
				<p>Didier Theilliol, France</p>
				<p>Aarne Halme, Finland</p>
				<p>Lihua Xie, Singapore</p>
				<p>Ben M.Chen, IEEE Fellow, National University of Singapore, Singapore</p>
				<p>Xinghuo Yu, IEEE Fellow, RMIT University, Australia</p>
				<p>Jinhu Lu, IEEE Fellow, Chinese Academy of Sciences, China</p>
				<p>Guanrong Chen, IEEE Fellow, City University of Hong Kong, China</p>
				<p>Changhua Hu, China</p>
				<p>Jianzhong Wang ,China</p>
				<p><b>General Chairs</b></p>
				<p>Deyi Li, Chinese Academy of Engineering, China</p>
				<p>Jie Chen, Beijing Institute of Technology, China</p>
				<p><b>General Co- Chairs</b></p>
				<p>Jirong Qin, Chinese Inst. of Command & Control, China</p>
				<p>Pengwan Chen, Beijing Institute of Technology, China</p>
				<p>Jibin Hu, Beijing Institute of Technology, China</p>
				<p><b>Program Chair</b></p>
				<p>Dong-guang Li, Beijing Institute of Technology, China</p>
				<p><b>Program Co-Chairs</b></p>
				<p>Quan Pan, China </p>
				<p>Wenrui Ding, China</p>
				<p>Xin Xu, China</p>
				<p>Zhijiang Du, China</p>
				<p>Shaodong Chen, China </p>
				<p>Hong Meng, China</p>
				<p>Yuqing He, China </p>
				<p>Ming Gao, China</p>
				<p><b>Plenary and Semi-Plenary Talks Chairs</b></p>
				<p>Yabin Wang, China </p>
				<p>Jianhua Liu, China</p>
				<p><b>Publicity/Regional Chairs</b></p>
				<p>Yangquan Chen, USA</p>
				<p>Yantao Shen, USA</p>
				<p>Shijun Guo, UK</p>
				<p>Roland Hin Kwan Wong, UK</p>
				<p>Walter Sweeting, UK</p>
				<p>Dhammika Widanalage, UK</p>
				<p>Youmin Zhang, Canada</p>
				<p>Xi Chen, China</p>
				<p>Daochun Li, China</p>
				<p>Xing Feng, China</p>
				<p>Wei Shen, China</p>
				<p>Xueshan Gao, China</p>
				<p>Lihua Xie, Singapore</p>
				<p>Dingguo Zhang, China</p>
				<p>Zhihui Qian, China</p>
				<p>Tianjiang Hu, China</p>
				<p>Min Yu, China</p>
				<p>Wenjian Wu, China</p>
				<p>Jinwen Hu, China</p>
				<p>Ping Ning, China</p>
				<p>Haibo Ji, China</p>
				<p>Qiuzhi Song, China</p>
				<p>Meifang Guo, China</p>
				<p>Zhengjie Wang, China</p>
				<p><b>Special/Invited Session Chairs</b></p>
				<!--<p><b>Organized/Invited Session Chairs</b></p>-->
				<p>Yunde Jia, China</p>
				<p>Jinwen Hu, China</p>
				<p>Bo Su, China</p>
				<p>Shihua Yuan, China</p>
				<p>Haibin Duan, China</p>
				<p>Shushan Wang, China Tiaoping Fu, China</p>
				<p>Hua Wang, China</p>
				<p>Wenbin Li, China</p>
				<p>Yuefeng Liu, China</p>
				<p>Peizhi Liu, China</p>
				<p>Qingchuan Tao, China</p>
				<p>Wenzhong Lou , China</p>
				<p>Jinyong Yu, China</p>
				<p><b>Idustry/Exhibitions Chairs</b></p>
				<p>Peng He, AVIC 613, China</p>
				<p>Junhui Fu, Beijing UAS Technology Co. Ltd, China</p>
				<p>Shaocun Chen, HIWING S&T Info. Inst., China</p>
				<p>Bo Su,NORINCO Unmanned Vehicle R&D Center, China</p>
				<p>Boyuan Sun, AUVSC, China</p>
				<p><b>Publication Chair</b></p>
				<p>Mengqi Zhou, China</p>
				<p><b>Publication Co-Chair</b></p>
				<p>Xin Xu, National University of Defense Tech., China</p>
				<p><b>Registration Chairs</b></p>
				<p>Chenwei Yang, China </p>
				<p>Dongfang Li, China</p>
				<p>Jieru Fan, China</p>
				<p>Shanshan Yu, China</p>
				<p><b>Finance Chairs</b></p>
				<p>Xuping Cao, China </p>
				<p>Teng Peng, China</p>

				<br/>

			</div>
			<div class="col-md-3 col-sm-6 services text-center"> <span class="icon fa fa-clock-o"> Registration</span>
				<div class="services-content">
					<p style="padding-top:10px;">Conference Date：Oct.27-29,2017  Beijing,China</p>
					<a href="javascript:;" onclick="javacript:loginFormFadeIn();" class="btn btn-lg btn-default" id="btn-ljbm">sign up</a>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center">  Co-Sponsors</span>
				<div class="services-content">
					<p>
					<div style="padding-top:10px;margin-left:auto;margin-right:auto">
						<i class="fa fa-arrow-circle-right"></i><a href="#"> IEEE Beijing Section, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Beijing Institute of Technology (BIT), China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#">Chinese Institute of Command and Control (CICC), China</a>
						<br/>

					</div>
					</p>
				</div>
			</div>





			<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center"> Executive Organizer</span>
				<div class="services-content">
					<p>
					<div style="padding-top:10px;margin-left:auto;margin-right:auto">
						<i class="fa fa-arrow-circle-right"></i><a href="#"> CICC Technical Committee on Unmanned Systems, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Key Laboratory of Electromechanical Dynamic Control in BIT, Ministry of Industry and Information Technology, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Key Laboratory of Vehicle Transmission in BIT, Ministry of Industry and Information Technology, China</a>
						<br/>

					</div>
					</p>
				</div>
			</div>
			<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-tasks text-center"> Patrons</span>
				<div class="services-content">
					<p>
					<div style="padding-top:10px;margin-left:auto;margin-right:auto">
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Beihang UAS Technology Co. Ltd, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Key laboratory of Electro-Optics and Control technology in AVIC(Aviation Industry Corporation), Ministry of Industry and Information Technology, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Key Laboratory of Information Fusion Technology in NPU(Northwestern Polytechnical University), Ministry of Education, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> NORINCO Unmanned Vehicle Research and Development Center, China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#"> Laboratory of Unmanned System in School of Mechatronics and Automation in NUDT(National University of Defense Technology) , China</a>
						<br/>
						<br/>
						<i class="fa fa-arrow-circle-right"></i><a href="#">Association for Unmanned Vehicle Systems, China</a>
					</div>
					</p>
				</div>
			</div>
		</div>
	</div>
</section>
<hr>
<section id="Fee" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Registration Fee</b>
			</h3>
		</div>
		<p class="editContent text-center">
		<table class="table table-bordered table-hover table-striped">
			<thead>
			<tr>
				<th colspan="2" rowspan="2">Registration Fee</th>
				<th>Early Bird</th>
				<th>On Site</th>
			</tr>
			<tr>
				<td>Before or on Sept. 15</td>
				<td>After Sept. 15</td>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td colspan="2">Regular registration for 1 paper uploading</td>
				<td>420 USD</td>
				<td>520 USD</td>
			</tr>
			<tr>
				<td colspan="2">Student or IEEE/CICC*/TCUS** member registration for 1 paper uploading</td>
				<td>400 USD</td>
				<td>500 USD</td>
			</tr>
			<tr>
				<td colspan="2">Regular registration for 2 paper uploading</td>
				<td>500 USD</td>
				<td>600 USD</td>
			</tr>
			<tr>
				<td colspan="2">Student or IEEE/CICC/TCUS member registration for 2 paper uploading</td>
				<td>450 USD</td>
				<td>550 USD</td>
			</tr>
			<tr>
				<td colspan="2">Regular registration with no paper uploading</td>
				<td>260 USD</td>
				<td>280 USD</td>
			</tr>
			<tr>
				<td colspan="2">Student or IEEE/CICC/TCUS member registrationwith no paper uploading</td>
				<td>200 USD</td>
				<td>230 USD</td>
			</tr>
			<tr>
				<td colspan="2">Except papers recommended to the international journal, the Extra Page Levy</td>
				<td colspan="2">150 USD per page</td>
			</tr>
			</tbody>
		</table>
		<p style="color:red;"><b>explain:</b></p>
		<p>(1) *:Chinese Institute of Command and Control.**:Technical Committee on Unmanned Systems.</p>
		<p>(2) Over Length Fee: All papers are allotted 6 pages per paper free of charge. A maximum of two extra pages per paper (i.e., 8 pages in total) is permitted at an extra charge of 150 USD per page. Papers longer than 8 pages are NOT acceptable and CANNOT be uploaded.</p>
		<p>(3) All registrations are not refundable.</p>
		</p>
	</div>
</section>
<hr>
<section id="Download" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Download</b>
			</h3>
		</div>
		<p><a href="download/IEEE ICUS2017 Call for paper English.pdf" download="IEEE ICUS2017 Call for paper （English）.pdf">IEEE ICUS2017 Call for paper（English）.pdf</a></p>
		<p><a href="download/IEEE ICUS2017 Call for paper Chinese.pdf" download="IEEE ICUS2017 Call for paper （中文）.pdf">IEEE ICUS2017 Call for paper（中文）.pdf</a></p>
	</div>
</section>
<hr>
<section id="Venue" class="video-section">
	<div class="container">
		<div class="section-header">
			<h3 class="wow fadeInDown animated">
				<b>Venue</b>
			</h3>
		</div>
		<h4>★ Conference Venue</h4>
		<p>International Educational Exchange Center (国际教育交流中心)</p>

		<h5>Website: </h5>
		<p>For Chinese friends: International Educational Exchange Center (国际教育交流中心) </p>
		<p>For foreign friends: ***</p>
		<p>Address: NO. 66, West Beisanhuan Road, Haidian District, Beijing, China. （北京海淀区北三环西路66号，北京理工大学中关村校区内）</p>
		<p>Room Book in International Educational Exchange Center.</p>
		<br>
		<h5>Railway station Information</h5>
		<p>Beijing Railway Station</p>
		<p>Take subway line 2 (direction to Chong Wenmen Station) -- Xi Zhimen Station -- transfer to line 4 (direction to AnHe-QiaoBei Station) –go outside from Gate A at Wei Gongcun Station, go towards north, and then you can arrive at BIT.</p>

		<p>Beijing West Railway Station</p>
		<p>Take subway line 9 subway (direction to the national library station) -- the national library station -- transfer to line 4 (direction to AnHe-QiaoBei Station) –go outside from Gate A at Wei Gongcun Station, go towards north, and then you can arrive at BIT.</p>

		<p>Beijing South Railway Station</p>
		<p>Take subway line 4 (direction to AnHe-QiaoBei Station) –go outside from Gate A at Wei Gongcun Station, go towards north, and then you can arrive at BIT.</p>
		<p>For directions from the station to the conference hotel, please check here. (超链接)</p>
		<br>
		<h5>Airport Information</h5>
		<p>Capital Airport</p>
		<p>Take the airport line (direction to Liu Li bridge Station) – Xi Zhimen -- transfer to line 4 (direction to AnHe-QiaoBei Station) –go outside from Gate A at Wei Gongcun Station, go towards north, and then you can arrive at BIT.</p>

		<p>Beijing Nanyuan Airport</p>
		<p>Take the airport line (to Gong Zhufen station) –Xin Gong Station -- transfer to line 4 (direction to AnHe-QiaoBei Station) –go outside from Gate A at Wei Gongcun Station, go towards north, and then you can arrive at BIT.</p>

		<p>For directions from the airport to the conference hotel, please check here. (超链接)</p>
		<br>
		<h5>Glance of the Venue</h5>
		<img src='static/images/ddd.png' width="345" style='display:block;margin:0 auto;'>
		<br>
		<img src='static/images/aaa.png' width="345" style='display:block;margin:0 auto;'>
	</div>
</section>
<hr>
<section id="Contact Us" class="gallery section">
	<div class="container">
		<div class="row">
			<div class="col-md-12 col-sm-12 services text-center">
				<span class="icon icon-phone"><i class="fa fa-phone"></i> Contact Us</span>
				<div class="services-content">
					<p class="wow fadeInLeft animated" style="padding-top:30px;text-align:left">
						IEEE ICUS2017 Conference Secretariat</p>
					<p class="wow fadeInLeft animated" style="text-align:left">Beijing Institute of Technology, China</p>
					<p class="wow fadeInLeft animated" style="text-align:left">Tel: +8610-6891-2761 (Prof. Hongbin Deng)</p>
					<p class="wow fadeInLeft animated" style="text-align:left">E-mail: denghongbin@bit.edu.cn</p>
					<p class="wow fadeInLeft animated" style="text-align:left">Website:<a href="http://www.c2.org.cn" title="ICUS"> http://www.c2.org.cn</a>&nbsp;&nbsp;or&nbsp;&nbsp;<a href="http://www.c2.org.cn" title="ICUS">http://www.icus.org.cn</a></P>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- footer -->
<footer>
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<p>Copyright &copy; 2017 CICC, All Rights Reserved</p>
				<p><a target="_blank" href="http://www.esciences.com.cn/"> China e-Sciences tech Ltd. </a> technical support.
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
                        scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) - $('.headerbar').outerHeight(true) - 16
                    }, 1000);
                    return false;
                }
            }
            else {
                if (target.length) {
                    $('html,body').animate({
                        scrollTop: target.offset().top - $('.navbar').outerHeight(true) - $('.headerbar').outerHeight(true) + 1
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
                    scrollTop: target.offset().top - $('.navbar-header').outerHeight(true) - $('.headerbar').outerHeight(true) + 20
                }, 1000);
            }
        }
        else {
            if (target.length) {
                $('html,body').animate({
                    scrollTop: target.offset().top - $('.navbar').outerHeight(true) - $('.headerbar').outerHeight(true) + 1
                }, 1000);
            }
        }
    }
</script>
</body>

</html>