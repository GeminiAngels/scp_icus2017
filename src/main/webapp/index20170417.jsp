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
<script type="text/javascript">
	var app = {
		  ctx : '<%=path%>',
      curl : window.location.href,
    	maodian : '${position}'||'${param["position"]}'||'#header',
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
	    nofile : '${param.nofile}'
	}
</script>
</head>

<body>
    <!-- header section -->
	<!--
    <section class="banner" role="banner">
        <header id="header">
            <div class="container" style="width:100%;background-color:#3879D9;color:#fff">
                <div class="row" style="max-width:1170px;margin:0 auto;">
                    <div class="col-md-12 no-padding">
                        <span style="font-size:16px;line-height:30px;">Welcome！</span>
						<span style="float:right;" id="registerInfo">
						<button class="btn btn-warning" onclick="javascript:registerFormFadeIn();">Register</button>
						<button class="btn btn-warning" onclick="javacript:loginFormFadeIn();">Sign in</button>
						</span>
                    </div>
                </div>
            </div>

			<div class="header-content clearfix navbar-collapse" style="display:none;">
				<a class="logo" href="#banner"> </a>
				<nav class="navigation" role="navigation">
					<div class="container">
						<div class="navbar-header">
							<a href="#" class="nav-toggle" data-toggle="collapse" data-target=".navbar-collapse">Menu<span></span></a>
						</div>
						<div id="navbar" class="collapse navbar-collapse">
							<ul class="primary-nav">
								<li><a href="#banner">Homepage</a></li>
								<li><a href="#content-3-10">Call For Papers </a></li>
								<li><a href="#schedule">Schedule</a></li>
								<li><a href="#gallery">Keynote Speakers</a></li>
								<li><a href="#teams">Invited Sessions</a></li>
								<li><a href="#paper Submission">paper Submission</a></li>
								<li><a href="#Venue">Venue</a></li>
								<li><a href="#download">Download</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<a href="#" class="nav-toggle" data-toggle="collapse" data-target=".navbar-collapse">Menu<span></span></a>
			</div>

			<div class="navbox-wap header-content">
				<div class="navbar navbar-fixed-top" style="top: 35px;" role="navigation">
					<div class="container">
						<div class="navbar-header" style="padding-top: 30px;">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only" style="background-color: gray;">Toggle navigation</span>
								<span class="icon-bar" style="background-color: gray;"></span>
								<span class="icon-bar" style="background-color: gray;"></span>
								<span class="icon-bar" style="background-color: gray;"></span>
							</button>
							<a class="navbar-brand" href="#topWrap" style="font-size: 14px;">
								
							</a>
						</div>
						<div class="collapse navbar-collapse appiNav">
							<ul class="nav navbar-nav primary-nav" >
								<li><a href="#banner" style="color: black;background: #3AA9ED;">Homepage</a></li>
								<li><a href="#content-3-10" style="color: black;background: #3AA9ED;">Call For Papers </a></li>
								<li><a href="#schedule" style="color: black;background: #3AA9ED;">Schedule</a></li>
								<li><a href="#gallery" style="color: black;background: #3AA9ED;">Keynote Speakers</a></li>
								<li><a href="#teams" style="color: black;background: #3AA9ED;">Invited Sessions</a></li>
								<li><a href="#paper Submission" style="color: black;background: #3AA9ED;">paper Submission</a></li>
								<li><a href="#Venue" style="color: black;background: #3AA9ED;">Venue</a></li>
								<li><a href="#download" style="color: black;background: #3AA9ED;">Download</a></li>
								<div class="clear"></div>
							</ul>
						</div>
					</div>
				</div>
			</div>

        </header>

        <div class="banner" id="banner">
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
    </section>
	    -->
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
							<li><a href="#Home">Home</a></li>
							<li><a href="callForPapers.jsp">Call For Papers </a></li>
							<li><a href="#Workshop">Workshop</a></li>
							<li><a href="#Keynote Speakers">Keynote Speakers</a></li>
							<li><a href="#Invited Sessions">Invited Sessions</a></li>
							<li><a href="#Paper Submission">Submission</a></li>
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
    <!-- header section -->
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
    <section class="content-block data-section nopad content-3-10" style="background-color:white;">
        <!-- <div class="image-container col-sm-6 col-xs-12 pull-left fadeInLeft animated">
            <div class="background-image-holder">
              
            </div>
        </div> -->
        <div class="container" style="background-color:white;">
            <div class="row">
                <div class="col-md-12 col-xs-12" style="padding-top:80px;">
                  <h3 class="text-center">
				  <img src="../static/images/logo1.png" width='180' height='160' style="margin-right:130px;">
                    <b>Homepage</b>
				  <img src="../static/images/logo2.png" width='160' height='160' style="margin-left:150px;">
                  </h3>
                </div>
                <div class="col-sm-12 col-xs-12 content fadeInLeft animated" style="padding-top:0px;background-color:white;">
                    <div class="editContent">
                        <h3></h3>						
						<h4 class="text-center">Welcome to ICUS 2017.<h4>
                        <p>The 2017 International Conference on Unmanned Systems (ICUS 2017) is approved by China Association for Science and Technology (CAST) and will be held by Chinese Institute of Command and Control (CICC), Beijing Institute of Technology (BIT) from October 27th to 29th in Beijing, China. </p>
                        <p>ICUS provides an international forum for professionals, academics, and researchers over the world to present latest developments about academic and technical issues related to unmanned systems. The theme for the conference in 2017 is “Development and Application of Unmanned Systems in Era of Artificial Intelligence". It particularly welcomes those internationally renowned scholars as well as enterprises at home and aboard to do relevant reports and product display respectively. Forms as group discussion，oral presentation and post presentation, etc. are also included in this conference. </p>
						<p>Please refer to Call for Paper for more details on conference topics.</p>
                        <p>Accepted high-quality papers will be recommended to be considered as special issue papers in International Journal of Robotics and Automation (SCI-indexed), International Journal of Modeling Identification and Control (EI-indexed) and CAAI Transactions on Intelligence Technology (Elsevier). If you have any query on the submission issue, please email to the Conference Secretariat (icus2017@163.com) directly. </p>
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
    <section id="services" class="services service-section">
        <div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Organizing Committee</b>
				</h3>
            </div>
            <div class="row">
                <div class="col-md-9 col-sm-9 services">
				 <h4>&nbsp;&nbsp;Ⅰ.International Advisory/steering Committee</h4>
				 <p>&nbsp;&nbsp;Hao Dai, Chinese Academy of Engineering, Beijing, China</p>
				 <p>&nbsp;&nbsp;Feiyue Wang, IEEE Fellow, Institute of Automation, the Chinese Academy of Sciences, Beijing, China</p>
				 <p>&nbsp;&nbsp;Yangquan Chen, University of California, USA</p>
				 <p>&nbsp;&nbsp;Frank L. Lewis, IEEE Fellow, University of Texas at Arlington, USA</p>
				 <p>&nbsp;&nbsp;Chai Wah Wu, IEEE Fellow, IBM Research Center, New York, USA</p>
				 <p>&nbsp;&nbsp;Yang Shi, IEEE Fellow, University of Alberta, Edmonton, Canada</p>
				 <p>&nbsp;&nbsp;Youmin Zhang, Concordia University Montreal , Montréal, Canada</p>
				 <p>&nbsp;&nbsp;Simon X. Yang, University of Guelph, Canada</p>
				 <p>&nbsp;&nbsp;Erwin Prassler, Germany</p>
				 <p>&nbsp;&nbsp;Maciej Ogorzalek, IEEE Fellow, Jagiellonian University, Poland</p>
				 <p>&nbsp;&nbsp;Quanmin Zhu, UK</p>
				 <p>&nbsp;&nbsp;Didier Theilliol, France</p>
				 <p>&nbsp;&nbsp;Aarne Halme, Finland</p>
				 <p>&nbsp;&nbsp;Lihua Xie, Singapore</p>
				 <p>&nbsp;&nbsp;Ben M.Chen, IEEE Fellow, National University of Singapore, Singapore</p>
				 <p>&nbsp;&nbsp;Xinghuo Yu, IEEE Fellow, RMIT University, Australia</p>
				 <p>&nbsp;&nbsp;Jinhu Lu, IEEE Fellow, Chinese Academy of Sciences, China</p>
				 <p>&nbsp;&nbsp;Guanrong Chen, IEEE Fellow, City University of Hong Kong, China</p>
				 <p>&nbsp;&nbsp;Changhua Hu, China</p>
				 <p>&nbsp;&nbsp;Jianzhong Wang ,China</p>
				 <p>&nbsp;&nbsp;<b>General Chairs</b></p>
				 <p>&nbsp;&nbsp;Deyi Li, Chinese Academy of Engineering, China</p>
				 <p>&nbsp;&nbsp;Jie Chen, Beijing Institute of Technology, China</p>
				 <p>&nbsp;&nbsp;<b>General Co- Chairs</b></p>
				 <p>&nbsp;&nbsp;Jirong Qin, Chinese Inst. of Command & Control, China</p>
				 <p>&nbsp;&nbsp;Pengwan Chen, Beijing Institute of Technology, China</p>
				 <p>&nbsp;&nbsp;Jibin Hu, Beijing Institute of Technology, China</p>
				 <p>&nbsp;&nbsp;<b>Program Chair</b></p>
				 <p>&nbsp;&nbsp;Dong-guang Li, Beijing Institute of Technology, China</p>
				 <p>&nbsp;&nbsp;<b>Program Co-Chairs</b></p>
				 <p>&nbsp;&nbsp;Quan Pan, China </p>
				 <p>&nbsp;&nbsp;Wenrui Ding, China</p>
				 <p>&nbsp;&nbsp;Xin Xu, China</p>
				 <p>&nbsp;&nbsp;Zhijiang Du, China</p>
				 <p>&nbsp;&nbsp;Shaodong Chen, China </p>
				 <p>&nbsp;&nbsp;Hong Meng, China</p>
				 <p>&nbsp;&nbsp;Yuqing He, China </p>
				 <p>&nbsp;&nbsp;Ming Gao, China</p>
				 <p>&nbsp;&nbsp;<b>Plenary and Semi-Plenary Talks Chairs</b></p>
				 <p>&nbsp;&nbsp;Yabin Wang, China </p>
				 <p>&nbsp;&nbsp;Jianhua Liu, China</p>
				 <p>&nbsp;&nbsp;<b>Publicity/Regional Chairs</b></p>
				 <p>&nbsp;&nbsp;Yangquan Chen, USA</p>
				 <p>&nbsp;&nbsp;Yantao Shen, USA</p>
				 <p>&nbsp;&nbsp;Shijun Guo, UK</p>
				 <p>&nbsp;&nbsp;Roland Hin Kwan Wong, UK</p>
				 <p>&nbsp;&nbsp;Walter Sweeting, UK</p>
				 <p>&nbsp;&nbsp;Dhammika Widanalage, UK</p>
				 <p>&nbsp;&nbsp;Youmin Zhang, Canada</p>
				 <p>&nbsp;&nbsp;Xi Chen, China</p>
				 <p>&nbsp;&nbsp;Daochun Li, China</p>
				 <p>&nbsp;&nbsp;Xing Feng, China</p>
				 <p>&nbsp;&nbsp;Wei Shen, China</p>
				 <p>&nbsp;&nbsp;Xueshan Gao, China</p>
				 <p>&nbsp;&nbsp;Lihua Xie, Singapore</p>
				 <p>&nbsp;&nbsp;Dingguo Zhang, China</p>
				 <p>&nbsp;&nbsp;Zhihui Qian, China</p>
				 <p>&nbsp;&nbsp;Tianjiang Hu, China</p>
				 <p>&nbsp;&nbsp;Min Yu, China</p>
				 <p>&nbsp;&nbsp;Wenjian Wu, China</p>
				 <p>&nbsp;&nbsp;Jinwen Hu, China</p>
				 <p>&nbsp;&nbsp;Ping Ning, China</p>
				 <p>&nbsp;&nbsp;Haibo Ji, China</p>
				 <p>&nbsp;&nbsp;Qiuzhi Song, China</p>
				 <p>&nbsp;&nbsp;Meifang Guo, China</p>
				 <p>&nbsp;&nbsp;Zhengjie Wang, China</p>
				 <p>&nbsp;&nbsp;<b>Organized/Invited Session Chairs</b></p>
				 <p>&nbsp;&nbsp;Yunde Jia, China</p>
				 <p>&nbsp;&nbsp;Jinwen Hu, China</p>
				 <p>&nbsp;&nbsp;Bo Su, China</p>
				 <p>&nbsp;&nbsp;Shihua Yuan, China</p>
				 <p>&nbsp;&nbsp;Haibin Duan, China</p>
				 <p>&nbsp;&nbsp;Shushan Wang, China Tiaoping Fu, China</p>
				 <p>&nbsp;&nbsp;Hua Wang, China</p>
				 <p>&nbsp;&nbsp;Wenbin Li, China</p>
				 <p>&nbsp;&nbsp;Yuefeng Liu, China</p>
				 <p>&nbsp;&nbsp;Peizhi Liu, China</p>
				 <p>&nbsp;&nbsp;Qingchuan Tao, China</p>
				 <p>&nbsp;&nbsp;Wenzhong Lou , China</p>
				 <p>&nbsp;&nbsp;Jinyong Yu, China</p>
				 <p>&nbsp;&nbsp;<b>Idustry/Exhibitions Chairs</b></p>
				 <p>&nbsp;&nbsp;Peng He, AVIC 613, China</p>
				 <p>&nbsp;&nbsp;Junhui Fu, Beijing UAS Technology Co. Ltd, China</p>
				 <p>&nbsp;&nbsp;Shaocun Chen, HIWING S&T Info. Inst., China</p>
				 <p>&nbsp;&nbsp;Bo Su,NORINCO Unmanned Vehicle R&D Center, China</p>
				 <p>&nbsp;&nbsp;Boyuan Sun, AUVSC, China</p>
				 <p>&nbsp;&nbsp;Publication Chair</p>
				 <p>&nbsp;&nbsp;Xin Xu, National University of Defense Tech., China</p>
				 <p>&nbsp;&nbsp;<b>Registration Chairs</b></p>
				 <p>&nbsp;&nbsp;Chenwei Yang, China </p>
				 <p>&nbsp;&nbsp;Dongfang Li, China</p>
				 <p>&nbsp;&nbsp;Jieru Fan, China</p>
				 <p>&nbsp;&nbsp;Shanshan Yu, China</p>
				 <p>&nbsp;&nbsp;<b>Finance Chairs</b></p>
				 <p>&nbsp;&nbsp;Xuping Cao, China </p>
				 <p>&nbsp;&nbsp;Teng Peng, China</p>
				 <h4>Ⅱ.Sponsors</h4>
				 <p>&nbsp;&nbsp;Chinese Institute of Command and Control (CICC), China</p>
				 <p>&nbsp;&nbsp;Beijing Institute of Technology (BIT), China</p>
				 <h4>Ⅲ.Supporters</h4>
				 <p>&nbsp;&nbsp;HIWING Science and Technology Information Institute, China</p>
				 <p>&nbsp;&nbsp;Association for Unmanned Vehicle Systems, China</p>
				 <h4>Ⅳ.Important Dates</h4>
				 <p>&nbsp;&nbsp;Deadline for manuscript paper submission:  	July 1, 2017</p>
				 <p>&nbsp;&nbsp;Notification of acceptance:				 Aug. 15, 2017</p>
				 <p>&nbsp;&nbsp;Submission of camera-ready:              	Aug. 30, 2017</p>
				 <p>&nbsp;&nbsp;Deadline for early bird registration:        	Sep. 15, 2017</p>
				 <p>&nbsp;&nbsp;Conference:                      	   	Oct. 27-29, 2017</p>
				 <h4>Ⅴ.Excellent Paper Awards</h4>
				 <p>&nbsp;&nbsp;In order to further promote the academic atmosphere and encourage more young scientists to participate in academic activities, so as to further improve the quality of papers and effect of the conference, “ICUS Best Paper Award” and “ICUS Excellent Student Paper Award” are established purposely.</p>                
                   <!-- <p>&nbsp;&nbsp;<b>三、会议日程</b></p>
                    <div class="row">
						<div id="content24" data-section="content-24" class="data-section">
							<div class="col-md-12">
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										<tr>
											<th width="100" style="text-align:center;">日期</th>
											<th style="text-align:center;">时间</th>
											<th style="text-align:center;">内容</th>
											<th width="200" style="text-align:center;">地点</th>
										</tr>
										<tr>
											<td>11月25日</td>
											<td>全天</td>
											<td>代表报到</td>
											<td rowspan="1" style="vertical-align:middle">南京师范大学仙林宾馆</td>
										</tr>
										<tr>
											<td rowspan="4" style="vertical-align:middle">11月26日</td>
											<td>8:00-8:30</td>
											<td>报到注册</td>
											<td rowspan="4" style="vertical-align:middle;">南京师范大学敬文图书馆</td>
										</tr>
										<tr>
											<td>8:30-10:00</td>
											<td>大会开幕式</td>
										</tr>
										<tr>
											<td>10:00-12:00</td>
											<td>特邀专家报告</td>
										</tr>
										<tr>
											<td>13:30-17:30</td>
											<td>特邀专家报告</td>
										</tr>
										<tr>
											<td rowspan="3" style="vertical-align:middle;">11月27日</td>
											<td>8:30-12:00</td>
											<td>分会场报告</td>
											<td rowspan="2" style="vertical-align:middle;">南京师范大学行远楼</td>
										</tr>
										<tr>
											<td>13:30-15:30</td>
											<td>学术沙龙</td>
										</tr>
										<tr>
											<td>16:00-17:00</td>
											<td>闭幕式</td>
											<td>南京师范大学敬文图书馆</td>
										</tr>
										<tr>
											<td>11月28日</td>
											<td>9:00-11:30</td>
											<td>智慧旅游考察</td>
											<td></td>
										</tr>
									</table>
								</p>
							</div>
						</div>
					</div>-->
                   
                    
                        <br/>
                    
                </div>
                <div class="col-md-3 col-sm-6 services text-center"> <span class="icon fa fa-clock-o"> Registration</span>
                    <div class="services-content">
                        <p style="padding-top:10px;">Conference Date：Oct.27-29,2017  Beijing,China</p>
                        <a href="javascript:;" onclick="javacript:loginFormFadeIn();" class="btn btn-lg btn-default" id="btn-ljbm">sign up</a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center">  Executive Organizer</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> CICC Unmanned Systems Society, China</a>
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
                <div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-tasks text-center"> co-organizer</span>
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
                            </div>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- services section -->
    <hr>
    <!-- package section -->

	<section id="Call For Papers" class="video-section">
				<div class="col-md-12 col-xs-12" style="padding-top:80px;">
                  <h3 class="text-center">
                    <b>Call For Papers</b>
                  </h3>
                </div>
         <div class="container">
			<h4>Ⅰ.Scope for Papers</h4>
			<p>&nbsp;&nbsp;The 2017 International Conference on Unmanned Systems (IEEE ICUS 2017) will be held from October 27th to 29th in Beijing, China. The conference offers a unique and interesting platform for scientists, engineers and practitioners throughout the world to present and share their most recent research and innovative ideas in the areas of unmanned systems, robotics, automation, and intelligent systems. The aim of the IEEE ICUS 2017 is to stimulate researchers active in the areas pertinent to intelligent unmanned systems.
			</p>
			<p>&nbsp;&nbsp;The topics of interests include, but are not limited to:</p>
			<p>&nbsp;&nbsp;1. Unmanned Aerial Vehicles</p>
			<p>&nbsp;&nbsp;2. Unmanned Ground Vehicles</p>
			<p>&nbsp;&nbsp;3. Unmanned Underwater Vehicles</p>
			<p>&nbsp;&nbsp;4. Unmanned System Command and Control</p>
			<p>&nbsp;&nbsp;5. Sensing, Navigation and Control</p>
			<p>&nbsp;&nbsp;6. Cooperative Control of Unmanned Systems</p>
			<p>&nbsp;&nbsp;7. Unmanned System Dynamics</p>
			<p>&nbsp;&nbsp;8. Unmanned System Modeling and Simulation</p>
			<p>&nbsp;&nbsp;9. Artificial Intelligence and Intelligent Systems</p>
			<p>&nbsp;&nbsp;10. Robotic Systems</p>
			<p>&nbsp;&nbsp;11. Bionic Technology</p>
			<p>&nbsp;&nbsp;12. New Concept Unmanned Systems</p>
			<p>&nbsp;&nbsp;13. Other Related Technologies for Unmanned Systems</p>
			<p>&nbsp;&nbsp;Accepted high-quality papers will be recommended to be considered as special issue papers in International Journal of Robotics and Automation (SCI-indexed), International Journal of Modeling Identification and Control (EI-indexed) and CAAI Transactions on Intelligence Technology (Elsevier). If you have any query on the submission issue, please email to the Conference Secretariat (icus2017@163.com) directly.
			</p>
			<p>&nbsp;&nbsp;Deadline for manuscript paper submission:  	July 1, 2017</p>
			<p>&nbsp;&nbsp;Notification of acceptance:               	Aug. 15, 2017</p>
			<p>&nbsp;&nbsp;Submission of camera-ready:              	Aug. 30, 2017</p>
			<p>&nbsp;&nbsp;Deadline for early bird registration:        	Sep. 15, 2017</p>
			<p>&nbsp;&nbsp;Conference:                      	   	Oct. 27-29, 2017</p>
			<h4>Ⅱ.Workshops</h4>
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
			<h4>Ⅲ.Special and Invited Sessions</h4>
			<p>&nbsp;&nbsp;The conference will feature Special and invited sessions on new topics and innovative applications. These sessions will consist of 8-10 articles and undergo a regular review process. Prospective organizers should include a brief statement of purpose for the session as well as the abstracts of the papers.</p>
			<h4>Ⅳ.Submissions & Publication</h4>
			<p>&nbsp;&nbsp;Please prepare your paper in English using the IEEE Template. LaTeX style, Microsoft Word style.</p>
			<p>&nbsp;&nbsp;Please submit the first draft of your paper in PDF format through the website. A maximum of 6 pages per first draft are permitted. Papers should describe original and unpublished work on the above or the related topics. All manuscripts will be reviewed by three members of the international program committee. Instructions for preparation and electronic submission is available on the website.</p>
		
		 </div>
    </section>
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
			<p>&nbsp;&nbsp;<b>October 28, 2017 (Saturday)</b></p>
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
			<p>&nbsp;&nbsp;<b>October 29, 2017 (Sunday)</b></p>
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
		
		
		
		
	


            <!--
			<div class="section-header">
                <h2 class="wow fadeInDown animated">大会开幕倒计时</h2>
                <div class="col-md-8 col-md-offset-2">
                    <br/>
                    <div class="label label-success" style="font-size:16px;">距离大会开幕还有</div>
                    <hr>
                    <div id="countdown"></div> 这行也是注掉的
					<div class="countdown"></div>
                </div>
            </div> 
			-->
			<!--
            <div class="row">
                <div id="content24" data-section="content-24" class="data-section">
                    <div class="col-md-12">
                        <p class="editContent text-center">
                            <table class="table table-bordered table-hover table-striped">
                                <tr>
                                    <th width="100">日期</th>
                                    <th>时间</th>
                                    <th>内容</th>
                                    <th width="200">地点</th>
                                </tr>
                                <tr>
                                    <td>11月25日</td>
                                    <td>全天</td>
                                    <td>代表报到</td>
                                    <td rowspan="5" style="vertical-align:middle">江苏南京，南京师范大学仙林校区，文苑路1号</td>
                                </tr>
                                <tr>
                                    <td rowspan="2" style="vertical-align:middle">11月26日</td>
                                    <td>上午</td>
                                    <td>大会开幕式</td>
                                </tr>
                                <tr>
                                    <td>下午</td>
                                    <td>学术会议</td>
                                </tr>
                                <tr>
                                    <td>11月27日</td>
                                    <td>全天</td>
                                    <td>学术会议</td>
                                </tr>
                                <tr>
                                    <td>11月28日</td>
                                    <td>全天</td>
                                    <td>调研考察</td>
                                </tr>
                            </table>
                        </p>
                    </div>
                </div>
            </div>
			-->
            <!-- end row -->
        </div>
    </section>
    <!-- package section -->
    <!-- gallery section -->
	<hr>

	<section id="Keynote Speakers" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Keynote Speakers</b>
				</h3>
            </div>
			<p>&nbsp;&nbsp;Coming Soon<p>
		</div>
    </section>
	<hr>
	<section id="Invited Sessions" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Special & Invited Sessions</b>
				</h3>
            </div>
			<p>&nbsp;&nbsp;Coming Soon<p>
		</div>
    </section>
	<hr>
	<section id="Paper Submission" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Paper Submission</b>
				</h3>
            </div>
			<p>&nbsp;&nbsp;Coming Soon<p>
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
			<p>&nbsp;&nbsp;Coming Soon<p>
		</div>
    </section>
	<section id="Venue" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Venue</b>
				</h3>
            </div>
			<p>&nbsp;&nbsp;Coming Soon<p>
		</div>
    </section>
	<hr>
	<hr>
    <section id="Contact Us" class="gallery section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 services text-center">
                    <span class="icon icon-phone"><i class="fa fa-phone"></i> Contact Us</span>
                    <div class="services-content">
                        <p class="wow fadeInLeft animated" style="padding-top:30px;text-align:left">
                            ICUS 2017 Conference Secretariat
                            <br/>Beijing Institute of Technology, China 
                            <br/>Tel: +8610-6891-2761 (Prof. Hongbin Deng)
                            <br/>E-mail: denghongbin@bit.edu.cn
                            <br/>Website:<a href="Website: http://www.c2.org.cn" title="ICUS"> http://www.c2.org.cn</a>&nbsp;&nbsp;or&nbsp;&nbsp;<a href="Website: http://www.c2.org.cn" title="ICUS">http://www.icus.org.cn</a>

                        </p>
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