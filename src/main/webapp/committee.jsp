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
	    <section id="services" class="services service-section">
        <div class="container">
            <div class="section-header">
                <h3 class="wow fadeInDown animated">
				<b>Committee</b>
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