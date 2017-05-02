<%@page contentType="text/html;charset=utf-8" language="java"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Submission</title>
	<link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/main.css">
	<link rel="stylesheet" href="<%=path%>/static/css/bootstrap-datetimepicker.min.css">
	<link rel="stylesheet" href="<%=path%>/static/css/bootstrap-table.css">
	<link rel="stylesheet" href="<%=path%>/static/css/tougao.css">
	<style>
	.bootstrap-select .form-control{
		padding:0;
	}
	.btn-default{
		border:0;
		border-radius:0;
	}
	#contact button.btn{
		margin-top:0;
	}
	.btn-default{
		color:#555;
	}
</style>
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
	//返回首页
			function homePage(){
				window.location.href = app.ctx;
			}
</script>
</head>
<body>
	<div class="container-fluid" style="padding:0;overflow:hidden;">
	<section class="banner nobanner">
		  <header id="header" class="fixed">
			<div class="container" style="width:100%;background-color:#3879D9;color:#fff;height:inherit;">
				<div class="row" style="max-width:1170px;margin:0 auto;">
					<div class="col-md-12 no-padding">
						<span style="font-size:16px;line-height:30px;">WELCOME！
						<span style="float:right;" id="registerInfo">
							<!-- <button class="btn btn-default" onclick="javascript:registerFormFadeIn();">Register</button> -->
							<button class="btn btn-warning" onclick="javascript:homePage();">Home</button>
							<!--<button class="btn btn-warning" onclick="javacript:loginFormFadeIn();">Sign in</button>-->
						</span>
					</div>
				</div>
			</div>
			<div class="navbox-wap header-content" style="display:none;">
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
										<!--<li><a href="index.jsp?position=%23testimonials" onclick="javascript:return validateAuth()">Paper Submission</a></li>-->
										<li><a href="#paper Submission" style="color: black;background: #3AA9ED;">paper Submission</a></li>
										<li><a href="#Venue" style="color: black;background: #3AA9ED;">Venue</a></li>
										<li><a href="#download" style="color: black;background: #3AA9ED;">Download</a></li>
										<!-- <li><a href="#Contact Us">Contact Us</a></li> -->
										<!-- <li><a href="#reback">往届回顾</a></li> -->
										<div class="clear"></div>
									</ul>
								</div>
							</div>
						</div>
					</div>
		  </header>
		</section>
		<form id="contributionForm" class="formStyle" enctype="multipart/form-data">
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>Manuscript cast column:</label>
					<select class="form-control" name="lm" id="lm">
						<option ></option>
						<option value="论文">Paper</option>
					</select>
				</div>
				<div class="col-sm-5">
					<label>Title:<sppan class="redColor">(*)</sppan></label>
					<input type="text" class="form-control" name="wt" id="wt" placeholder="(您可以从您的论文中粘贴过来, 但所有格式将丢失(不影响您的论文文件), 长度不超过255个汉字.)" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>English Title:</label>
					<input type="text" class="form-control" name="ywwt" id="ywwt" placeholder="" />
				</div>
				<div class="col-sm-5">
					<label>Author:<span class="redColor">(*)</span></label>
					<input type="text" class="form-control" name="author" placeholder="此处作者和登录名一致" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>Letter of introduction:</label>
					<label class="radio-inline">
						<input type="radio" name="jsx" id="jsxy" value="有" />Yes
					</label>
					<lable class="radio-inline">
						<input type="radio" name="jsx" id="jsxw" value="无" checked />Nothing
					</lable>
				</div>
				<div class="col-sm-5">
					<label>Language type:</label>
					<label class="radio-inline">
						<input type="radio" name="language" id="Chinese" value="中文稿件" />Chinese
					</label>
					<label class="radio-inline">
						<input type="radio" name="language" id="English" value="英文稿件">English
					</label>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>Key words:<span class="redColor">(*)</span></label>
					<input type="text" class="form-control" name="gjc" id="gjc" placeholder="" />
				</div>
				<div class="col-sm-5">
					<label>English Key words:<span class="redColor">(*)</span></label>
					<input type="text" class="form-control" name="ywgjc" id="ywgjc" placeholder="" />
				</div>
			</div>
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<label>Key words Explain:</label>
				</div>
				<div class="col-sm-10 col-sm-offset-1">
					<span>Please input the key words of your paper. Please press the print keyword format "submission" required, 
					generally 3 to 5 is appropriate, each key length is not more than 50 Chinese characters, and English semicolon to separate. For example: 
					GeoProcessing; Minjiang River; basin characteristics; digital watershed model; automatic extraction</span>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>Abstract:</label>
					<textarea name="zy" id="zy" class="form-control" rows="2"></textarea>
				</div>
				<div class="col-sm-5">
					<label>English Abstract:</label>
					<textarea class="form-control" name="ywzy" id="ywzy" rows="2"></textarea>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-5 col-sm-offset-1">
					<label>Subject Classification Number:</label>
					<input type="text" class="form-control" name="xkflh" id="xkflh">
				</div>
				<div class="col-sm-5">
					<label>Research Areas:</label>
					<input type="text" class="form-control" name="yjly" id="yjly">
				</div>
			</div>
			<div class="row">
				<div class="col-sm-offset-1 col-sm-5">
					<label>Manuscript type:</label>
					<select class="form-control" name="gjlx" id="gjlx">
						<option value=""></option>
						<option value="网上投稿">Online submission</option>
						<option value="ֽ纸质文本">Paper text</option>
						<option value="自然地理">Natural geography</option>
						<option value="人文地理">Human geography</option>
						<option value="遥感与GIS">Remote Sensing and GIS</option>
						<option value="综合">Integrated</option>
						<option value="英文稿">Manuscripts in English</option>
						<option value="中文稿">Manuscripts in Chinese</option>
					</select>
				</div>
				<div class="col-sm-5">
					<label>Creation type:</label>
					<select class="form-control" name="czlx" id="czlx">
						<option value=""></option>
					</select>
				</div>
			</div>
			<div class="row">
            	<div class="col-sm-offset-1 col-sm-5">
	                <label for="dtp_input1" class=" control-label">Author expected time:</label>
	                <div class="input-group date form_datetime" >
	                    <input class="form-control" size="16" type="text" value="" id="dateTime" name="zzqwkcsj" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
	                </div>
					<input type="hidden" id="dtp_input1" value="" /><br/>
            	</div>
			</div>
			<div class="row">
				<div class="col-sm-offset-1 col-sm-5 col-xs-12">
            		<label>Leaving a message:</label>
            		<textarea class="form-control" name="ly" id="ly"></textarea>
				</div>
				<div class="col-sm-5 col-xs-12">
					<label>SupportInfo:</label>
					<textarea class="form-control" name="supportinfo" id="supportinfo"></textarea>
				</div>
			</div>
			<!--
			<div class="row">
				<div class="col-sm-offset-1 col-sm-10 col-xs-12">
					<div class="panel panel-primary">
						<div class="panel-heading">
							本篇文章的基金列表
							<button class="btn btn-info" id="addFund">添加</button>
						</div>
						<div class="panel-body">
							<table id="fundList"></table>
						</div>
					</div>
				</div>
			</div>
			-->
			<div class="row">
				<div class="col-sm-offset-1 col-sm-10 col-xs-12">
					<div class="panel panel-primary">
						<div class="panel-heading">Upload Full Papers</div>
						<div class="panel-body">
							<div class="col-sm-10 col-xs-12">
								<label>Please select your manuscript to upload. You can delete it in the list if you find error with uploading, then choose the right one. (Attention: please match one-to-one.)</label>
							</div>
							<div class="col-sm-10 col-xs-12">
								<label>The allowed file types are docx / txt/ war / zip / doc / pdf with in 10M;</label>
							</div>
							<div class="col-sm-5">
								<label>The Text of Your Manuscript (If there are separate pictures, please compress them as well as the text into a file package and then upload):</label>
								<input class="form-control" type="file" name="file1" id="file1">
							</div>
							<div class="col-sm-5 col-xs-12">
								<label>PDF Files with Your Text (Optional):</label>
								<input class="form-control" type="file" name="file2" id="file2">
							</div>
							<div class="col-sm-5">
								<label>Attached Figures or Videos:</label>
								<input class="form-control" type="file" name="file3" id="file3">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-offset-1 col-sm-10 col-xs-12">
					<label>The List of Your Uploading:</label>
					<table id="fileList"></table>
				</div>
			</div>
			<div class="row">
				<div class="col-sm-offset-5 col-sm-5 col-xs-offset-3 col-xs-8">
					<button class="btn btn-primary btn_save" type="button">Temporarily Save</button>
					<button class="btn btn-primary btn-saveandsubmit" type="button">Save and Submit</button>
				</div>
			</div>
			<!--基金modal start -->
			<!--
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			   <div class="modal-dialog">
			      <div class="modal-content">
			         <div class="modal-header">
			            <button type="button" class="close" 
			               data-dismiss="modal" aria-hidden="true">
			                  &times;
			            </button>
			            <h4 class="modal-title" id="myModalLabel">
			               请输入基金信息
			            </h4>
			         </div>
			         <div class="modal-body">
			         		<label>基金级别:</label>
			         		<select class="form-control" name="jjjb" id="jjjb">
			         			<option value="国际级">国际级</option>
			         			<option value="国家级">国家级</option>
			         			<option value="省部级">省部级</option>
			         			<option value="中科院">中科院</option>
			         			<option value="其他">其他</option>
			         		</select>
			         		<label>基金中文名称<span class="redColor">(*)</span>:</label>
			         		<input type="text" class="form-control" name="jjzwmc" id="jjzwmc">
			         		<label>基金英文名称<span class="redColor">(*)</span>:</label>
			         		<input type="text" class="form-control" name="jjywmc" id="jjywmc">
			         		<label>基金号<span class="redColor">(*)</span>:</label>
			         		<input type="text" class="form-control" name="jjh" id="jjh">
			         		<label>备注:</label>
			         		<input type="text" class="form-control" name="bz" id="bz">
			         </div>
			         <div class="modal-footer">
			            <button type="button" class="btn btn-default" 
			               data-dismiss="modal">取消
			            </button>
			            <button type="button" class="btn btn-primary">
			               添加
			            </button>
			         </div>
			      </div>
				</div>
			</div>
			-->
			<!--基金end -->
		</form>
	</div>
	<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
	<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
	<script type='text/javascript' src='<%=path%>/dwr/interface/ResourceService.js'></script>
	<script type="text/javascript" src="<%=path%>/static/js/jquery.min.js"></script>
	<script src="<%=path%>/static/js/bootstrap.min.js"></script>
	<script src="<%=path%>/static/js/bootstrap-table.min.js"></script>
	<script src="<%=path%>/static/js/bootstrap-datetimepicker.min.js"></script>
	<!--<script src="<%=path%>/static/js/main.js"></script>-->
