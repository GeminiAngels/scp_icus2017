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
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ICUS2017</title>

<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/flexslider.css">
<link rel="stylesheet" href="<%=path%>/static/css/jquery.fancybox.css">
<link rel="stylesheet" href="<%=path%>/static/css/responsive.css">
<link rel="stylesheet" href="<%=path%>/static/css/animate.min.css">
<link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
<link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=path%>/static/css/bootstrap-select.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/main.css">
<style>
	.bootstrap-select .form-control{
		padding:0;
	}
	#contact .btn-default{
		border:0;
		border-radius:0;
		color:#555;
	}

	#contact button.btn{
		margin-top:0;
	}
</style>
<script type="text/javascript">
	var app = {
		ctx : '<%=path%>',
		curl : window.location.href,
    	maodian : '${position}'||'#contact',
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
			firstname: '${register.firstname}',
			lastname: '${register.lastname}',
			countryarea: '${register.countryarea}',
			sfbg:'${register.sfbg}',
			bgtm:'${register.bgtm}',
			sfkc:'${register.sfkc}',
			sfzs:'${register.sfzs}',
			message : '${register.message}'
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

<!-- header section --> 
<!-- contact section -->
<section id="contact" class="section">
	<div class="container register-form">
		<div class="section-header">
			<h2 class="wow fadeInDown animated">Conference Register</h2>
	        <p class="wow fadeInDown animated">Registered members enjoy sign up, upload papers, such as the Conference services for meetings.</p>
    	</div>
    	<div class="row wow fadeInUp animated">
			<form id="registerForm">
				<input type="hidden" name="id" id="regid"/>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label>First Name：</label>
					<input type="text" name="firstname" id="firstname" value="" class="form-control" autocomplete="off" placeholder="First Name"/>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label>Last Name：</label>
					<input type="text" name="lastname" id="lastname" value="" class="form-control" autocomplete="off" placeholder="Last Name"/>
				</div>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Email:</label>
					<input type="email" name="email" id="email" value="" class="form-control" autocomplete="off"  placeholder="Email"/>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">Phone：</label>
					<input type="text" name="telphone" id="telphone" value="" class="form-control" autocomplete="off"  placeholder="Telephone"/>
				</div>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label>Password：</label>
					<input type="password" name="password" id="password" value="" class="form-control" autocomplete="off" placeholder="Password"/>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">Confirm Password：</label>
					<input type="password" name="repassword" id="repassword" value="" class="form-control" autocomplete="off"  placeholder="Password"/>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2" id="password-errorinfo" style="color:red">
			</div>
			<!--
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Name：</label>
					<input type="text" name="nickname" id="nickname" value="" class="form-control" autocomplete="off"  placeholder="Real Name/Nick Name"/>
				</div>
			</div>
			-->
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Gender：</label>
				<div class="form-control" style="line-height:20px;">
					<label class="radio-inline">
					  <input type="radio" name="sex" id="sex1" value="男" checked> Male
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sex" id="sex2" value="女"> Female
					</label>
				</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">Title：</label>
					<input type="text" name="job" id="job" value="" class="form-control" autocomplete="off" placeholder="Title"/>
				</div>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Work Unit：</label>
				<input type="text" name="company" id="company" value="" class="form-control" autocomplete="off" placeholder="Work Unit"/>
				</div>
			</div>
			<div class="col-sm-4">
					<div class="inputContainer">
						<label>Countries and regions:</label>
						<select id="basic" name="countryarea" class="selectpicker show-tick form-control" data-live-search="true" style="margin-top:0;">
						  <optgroup label="Other">
							<option data-subtext="其他地区/国家">Other</option>
						  </optgroup>
						  <optgroup label="A initial letter">
							<option data-subtext="阿富汗">AF - Afghanistan</option>
							<option data-subtext="阿尔巴尼亚">AL - Albania</option>
							<option data-subtext="阿尔及利亚">AZ - Algeria</option>
							<option data-subtext="东萨摩亚">AS - American Samoa</option>
							<option data-subtext="安道尔">AD - Andorra  </option>
							<option data-subtext="澳大利亚">AU - Australia </option>
							<option data-subtext="奥地利">AT - Austria   </option>
							<option data-subtext="阿根廷">AR - Argentina </option>
						  </optgroup>
						  <optgroup label="B initial letter">
							<option data-subtext="巴哈马">BF - Bahamas  </option>
							<option data-subtext="巴林">BH - Bahrain </option>
							<option data-subtext="巴巴多斯">BB - Barbados </option>
							<option data-subtext="孟加拉">BD - Bangladesh  </option>
							<option data-subtext="白俄罗斯">BY - Belarus </option>
							<option data-subtext="巴西">BR - Brazil  </option>
						  </optgroup>
						  <optgroup label="C initial letter">
							<option data-subtext="柬埔寨">KH - Cambodia (Internet)</option>
							<option data-subtext="柬埔寨">CB - Cambodia (CIA World Fact Book)</option>
							<option data-subtext="喀麦隆">CM - Cameroon</option>
							<option data-subtext="加拿大">CA - Canada</option>
							<option data-subtext="中非">CF - Central African Republic </option>
							<option data-subtext="中国">CN - China  </option>
							<option data-subtext="智利">CL - Chile   </option>
							<option data-subtext="刚果">CD - Congo, Democratic Republic</option>
							<option data-subtext=" 克罗地亚 ">HR - Croatia (Hrvatska)</option>
							<option data-subtext=" 古巴 ">CU - Cuba </option>
							<option data-subtext=" 捷克 ">CZ - Czech Republic  </option>
						  </optgroup>
						  <optgroup label="D initial letter">
							<option data-subtext="丹麦">DK - Denmark </option>
							<option data-subtext="吉布提">DJ - Djibouti  </option>
							<option data-subtext="多米尼加共和国">DM - Dominica  </option>
							<option data-subtext="多米尼加联邦">DO - Dominican Republic </option>
						  </optgroup>
						  <optgroup label="E initial letter">
							<option data-subtext="东帝汶">TP - East Timor  </option>
							<option data-subtext="厄瓜多尔">EC - Ecuador    </option>
							<option data-subtext="埃及">EG - Egypt  </option>
							<option data-subtext="萨尔瓦多">SV - El Salvador   </option>
							<option data-subtext="赤道几内亚">GQ - Equatorial Guinea  </option>
							<option data-subtext="爱沙尼亚">EE - Estonia  </option>
							<option data-subtext="埃塞俄比亚">ET - Ethiopia </option>
						  </optgroup> 
						  <optgroup label="F initial letter">
							<option data-subtext="芬兰">FI - Finland </option>
							<option data-subtext="法国">FR - France     </option>
						  </optgroup>
						  <optgroup label="G initial letter">
							<option data-subtext="冈比亚">GM - Gambia  </option>
							<option data-subtext="格鲁吉亚">GE - Georgia   </option>
							<option data-subtext="德国">DE - Germany  </option>
							<option data-subtext="加纳">GH - Ghana  </option>
							<option data-subtext="直布罗陀">GI - Gibraltar  </option>
							<option data-subtext="英国">GB - Great Britain (UK)   </option>
							<option data-subtext="希腊">GR - Greece  </option>
							<option data-subtext="格陵兰岛">GL - Greenland </option>
							<option data-subtext="格林纳达">GD - Grenada   </option>
						  </optgroup>
						  <optgroup label="H initial letter">
							<option data-subtext="海地"> HT - Haiti  </option>
							<option data-subtext="赫德和麦克唐纳群岛">HM - Heard and McDonald Islands  </option>
							<option data-subtext="洪都拉斯">HN - Honduras  </option>
							<option data-subtext="中国香港特区">HK - Hong Kong  </option>
							<option data-subtext="匈牙利">HU - Hungary </option>
						  </optgroup>
						  <optgroup label="I initial letter">
							<option data-subtext="冰岛">IS - Iceland </option>
							<option data-subtext="印度">IN - India   </option>
							<option data-subtext="印度尼西亚">ID - Indonesia </option>
							<option data-subtext="伊朗">IR - Iran   </option>
							<option data-subtext="伊拉克">IQ - Iraq  </option>
							<option data-subtext="爱尔兰">IE - Ireland   </option>
							<option data-subtext="以色列">IL - Israel  </option>
							<option data-subtext="意大利">IT - Italy  </option>
						  </optgroup>
						  <optgroup label="J initial letter">
							<option data-subtext="牙买加">JM - Jamaica </option>
							<option data-subtext="日本">JP - Japan  </option>
							<option data-subtext="约旦">JO - Jordan  </option>
						  </optgroup>
						  <optgroup label="K initial letter">
							<option data-subtext="哈萨克斯坦"> KZ - Kazakhstan </option>
							<option data-subtext="肯尼亚">KE - Kenya </option>
							<option data-subtext="基里巴斯">KI - Kiribati   </option>
							<option data-subtext="韩国">KP - Korea (North)   </option>
							<option data-subtext="朝鲜">KR - Korea (South) </option>
							<option data-subtext="科威特">KW - Kuwait   </option>
							<option data-subtext="吉尔吉斯斯坦">KG - Kyrgyzstan  </option>
						  </optgroup>
						  <optgroup label="L initial letter">
							<option data-subtext="老挝"> LA - Laos  </option>
							<option data-subtext="拉托维亚">LV - Latvia  </option>
							<option data-subtext="黎巴嫩">LB - Lebanon  </option>
							<option data-subtext="列支顿士登">LI - Liechtenstein  </option>
							<option data-subtext="利比里亚">LR - Liberia  </option>
							<option data-subtext="利比亚">LY - Libya  </option>
							<option data-subtext="莱索托">LS - Lesotho  </option>
							<option data-subtext="立陶宛">LT - Lithuania  </option>
							<option data-subtext="卢森堡">LU - Luxembourg </option>
						  </optgroup>
						  <optgroup label="M initial letter">
							<option data-subtext="中国澳门特区"> MO - Macau </option>
							<option data-subtext="马达加斯加">MG - Madagascar   </option>
							<option data-subtext="马拉维">MW - Malawi  </option>
							<option data-subtext="马来西亚">MY - Malaysia </option>
							<option data-subtext="马尔代夫">MV - Maldives  </option>
							<option data-subtext="马里">ML - Mali   </option>
							<option data-subtext="马耳他">MT - Malta  </option>
							<option data-subtext="马绍尔群岛">MH - Marshall Islands  </option>
							<option data-subtext="法属马提尼克群岛">MQ - Martinique  </option>
							<option data-subtext="毛里塔尼亚">MR - Mauritania  </option>
							<option data-subtext="毛里求斯">MU - Mauritius   </option>
						  </optgroup>
						  <optgroup label="N initial letter">
							<option data-subtext="纳米比亚"> NA - Namibia </option>
							<option data-subtext="瑙鲁">NR - Nauru  </option>
							<option data-subtext="尼泊尔">NP - Nepal </option>
							<option data-subtext="荷兰">NL - Netherlands  </option>
							<option data-subtext="荷属安德列斯">AN - Netherlands Antilles  </option>
							<option data-subtext="中立区（沙特-伊拉克间）">NT - Neutral Zone  </option>
							<option data-subtext="新卡里多尼亚">NC - New Caledonia   </option>
							<option data-subtext="新西兰">NZ - New Zealand (Aotearoa)  </option>
							<option data-subtext="尼加拉瓜">NI - Nicaragua   </option>
							<option data-subtext="尼日尔">NE - Niger   </option>
							<option data-subtext="尼日利亚">NG - Nigeria   </option>
							<option data-subtext="纽爱">NU - Niue   </option>
							<option data-subtext="诺福克岛">NF - Norfolk Island  </option>
							<option data-subtext="北马里亚纳群岛">MP - Northern Mariana Islands  </option>
							<option data-subtext="挪威">NO - Norway </option>
						  </optgroup>
						  <optgroup label="O initial letter">
							<option data-subtext="阿曼">OM - Oman </option>
						  </optgroup>
						  <optgroup label="P initial letter">
							<option data-subtext="巴基斯坦">PK - Pakistan  </option>
							<option data-subtext="帕劳">PW - Palau </option>
							<option data-subtext="巴拿马">PA - Panama </option>
							<option data-subtext="巴布亚新几内亚">PG - Papua New Guinea  </option>
							<option data-subtext="巴拉圭">PY - Paraguay </option>
							<option data-subtext="秘鲁">PE - Peru  </option>
							<option data-subtext="菲律宾">PH - Philippines   </option>
							<option data-subtext="皮特克恩岛">PN - Pitcairn  </option>
							<option data-subtext="波兰">PL - Poland   </option>
							<option data-subtext="葡萄牙">PT - Portugal </option>
							<option data-subtext="波多黎各">PR - Puerto Rico  </option>
						  </optgroup>
						  <optgroup label="Q initial letter">
							<option data-subtext="卡塔尔">QA - Qatar </option>
						  </optgroup>
						  <optgroup label="R initial letter">
							<option data-subtext="法属尼留旺岛">RE - Reunion </option>
							<option data-subtext="罗马尼亚">RO - Romania </option>
							<option data-subtext="俄罗斯">RU - Russian Federation  </option>
							<option data-subtext="卢旺达">RW - Rwanda  </option>
							<option data-subtext="圣基茨和尼维斯">KN - Saint Kitts and Nevis  </option>
							<option data-subtext="圣卢西亚">LC - Saint Lucia </option>
							<option data-subtext="圣文森特和格陵纳丁斯">VC - Saint Vincent and the Grenadines   </option>
							<option data-subtext="西萨摩亚">WS - Samoa  </option>
						  </optgroup>
						  <optgroup label="S initial letter">
							<option data-subtext="圣马力诺">SM - San Marino </option>
							<option data-subtext="圣多美和普林西比">ST - Sao Tome and Principe  </option>
							<option data-subtext="沙特阿拉伯">SA - Saudi Arabia </option>
							<option data-subtext="塞内加尔">SN - Senegal  </option>
							<option data-subtext="塞舌尔">SC - Seychelles </option>
							<option data-subtext="塞拉利昂">SL - Sierra Leone  </option>
							<option data-subtext="新加坡">SG - Singapore   </option>
							<option data-subtext="斯罗文尼亚">SI - Slovenia   </option>
							<option data-subtext="斯洛伐克">SK - Slovak Republic </option>
							<option data-subtext="所罗门群岛">Sb - Solomon Islands  </option>
							<option data-subtext="索马里">SO - Somalia   </option>
							<option data-subtext="南非">ZA - South Africa    </option>
							<option data-subtext="西班牙">ES - Spain   </option>
							<option data-subtext="斯里兰卡">LK - Sri Lanka   </option>
						  </optgroup>
						  <optgroup label="T initial letter">
							<option data-subtext="中国台湾省">TW - Taiwan  </option>
							<option data-subtext="塔吉克斯坦">TJ - Tajikistan   </option>
							<option data-subtext="坦桑尼亚">TZ - Tanzania  </option>
							<option data-subtext="泰国">TH - Thailand </option>
							<option data-subtext="多哥">TG - Togo   </option>
							<option data-subtext="托克劳群岛">TK - Tokelau </option>
							<option data-subtext="汤加">TO - Tonga </option>
							<option data-subtext="特立尼达和多巴哥">TT - Trinidad and Tobago  </option>
							<option data-subtext="突尼斯">TN - Tunisia  </option>
							<option data-subtext="土尔其">TR - Turkey   </option>
							<option data-subtext="土库曼斯坦">TM - Turkmenistan   </option>
							<option data-subtext="特克斯和凯科斯群岛">TC - Turks and Caicos Islands  </option>
							<option data-subtext="图瓦卢">TV - Tuvalu </option>
						  </optgroup>
						  <optgroup label="U initial letter">
							<option data-subtext="乌干达">UG - Uganda  </option>
							<option data-subtext="乌克兰">UA - Ukraine   </option>
							<option data-subtext="阿联酋">AE - United Arab Emirates   </option>
							<option data-subtext="英国">UK - United Kingdom  </option>
							<option data-subtext="美国">US - United States </option>
							<option data-subtext="美国海外领地">UM - US Minor Outlying Islands   </option>
							<option data-subtext="乌拉圭">UY - Uruguay  </option>
							<option data-subtext="前苏联">SU - USSR (former)   </option>
							<option data-subtext="乌兹别克斯坦">UZ - Uzbekistan </option>
						  </optgroup>
						  <optgroup label="V initial letter">
							<option data-subtext="瓦努阿鲁"> VU - Vanuatu  </option>
							<option data-subtext="梵蒂岗">VA - Vatican City State (Holy See)  </option>
							<option data-subtext="委内瑞拉">VE - Venezuela   </option>
							<option data-subtext="越南">VN - Viet Nam  </option>
							<option data-subtext="英属维京群岛">VG - Virgin Islands (British)  </option>
							<option data-subtext="美属维京群岛">VI - Virgin Islands (U.S.)  </option>
						  </optgroup>
						  <optgroup label="W initial letter">
							<option data-subtext="瓦里斯和福图纳群岛"> WF - Wallis and Futuna Islands  </option>
							<option data-subtext="西撒哈拉">EH - Western Sahara  </option>
						  </optgroup>
						  <optgroup label="Y initial letter">
							<option data-subtext="也门">YE - Yemen   </option>
							<option data-subtext="南斯拉夫">YU - Yugoslavia   </option>
						  </optgroup>
						  <optgroup label="Z initial letter">
							<option data-subtext="赞比亚">ZM - Zambia  </option>
							<option data-subtext="扎伊尔">(ZR - Zaire) - See CD Congo, Democratic Republic   </option>
							<option data-subtext="津巴布韦">ZW - Zimbabwe  </option>
						  </optgroup>
						  
 
 
						</select>
					</div>
				  </form>
			</div>
			<div class="col-sm-4 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Need Visit：</label>
				<div class="form-control" style="line-height:20px;">
					<label class="radio-inline">
					  <input type="radio" name="sfkc" id="sfkc1" value="否" checked> No
					</label>
					<label class="radio-inline">
					  <input type="radio" name="sfkc" id="sfkc2" value="是"> Yes
					</label>
				</div>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="inputContainer">
				<label class="screen-reader-text">Need Report：</label>
				<div style="line-height:20px;">
					<table width="100%">
						<tr>
							<td>
								<label class="radio-inline">
									<input class="sfbg_radio" type="radio" name="sfbg" id="sfbg1" value="否" checked> No
								</label>
								<label class="radio-inline">
									<input class="sfbg_radio" type="radio" name="sfbg" id="sfbg2" value="是"> Yes
								</label>
							</td>
							<td align="right">
								<input type="text" id="sfbg_input" name="bgtm" style="width:200px;height:38px;line-height: 38px;" placeholder="Report Topics" ${empty register.sfbg or register.sfbg eq '否'?'disabled':''}/>
							</td>
						</tr>
					</table>
				</div>
				</div>
			</div>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text">Need Accommodation：</label>
				<div style="line-height:20px;">
					<label class="radio-inline">
					  <input type="radio" class="sfzs_radio" name="sfzs" id="sfzs1" value="否" checked> No
					</label>
					<label class="radio-inline">
					  <input type="radio" class="sfzs_radio" name="sfzs" id="sfzs2" value="是"> Yes
					</label>
					<!--
					<select id="sfzs_select" name="sfzs" style="margin-left:10px;width:653px;height:38px;line-height: 38px;" disabled>
						<option value="否">Accommodation Price</option>
						<option value="大床房246元/元">Big Bed Room246Yuan/Day</option>
						<option value="标准间246元/元">Standard Room 246Yuan/Day</option>
					</select>
					-->
				</div>
				</div>
			</div>
			<!-- <div class="col-sm-8 col-sm-offset-2">
				<div class="inputContainer">
				<label class="screen-reader-text"><i>留言：</i></label>
					<textarea name="message" id="message" class="form-control" autocomplete="off"></textarea>
				</div>
			</div> -->
			<div class="col-sm-8 col-sm-offset-2">
				<button id="registerBtn" name="submit" type="button" class="btn btn-primary btn-lg" style="margin-top:15px;">${not empty register?'Update Account':'Register Now'}</button>
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
      <div class="col-xs-12 text-center" style="z-index:1;">
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
<script src="<%=path%>/static/js/bootstrap-select.min.js"></script>
<script type="text/javascript">
	$(function(){
		var RegisterController = function(){
			this.form = $('#registerForm');
			var that = this;
			this.form.setValues = function(register){
				$.each(register,function(k,v){
					var input = $('input[name="'+k+'"]');
					if(input.prop('type') == 'radio') {
						$.each(input,function(i,item){
							if($(item).val() === v)
								$(item).prop('checked',true);
						});
					} else {
						input.val(v);
					}

					$('select[name="'+k+'"]').val(v);
					$('textarea[name="'+k+'"]').val(v);
				});
			}

			this.init = function(){
				var isLogin = ${not empty register};
				if(!isLogin)
					return;
				that.form.setValues(app.register);
			}
		}

		var registerController = new RegisterController();
		registerController.init();
	});
</script>
</body>
</html>