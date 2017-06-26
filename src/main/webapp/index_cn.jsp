<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<link rel="stylesheet" href="<%=path%>/static/css/main_cn.css">
<link href="<%=path%>/static/css/timeTo.css" type="text/css" rel="stylesheet"/>

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
        language:1
	}
</script>
</head>
<body>
    <!-- header section -->

	<!-- 头部模块 -->
	<%@include file="/inc/headbar_cn.jsp" %>
	<div class="banner" id="Home">
		<p class="titleInfo">欢迎来到2017 IEEE国际无人系统大会 </p>
		<p class="titleInfo_1">(IEEE ICUS2017)</p>
		<p class="condate">2017年10月27日－29日  &nbsp;&nbsp;&nbsp;<span class="bjchina">中国北京</span> </p>
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
                    <b>欢迎来到 IEEE ICUS2017 !</b>
                  </h3>
                </div>
                <div class="col-sm-12 col-xs-12 content fadeInLeft animated" style="padding-top:0px;background-color:white;">
                    <div class="editContent">
						<!--<h4 class="text-center">Welcome to IEEE ICUS2017.<h4> -->
                        <p class="t-indent">IEEE国际无人系统大会（IEEE ICUS）是无人系统工程与技术领域最有影响力的国际学术会议。IEEE ICUS 2017的主题是“人工智能时代的无人系统发展与应用”，将集聚国内外高等院校、科研院所和工业部门的专家学者，探讨和交流无人系统领域相关的学术和技术问题，并将邀请国内外无人系统领域的国际知名学者做大会报告，会议还包括小组讨论、口头报告和张贴报告等。本届会议英文论文进入IEEE会议出版程序，其中优秀的英文论文将被推荐到SCI期刊或SCIE杂志发表。</p>
                        <p class="t-indent">IEEE ICUS 2017会议将于2017年10月27日~29日在中国北京召开。本届会议经中国科协批准，由中国指挥与控制学会（CICC）、北京理工大学（BIT）与美国电气和电子工程师协会（IEEE）联合主办，中国指挥与控制学会无人系统专委会、北京理工大学机电动态控制重点实验室、北京理工大学车辆与传动重点实验室、光电控制技术重点实验室共同承办，中国兵器地面无人研发中心、中国无人系统院士工作站、北京格物明理教育咨询有限公司协办。热忱欢迎国内外相关研究领域同行踊跃投稿并参会。</p>
						<p class="t-indent">欢迎为本届会议组织Invited Session（每个Session包括8篇稿件），热忱欢迎国内外相关研究领域同行踊跃投稿并参会！</p>
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
                    <b>征文通知</b>
                  </h3>
                </div>
         <div class="container">
			<p class="t-indent">为了进一步弘扬学术氛围，鼓励更多年轻的科学工作者们参与到学术活动中来，从而进一步提高论文的质量和会议的影响，特设立“ICUS最佳论文奖”和“ICUS优秀学生论文奖”。
			</p>
			<p class="t-indent">本次会议拟组织Invited Session，组织者请提供1000字的组织建议书及该组全部拟邀请论文的全文，论文发送至程序委员会秘书处。同一Invited Session邀请组的论文，应主题鲜明、集中，一般包括8篇论文。</p>
			<h4>★ 征文范围</h4>
			<p>1. 空中无人平台技术</p>
			<p>2.地面无人平台技术</p>
			<p>3. 水中无人平台技术</p>
			<p>4. 无人系统指挥与控制技术</p>
			<p>5. 导航、制导与控制技术</p>
			<p>6. 无人系统协同控制技术</p>
			<p>7. 无人系统动力学</p>
			<p>8. 无人系统建模与仿真技术</p>
			<p>9. 人工智能与智能系统</p>
			<p>10. 机器人技术与系统</p>
			<p>11. 仿生技术</p>
			<p>12. 新概念无人系统技术</p>
			<p>13.其他无人系统相关技术</p>
			
			<h4>★ 重要日期</h4>
			<table class="table table-bordered table-hover table-striped">
			<tr>
			<td class="text-center" style="color:red;">投稿截止日期：</td>
			<td class="text-center" style="color:red;">2017年7月1日</td>
			</tr>
			<tr>
			<td class="text-center" style="color:red;">录用通知日期：</td>
			<td class="text-center" style="color:red;">2017年8月15日</td>
			</tr>
			<tr>
			<td class="text-center" style="color:red;">终稿截止日期：</td>
			<td class="text-center" style="color:red;">2017年8月30日</td>
			</tr>
			<tr>
			<td class="text-center" style="color:red;">注册优惠截止日期：</td>
			<td class="text-center" style="color:red;">2017年9月15日</td>
			</tr>
			<tr>
			<td class="text-center" style="color:red;">会议日期：</td>
			<td class="text-center" style="color:red;">2017年10月27-29日</td>
			</tr>
			</table>
		 </div>
    </section>
	<hr>
	<section id="workshop" class="video-section">
				<div class="col-md-12 col-xs-12">
                  <h3 class="text-center">
                    <b>研讨会</b>
                  </h3>
                </div>
				<div class="container">
					<p>稍后更新</p>
				</div>
				
				<!--
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
		 -->
    </section>
	<hr>
    <section id="Schedule" class="video-section">
				<div class="col-md-12 col-xs-12">
                  <h3 class="text-center">
                    <b>会议日程</b>
                  </h3>
                </div>
         <div class="container">
			<p><b>10月27日</b></p>
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										
										<tr>
											<td width="20%">13:00-19:00	</td>
											<td>大会报到（北京理工大学国际教育交流中心） </td>
										</tr>
										<tr>
											<td style="vertical-align:middle">14:00-18:00</td>
											<td>会议讨论组</td>
										</tr>
										<tr>
											<td style="vertical-align:middle">18:00-20:00</td>
											<td>欢迎晚宴（北京理工大学国际教育交流中心）</td>
										</tr>
									</table>
								</p>
								<p><b>10月28日</b></p>
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										
										<tr>
											<td width="20%">8:30-9:00	</td>
											<td>开幕式，领导讲话</td>
											<td width="20%" rowspan="6" style="vertical-align:middle">14:00-18:00</td>
										</tr>
										<tr>
											<td>9:00-9:40</td>
											<td>大会报告</td>
											
										</tr>
										<tr>
											<td>9:40-10:20</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>10:20-10:30</td>
											<td>茶歇</td>
											
										</tr>
										<tr>
											<td>10:30-11:10</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>11:10-11:50</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>11:50-14:00</td>
											<td>午餐，午间休息</td>
											<td>中餐厅</td>
										</tr>
										<tr>
											<td style="vertical-align:middle">14:00-17:30</td>
											<td>分组报告：</td>
											<td>分会场</td>
										</tr>
										<tr>
											<td>17:30-19:30</td>
											<td>晚餐</td>
											<td>中餐厅</td>
										</tr>
									</table>
								</p>
								<p><b>10月29日</b></p>
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										<tr>
											<td width="20%" rowspan="2" style="vertical-align:middle">8:30-11:50</td>
											<td>分组报告：</td>
											<td width="20%">分会场</td>
										</tr>
										<tr>
											<td>展览和展示无人系统</td>
											<td>户外</td>
											
										</tr>
										<tr>
											<td>11:50-14:00</td>
											<td>午餐，午间休息</td>
											<td>中餐厅</td>
										</tr>
										<tr>
											<td>14:00-14:40</td>
											<td>大会报告</td>
											<td rowspan="6" style="vertical-align:middle">主会场</td>
											
										</tr>
										<tr>
											<td>14:40-15:20</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>15:20-15:30</td>
											<td>茶歇</td>
										</tr>
										<tr>
											<td>15:30-16:10</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>16:10-16:50</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>16:50-17:30	</td>
											<td>闭幕式，优秀论文颁奖	</td>
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
				<b>会议议程</b>
				</h3>
            </div>
			<p>稍后更新<p>
			<%--<p><b>10月28日</b></p>
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										
										<tr>
											<td>8:30-9:00	</td>						
											<td>开幕式，领导讲话</td>
											<td rowspan="6" style="vertical-align:middle">14:00-18:00</td>
										</tr>
										<tr>
											<td>9:00-9:40</td>
											<td>大会报告</td>
											
										</tr>
										<tr>
											<td>9:40-10:20</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>10:20-10:30</td>
											<td>茶歇</td>
											
										</tr>
										<tr>
											<td>10:30-11:10</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>11:10-11:50</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>11:50-14:00</td>
											<td>午餐，午间休息</td>
											<td>中餐厅</td>
										</tr>
										<tr>
											<td  rowspan="2" style="vertical-align:middle">14:00-17:30</td>
											<td>分组报告：</td>
											<td>分会场</td>
										</tr>
										<tr>
											<td>展览和展示无人系统</td>
											<td>户外</td>
										</tr>
										<tr>
											<td>17:30-19:30</td>
											<td>晚餐</td>
											<td>中餐厅</td>
										</tr>
									</table>
								</p>
								<p><b>10月29日</b></p>
								<p class="editContent text-center">
									<table class="table table-bordered table-hover table-striped">
										<tr>
											<td rowspan="2" style="vertical-align:middle">8:30-11:50</td>						
											<td>分组报告：</td>
											<td>分会场</td>
										</tr>
										<tr>
											<td>展览和展示无人系统</td>
											<td>户外</td>
											
										</tr>
										<tr>
											<td>11:50-14:00</td>
											<td>午餐，午间休息</td>
											<td>中餐厅</td>
										</tr>
										<tr>
											<td>14:00-14:40</td>
											<td>大会报告</td>
											<td rowspan="6" style="vertical-align:middle">主会场</td>
											
										</tr>
										<tr>
											<td>14:40-15:20</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>15:20-15:30</td>
											<td>茶歇</td>
										</tr>
										<tr>
											<td>15:30-16:10</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>16:10-16:50</td>
											<td>大会报告</td>
										</tr>
										<tr>
											<td>16:50-17:30	</td>
											<td>闭幕式，优秀论文颁奖	</td>
										</tr>
									</table>
								</p>	--%>
			
		</div>
    </section>
	<hr>
	<section id="Invited_Sessions" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>特邀报告</b>
				</h3>
            </div>
			<p>稍后更新<p>
		</div>
    </section>
	<hr>
	<section id="Submission" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>投稿</b>
				</h3>
            </div>
			<h4>★ 论文投稿</h4>
			<p class="t-indent">请作者在2017年7月1日前通过<a href="javascript:;" id="a-link-submission"><span style="color:red;">www.icus.org.cn/ICUS2017/Submission</span></a>提交论文初稿的pdf格式文件。会议接受英文稿件。初稿论文不得超过8页。论文经过评审程序录用后，提交的终稿论文限制在8页内，但超出6页的部分需按页交纳版面费。</p>
			<br>
			<h4>★ 投稿声明</h4>
			<p><span style="font-size:30px;">☛ </span>IEEE ICUS 2017现场交流和会议论文集收录论文的语言为英文；</p>
			<p><span style="font-size:30px;">☛ </span>论文必须按照IEEE模板严格进行排版，否则将并且无法进入IEEE Xplore；</p>
			<p><span style="font-size:30px;">☛ </span>按照国际学术会议惯例，IEEE ICUS 2017将剔除No Show论文，即录用的论文至少一位作者务必到会宣讲，若着实不能到会宣讲，可找他人代宣讲，否则录用后的论文将不送IEEE Xplore数据库，也不被EI收录。</p>
			<br>
			<h4>★ 终稿要求</h4>
			<h5>本届会议出版光盘论文集。为了做好论文集的出版工作，请您协助做好以下工作：</h5>
			<p>1、长度 </p>
			<p>每篇论文限制为A4纸6页以内，系统接收不超过8页的论文，多于6页的部分每页收超页费300元。</p>
			<p>2、排版</p>
			<p>接收MS Word排版论文。</p>
			<p>3、终稿截止日期</p>
			<p>2017年8月30日。 </p>
			<br>
			<h4>★ 论文模板</h4>
			<p class="t-indent">会议提供MS Word模板。我们强烈建议您的论文终稿使用会议模板进行编排。如果您使用以前版本的模板，请点击英文模板或者LaTeX模板进行下载。您也可以不使用这些模板，但必须严格按照模板中的规范编排您的论文。如果您使用MS Word 2007及以上版本编排论文，请使用MS Word 2003兼容格式。</p>
			<br>
			<h4>★ 重要提示</h4>
			<p>1、所有录用论文的修改稿必须严格按照IEEE ICUS 2017 论文模板投稿，并务必通过IEEE PDF eXpress的在线检查且提交PDF检查通过报告，IEEE PDF eXpress在线检查网址：http://www.pdf-express.org/. IEEE ICUS 2017的ID：37528XP. 没有通过在线检查的论文将无法收录到 IEEE Xplore，也不能被EI Compendex检索。</p>
			<p>2、所有论文作者务必自行进行在线剽窃检查, 并在线提交剽窃检查系统自动生成的格式检查报告，检查报告显示相似度超过20%的稿件将直接退稿，剽窃在线检查网址：http://veriguide1.cse.cuhk.edu.hk/。</p>
			<p>3、所有录用论文务必在线提交作者签名并扫描的IEEE版权转让协议。<a href="#">请点击这里</a>，下载授权表。</p>
			<p>4、口头报告每篇论文报告时间为15分钟（包含讨论），会议提供计算机（装有Microsoft Windows 和Microsoft PowerPoint）及投影设备，请报告人在分组报告开始前10 分钟到分组主席处报到并将报告文件拷入计算机。张贴论文要求内容简洁，字迹清晰，版面可进行一定的艺术加工。字迹至少应在1米外清晰可见。张贴论文的左上角必须注明稿件编号，可用双面胶或透明胶粘贴到展板上，届时会有工作人员为代表提供张贴所需工具并协助代表张贴。</p>
		</div>
    </section>
	<hr>
	    <section id="committee" class="services service-section">
        <div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>组织架构</b>
				</h3>
            </div>
            <div class="row">
                <div class="col-md-9 col-sm-9 services">
				 <h4>★ 国际咨询/指导委员会</h4>
				 <p>Hao Dai，           中国</p>
				 <p>王飞跃，            中国</p>
				 <p>陈阳泉，            美国</p>
				 <p>Frank L. Lewis，    美国</p>
				 <p>Chai Wah Wu，       美国</p>
				 <p>Yang Shi，          加拿大</p>
				 <p>Youmin Zhang，      加拿大</p>
				 <p>Simon X. Yang，     加拿大</p>
				 <p>Erwin Prassler，    德国</p>
				 <p>Maciej Ogorzalek，  波兰</p>
				 <p>Quanmin Zhu，       英国</p>
				 <p>Didier Theilliol，  法国</p>
				 <p>Aarne Halme，       芬兰</p>
				 <p>Lihua Xie，         新加坡</p>
				 <p>Ben M.Chen，        新加坡</p>
				 <p>余星火，            澳大利亚</p>
				 <p>吕金虎，            中国</p>
				 <p>陈关荣，            中国</p>
				 <p>胡昌华，            中国</p>
				 <p>王建中，            中国</p>
				 <p><b>大会主席</b></p>
				 <p>李德毅， 中国工程院院士，    中国</p>
				 <p>陈  杰， 北京理工大学，      中国</p>
				 <p><b>大会副主席</b></p>
				 <p>秦继荣，中国指挥与控制学会， 中国</p>
				 <p>陈鹏万， 北京理工大学，      中国</p>
				 <p>胡纪斌， 北京理工大学，      中国</p>
				 <p><b>程序委员会主席</b></p>
				 <p>李东光， 北京理工大学，      中国</p>
				 <p><b>程序委员会副主席</b></p>
				 <p>潘  泉， 中国  </p>
				 <p>丁文锐， 中国</p>
				 <p>徐  欣， 中国</p>
				 <p>杜志江， 中国</p>
				 <p>陈哨东， 中国 </p>
				 <p>孟  红， 中国</p>
				 <p>何玉庆， 中国 </p>
				 <p>高  敏， 中国</p>
				 <p><b>全体会议和半全体会议主席</b></p>
				 <p>王亚斌， 中国 </p>
				 <p>刘建华， 中国</p>
				 <p><b>宣传/区域主席</b></p>
				 <p>陈阳泉，               美国</p>
				 <p>Yantao Shen，          美国</p>
				 <p>Shijun Guo，           英国</p>
				 <p>Roland Hin Kwan Wong， 英国</p>
				 <p>Walter Sweeting，      英国</p>
				 <p>Dhammika Widanalage，  英国</p>
				 <p>Youmin Zhang，         加拿大</p>
				 <p>陈  曦， 中国</p>
				 <p>李道春， 中国</p>
				 <p>冯  星， 中国</p>
				 <p>沈  卫，    中国</p>
				 <p>王树山，    中国</p>
				 <p>Lihua Xie， 新加坡</p>
				 <p>张定国，    中国</p>
				 <p>钱志辉，    中国</p>
				 <p>胡天江，    中国</p>
				 <p>于  敏，    中国</p>
				 <p>吴文健，    中国</p>
				 <p>胡劲文，    中国</p>
				 <p>林  平，    中国</p>
				 <p>季海波， 中国</p>
				 <p>宋遒志， 中国</p>
				 <p>郭美芳，    中国</p>
				 <p>王正杰，    中国</p>
				 <p><b>有组织/邀请的会议主席</b></p>
				 <!--<p><b>Organized/Invited Session Chairs</b></p>-->
				 <p>贾云得， 中国</p>
				 <p>胡劲文， 中国</p>
				 <p>苏  波， 中国</p>
				 <p>苑士华， 中国</p>
				 <p>段海滨， 中国</p>
				 <p>王树山， 中国</p>
				 <p>傅调平， 中国</p>
				 <p>王  华， 中国</p>
				 <p>李文彬， 中国</p>
				 <p>刘跃峰， 中国</p>
				 <p>刘培志， 中国</p>
				 <p>涂群章， 中国</p>
				 <p>娄文忠， 中国</p>
				 <p>于进勇， 中国</p>
				 <p><b>行业/展览主席</b></p>
				 <p>何  鹏， 中航工业613所，         中国</p>
				 <p>付俊辉， 北京宇达科技有限公司，   中国</p>
				 <p>陈少春， 北京海鹰科技情报研究所， 中国</p>
				 <p>苏     波， 北方无人机研发中心，  中国</p>
				 <p>孙柏原， AUVSC，                  中国</p>
				 <p><b>出版主席</b></p>
				 <p>徐欣， 国防科技大学， 中国</p>
				 <p><b>注册主席</b></p>
				 <p>杨成伟， 中国  </p>
				 <p>李东方， 中国</p>
				 <p>樊洁茹， 中国</p>
				 <p>于珊珊， 中国</p>
				 <p><b>财务主席 </b></p>
				 <p>曹旭平， 中国 </p>
				 <p>彭  腾， 中国</p>
					                                     
                        <br/>
                    
                </div>
                <div class="col-md-3 col-sm-6 services text-center"> <span class="icon fa fa-clock-o"> 登记处</span>
                    <div class="services-content">
                        <p style="padding-top:10px;">会议日期：2017年10月27——29 中国，北京</p>
						<c:if test="${empty register}">
                        <a href="javascript:;" onclick="javacript:loginFormFadeIn_cn();" class="btn btn-lg btn-default" id="btn-ljbm">登录</a>
						</c:if>
                    </div>
                </div>

				<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center">  主办单位</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 美国电气和电子工程师协会（IEEE）</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 北京理工大学（BIT）</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#">中国指挥与控制学会（CICC）</a>
                                <br/>
                               
                            </div>
                        </p>
                    </div>
                </div>





                <div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center">承办单位</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 中国指挥与控制学会无人系统专委会</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 北京理工大学机电动态控制（国家级）重点实验室</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 北京理工大学车辆与传动（国家级）重点实验室</a>
                                <br/>
                                <br/>
								<i class="fa fa-arrow-circle-right"></i><a href="#"> 光电控制技术（国家级）重点实验室</a>
                            </div>
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-tasks text-center"> 协办单位</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 中国无人系统院士工作站</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 北京北航天宇长鹰无人机科技有限公司</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 西北工业大学信息融合技术教育部重点实验室</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 国防科技大学机电一体化与自动化学院无人系统实验室</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 《无人系统技术》编辑部</a>
								<br/>
								<br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 北京格物明理教育咨询有限公司</a>
								<br>
								<br>
								<i class="fa fa-arrow-circle-right"></i><a href="#"> 国际仿生工程学会</a>
                            </div>
                        </p>
                    </div>
                </div>
				<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center"> 联系信息</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 程序委员会秘书处：邓宏彬</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 电话：010-68912761</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 手机：18610501349</a>
                                <br/>
                                <br>
								<i class="fa fa-arrow-circle-right"></i><a href="#"> 邮编：100081</a>

                            </div>
                        </p>
                    </div>
                </div>
				<div class="col-md-3 col-sm-6 services"> <span class="icon fa fa-home text-center"> 组织委员会秘书处：</span>
                    <div class="services-content">
                        <p>
                            <div style="padding-top:10px;margin-left:auto;margin-right:auto">
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 咸佳音</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 电话：010-53680657</a>
                                <br/>
                                <br/>
                                <i class="fa fa-arrow-circle-right"></i><a href="#"> 手机：13693030227</a>
                                <br/>
                                <br>
								<i class="fa fa-arrow-circle-right"></i><a href="#"> 邮编：100080</a>

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
				<b>注册费</b>
				</h3>
            </div>
			<p class="editContent text-center">
				<table class="table table-bordered table-hover table-striped">
					<thead>
						<tr>
						<th colspan="2" rowspan="2">注册费</th>
						<th>预注册</th>
						<th>现场注册</th>
						</tr>
						<tr>
							<td>9月15日或之前</td>
							<td>9月15日之后</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="2">提交1篇论文的作者或参会者</td>
							<td>3000元</td>
							<td>3300元</td>
						</tr>
						<tr>
							<td colspan="2">学生、IEEE和CICC*会员、TCUS**委员</td>
							<td>2800元</td>
							<td>3100元</td>
						</tr>
						<tr>
							<td colspan="2">提交2篇论文的作者或参会者</td>
							<td>3500元</td>
							<td>3800元</td>
						</tr>
						<tr>
							<td colspan="2">学生、IEEE和CICC会员、TCUS委员</td>
							<td>3200元</td>
							<td>3500元</td>
						</tr>
						<tr>
							<td colspan="2">无论文的参会人员</td>
							<td>1800元</td>
							<td>2000元</td>
						</tr>
						<tr>
							<td colspan="2">学生、IEEE和CICC会员、TCUS委员</td>
							<td>1500元</td>
							<td>1700元</td>
						</tr>
						<tr>
							<td colspan="2">除推荐到国际期刊专辑的论文以外，会议论文超页费用</td>
							<td colspan="2">1000元/页</td>
						</tr>
					</tbody>
				</table>
				<p style="color:red;"><b>说明：</b></p>
				<p>(1) *：中国指挥与控制学会。**：无人系统专业委员会。</p>
				<p>(2) 超页费用：所有不超过（含）6页的论文不需缴纳此费用。每篇论文最多可超出2页（即总共8页），并以1000元/页缴纳超页费用。会议不接收超过8页的论文。</p>
				<p>(3) 注册费用一旦缴纳，不予退款。</p>
			</p>
		</div>
	</section>
	<hr>
	<section id="Download" class="video-section">
		<div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>资料下载</b>
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
				<b>会场</b>
				</h3>
            </div>
			<h4>★ 交通</h4>
			<img src="static/images/jiaotong.png" class="jiaotong" width="800" style="display:block;margin:0 auto;">
			<br>
			<h4>★ 飞机：</h4>
			<p>1、北京首都国际机场——地铁：机场线（开往六里桥主枢纽）——西直门——换乘4号线地铁（开往安河桥北）——魏公村下车A西北口出，步行即到达北京理工大学</p>
			<p>2、北京南苑机场——地铁：机场线（开往公主坟）——新宫——换乘4号线地铁（开往安河桥北）——魏公村下车A西北口出，步行即到达北京理工大学</p>
			<br>
			<h4>★ 火车：</h4>
			<p>1、北京站——地铁：2号线地铁（开往崇文门）——西直门——换乘4号线地铁（开往安河桥北）——魏公村下车A西北口出，步行即到达北京理工大学</p>
			<p>2、北京西站——地铁：9号线地铁（开往国家图书馆）——国家图书馆——换乘4号线地铁（开往安河桥北）——魏公村下车A西北口出，步行即到达北京理工大学</p>
			<p>3、北京南站——地铁：94号线地铁（开往安河桥北）——魏公村下车A西北口出，步行即到达北京理工大学</p>
			<br><br>
			
			<h4>★ 会场周边酒店</h4>
			<h5>北京理工国际教育交流中心 </h5>
			<p>地址：北京海淀区北三环西路66号 ( 万柳|魏公村|中关村) </p>
			<p>联系方式：010-68945611</p>
			<img src="static/images/jiudian.png" class="jiudian" width="800" style="display:block;margin:0 auto;">
			<br>
			<h4>★ 飞机：</h4>
            <p>1、北京首都机场——地铁：机场线（开往公主坟）——友谊宾馆下车，步行700米即到北京理工国际教育交流中心</p>
			<p>2、北京南苑机场——地铁：机场线（开往公主坟）——公主坟南站下车，步行80米——乘坐323路公交车（开往知春里）——三义庙下车，步行300米即到北京理工国际教育交流中心</p>
			<br>
			<h4>★ 火车：</h4>
			<p>1、北京站——地铁：2号线地铁（开往崇文门）——西直门下车——换乘4号线地铁（开往安河桥北）——人民大学站D口出，步行1.3公里即到北京理工国际教育交流中心</p>
			<p>2、北京南站——地铁：4号线地铁（开往安河桥北）——人民大学站D口出，步行1.3公里即到北京理工国际教育交流中心</p>
			<p>3、北京西站：地铁：9号线地铁（开往国家图书馆）——国家图书馆——换乘4号线地铁（开往安河桥北）——人民大学站D口出，步行1.3公里即到北京理工国际教育交流中心</p>
			<br>
			<p class="t-indent">酒店位于西北三环与颐和园路交叉路口，总建筑面积20000平方米，造型典雅、设施先进、功能齐全，集会议、公寓、写字间、餐饮娱乐于一体。酒店配备中央空调系统、保安、电梯、消防自动监控系统、DDN网络系统、视听通讯系统、CATV系统、冷热水系统等设施。一层设有商务中心、餐饮、酒吧，二层为多功能厅、中餐厅和各式包间，地下一、二层有保龄球、台球等健身娱乐设施。酒店配有150席位同声传译的报告厅一个，功能齐备、风格各异的会议室四个，可同时容纳约200人会议、食宿。酒店有各式规格的客房120套。首先位置很好，交通十分方便，出门就是公交站，再往前走就是机场大巴。</p>
			<br><br>

			<h4>★ 北京介绍 </h4>
			<p class="t-indent">北京历史悠久，文化灿烂，是首批国家历史文化名城、中国四大古都之一和世界上拥有世界文化遗产数最多的城市，3060年的建城史孕育了故宫、天坛、八达岭长城、颐和园等众多名胜古迹。早在七十万年前，北京周口店地区就出现了原始人群部落“北京人”。公元前1045年，北京成为蓟、燕等诸侯国的都城。公元938年以来，北京先后成为辽陪都、金中都、元大都、明清国都。1949年10月1日成为中华人民共和国首都。</p> 
			<p>2015年末，北京全市常住人口2170.5万人，比2014年末增加18.9万人。其中，常住外来人口822.6万人，占常住人口的比重为37.9%。2015年北京市实现地区生产总值22968.6亿元，比2014年增长6.9%。</p>
			<p class="t-indent">2015年7月31日，国际奥委会主席巴赫宣布北京携手张家口获得2022年冬季奥林匹克运动会的举办权。北京由此成为全球首个既举办过夏季奥运会又即将举办冬季奥运会的城市。北京是全球拥有世界遗产（7处）最多的城市，是全球首个拥有世界地质公园的首都城市。北京对外开放的旅游景点达200多处，有世界上最大的皇宫紫禁城、祭天神庙天坛、皇家园林北海公园、颐和园和圆明园，还有八达岭长城、慕田峪长城以及世界上最大的四合院恭王府等名胜古迹。北京市共有文物古迹7309项，99处全国重点文物保护单位（含长城和京杭大运河的北京段）、326处市级文物保护单位、5处国家地质公园、15处国家森林公园。</p>
			<p class="t-indent">北京是全球拥有世界遗产（7处）最多的城市，是全球首个拥有世界地质公园的首都城市。北京对外开放的旅游景点达200多处，有世界上最大的皇宫紫禁城、祭天神庙天坛、皇家园林北海公园、颐和园和圆明园，还有八达岭长城、慕田峪长城以及世界上最大的四合院恭王府等名胜古迹。北京市共有文物古迹7309项，99处全国重点文物保护单位（含长城和京杭大运河的北京段）、326处市级文物保护单位、5处国家地质公园、15处国家森林公园。</p>
			<br>
			<h4>★ 北京市旅游景点 </h4>
			
			<div class="row">
				<div class="col-sm-6">
					<h5>世界文化遗产</h5>
					<p>故宫<br>
						长城<br>
						周口店北京人遗址<br>
						天坛<br>
						颐和园<br>
						明十三陵<br>
						京杭大运河　<br>
						世界地质公园<br>
						北京房山世界地质公园<br>
						中国延庆世界地质公园</p>
				</div>
				<div class="col-sm-6">
					<h5>国家级风景名胜区</h5>
					<p>
						八达岭―十三陵<br>
						石花洞<br>
						八大处<br>
						恭王府</p>
					<h5>中国历史文化名街</h5>
					<p>
						国子监街<br>
						烟袋斜街<br>
						大栅栏<br>
						地安门内大街</p>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<h5>中国历史文化名镇</h5>
					<p>
						密云县古北口镇<br>
						九渡河镇<br>
						东坝古镇<br>
						王四营</p>
					<h5>中国历史文化名村</h5>
					<p>斋堂镇爨底下村<br>
						斋堂镇灵水村<br>
						龙泉镇琉璃渠村<br>
						密云新城子吉家营</p>
				</div>
				<div class="col-sm-6">
					<h5>中国世界遗产预备名单</h5>
					<p>
						大运河<br>
						北京云居寺塔<br>
						藏经洞及石经<br>
						北京古观象台<br>
						北海公园<br>
						卢沟桥</p>
					<h5>燕京八景</h5>
					<p>太液秋风<br>
						琼岛春阴<br>
						金台夕照<br>
						蓟门烟树<br>
						西山晴雪<br>
						玉泉趵突<br>
						卢沟晓月<br>
						居庸叠翠</p>
				</div>				
			</div>
			<br>
			<h4>★ 风俗特产 </h4>
			<p class="t-indent">北京是中国四大古都之一。有很多地方特色的民风习俗：北京小吃、京剧、京韵大鼓、相声、舞台剧、铁板快书、景泰蓝、牙雕、毛猴、漆雕、赛蝈蝈和蝈蝈笼、吹糖人、捏面人等等。</p>
			<br><br>

			<h4>★ 缴费 </h4>
			<p>1、注册费标准 (特别注意：注册费只能登录自己会议的注册系统链接在线支付，住宿订金只能通过银行转账)。</p>
			<p>2、论文注册作者：3500元（学生注册优惠500元），论文其他作者（非论文注册作者）如参会按非论文参会人员注册价格进行注册。</p>
			<p>· 每篇论文应至少有一位作者缴纳注册费；</p>
			<p>· 有两篇论文的同一作者，第二篇论文加收版面费1500元。同一作者多于2篇（不含两篇）的论文，需要另行注册；</p>
			<p>· 请务必在2017年9月15日之前交纳注册费。</p>
			<p>3、非论文参会人员注册：非论文参会人员可在9月15日之前登录“学术会议论文管理系统”（自己会议的注册系统链接进行在线注册，也可现场注册，注册费均为每人2000元（非论文学生代表优惠500元）；若需通过会议订协议酒店房间，则需9月5日之前通过注册的PIN号完成在线注册。如需会议费发票，将在2017年10月27日报道当天领取。</p>
		</div>
    </section>
	<hr>
    <section id="Contact Us" class="gallery section">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 services text-center">
                    <span class="icon icon-phone"><i class="fa fa-phone"></i> 联系我们</span>
                    <div class="services-content">
                        <p class="wow fadeInLeft animated" style="padding-top:30px;text-align:left">
                            IEEE ICUS2017 Conference Secretariat</p>
                         <p class="wow fadeInLeft animated" style="text-align:left">Beijing Institute of Technology, China</p> 
                         <p class="wow fadeInLeft animated" style="text-align:left">电话： +8610-6891-2761（邓宏彬）</p>
                         <p class="wow fadeInLeft animated" style="text-align:left">邮箱： denghongbin@bit.edu.cn</p>
                         <p class="wow fadeInLeft animated" style="text-align:left">网址：<a href="http://www.c2.org.cn" title="ICUS"> http://www.c2.org.cn</a>&nbsp;&nbsp;or&nbsp;&nbsp;<a href="http://www.icus.org.cn" title="ICUS">http://www.icus.org.cn</a></P>
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
                    <p><a target="_blank" href="http://www.esciences.com.cn/"> China e-Sciences tech Ltd. </a> 技术支持.
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