</body>
<script>
	$(function(){

		// 对象化投稿业务对象，封装页面所有组件及操作
    	var Contribution = function(){

    		// 变量和属性及组件定义
    		var ctx = '/ICUS2017';
    		var that = this;
    		this.form_datetime = $('.form_datetime');
    		this.fileList = $('#fileList');
    		this.form = $('#contributionForm');
    		this.btn_save = $('.btn-save');
    		this.btn_saveAndSubmit = $('.btn-saveandsubmit');

    		// 操作方法定义

    		// 保存操作
    		this.save = function(){
    			that.form.prop('action',ctx + '/contribution.do?method=save')
    			that.form.submit();
    		}

    		// 保存并提交操作
    		this.saveAndSubmit = function(){
    			that.form.prop('action',ctx + '/contribution.do?method=saveAndSubmit')
    			that.form.submit();
    		}

    		// 组件初始化，绑定组件操作
    		this.init = function(){
				
    			//日期控件初始化
    			if(that.form_datetime) {
	    			that.form_datetime.datetimepicker({
						weekStart: 1,
				        todayBtn:  1,
						autoclose: 1,
						todayHighlight: 1,
						startView: 2,
						forceParse: 0,
				        showMeridian: 1,
				        formate:'mm-dd-yyy hh:ii',
				        pickerPosition: "bottom-left"
				    });
			    }

    			//文件列表表格初始化
    			if(that.fileList) {
				    that.fileList.bootstrapTable({
				    	classes:'table table-hover table-bordered',
		                idField:'id',
		                clickToSelect:true,
		                queryParamsType : "limit",
		                columns:[{
		                    checkbox:true
		                },{
		                    field:'id',
		                    title:'Ordinal',
		                    formatter:function(v,r,i){
		                        return ++i;
		                    }
		                },{
		                    field:'type',
		                    title:'Type',
		                    sortable:true
		                },{
		                    field:'updatetime',
		                    title:'Time'
		                },{
		                    field:'filesize',
		                    title:'Size'
		                },{
		                    field:'check',
		                    title:'View'
		                },{
		                    field:'operation',
		                    title:'Operation'
		                }]
			    	});
				}
				
		    	//按钮操作初始化
		    	if(that.btn_save)
    				that.btn_save.off('click').on('click',that.save);
    			if(that.btn_saveAndSubmit)
    				that.btn_saveAndSubmit.off('click').on('click',that.saveAndSubmit);
    		}
    	}

    	// 创建投稿业务对象实例，并初始化组件
    	var contribution = new Contribution();
    	contribution.init();
	});
</script>
</html>