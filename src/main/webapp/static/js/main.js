$(document).ready(function() {
	/* 
	if($('#countdown').length>0){
		$('#countdown').timeTo({
		    timeTo: new Date(new Date('2016-11-26 00:00:00')),
		    displayDays: 2,
		    // theme: "black",
		    displayCaptions: true,
		    fontSize: 30,
		    captionSize: 14
		});
	}
	*/
	//倒计时插件
	var b = new Date;
	var b = -b.getTimezoneOffset() / 60;
	var i = '2016__regexoperators___/11/26 00:00:00';
	var config = {
		timeText: i, //倒计时时间
		timeZone: b, //时区
		style: "flip", //显示的样式，可选值有flip,slide,metal,crystal
		color: "black", //显示的颜色，可选值white,black
		width: 300, //倒计时宽度
		textGroupSpace: 15, //天、时、分、秒之间间距
		textSpace: 0, //数字之间间距
		reflection: !0, //是否显示倒影
		reflectionOpacity: 10, //倒影透明度
		reflectionBlur: 0, //倒影模糊程度
		dayTextNumber: 3, //倒计时天数数字个数
		displayDay: !0, //是否显示天数
		displayHour: !0, //是否显示小时数
		displayMinute: !0, //是否显示分钟数
		displaySecond: !0, //是否显示秒数
		displayLabel: !0, //是否显示倒计时底部label
		onFinish: function() {}
	};
	// $(".countdown").jCountdown(config);

	// Header Scroll
	if(app.curl.indexOf('register.jsp')<0
		&&app.curl.indexOf('login.jsp')<0
		&&app.curl.indexOf('forgotPwd.jsp')<0
		&&app.curl.indexOf('forgotPwdSucccess.jsp')<0
		&&app.curl.indexOf('resetPwd.jsp')<0
		&&app.curl.indexOf('resetPwdSuccess.jsp')<0
		&&app.curl.indexOf('auth.do?method=forgotPwd')<0
		&&app.curl.indexOf('auth.do?method=resetPwd')<0
		&&app.curl.indexOf('auth.do?method=resetPwdOK')<0){
		$(window).on('scroll', function() {
			var scroll = $(window).scrollTop();

			if (scroll >= 50) {
				$('#header').addClass('fixed');
			} else {
				$('#header').removeClass('fixed');
			}
		});
	}

	// Fancybox
	if($('.work-box').length>0)
		$('.work-box').fancybox();

	// Flexslider
	if($('.flexslider').length>0){
		$('.flexslider').flexslider({
			animation: "fade",
			directionNav: false,
		});
	}

	// Page Scroll
	var sections = $('section')
		nav = $('nav[role="navigation"]');

	$(window).on('scroll', function () {
	  	var cur_pos = $(this).scrollTop();
	  	sections.each(function() {
	    	var top = $(this).offset().top - 76
	        	bottom = top + $(this).outerHeight();
	    	if (cur_pos >= top && cur_pos <= bottom) {
	      		nav.find('a').removeClass('active');
	      		nav.find('a[href="#'+$(this).attr('id')+'"]').addClass('active');
	    	}
	  	});
	});
	nav.find('a').on('click', function () {
	  	var $el = $(this)
	    	id = $el.attr('href');
		$('html, body').animate({
			scrollTop: $(id).offset().top - 75
		}, 500);
	  return false;
	});

	// Mobile Navigation
	$('.nav-toggle').on('click', function() {
		$(this).toggleClass('close-nav');
		nav.toggleClass('open');
		return false;
	});	
	nav.find('a').on('click', function() {
		$('.nav-toggle').toggleClass('close-nav');
		nav.toggleClass('open');
	});

	//业务代码
	if(app.errormsg&&$('#alert-loginmsg').length>0){
		$('#alert-loginmsg').show();
	}

	$('#btn-lunwen-reupload').off('click').on('click',function(e){
		lunwenFadeOut();
	});

	$('#btn-lunwen-cancel').off('click').on('click',function(e){
		lunwenFadeIn();
	});

	if(app.register&&app.register.id){
		$('#registerInfo').html('<button class="btn btn-default btn-register-logout"><i class="fa fa-user"></i> '+app.register.username+' 退出</button>');
		if(app.register.bmflag){
			$('#registerInfo').append(' <button class="btn btn-success disabled">已报名</button>');
			$('#btn-ljbm').html('您已报名').addClass('disabled');
			baomingFormFadeOut();
		}
		else{
			$('#registerInfo').append(' <button class="btn btn-success btn-baoming">报名</button>');
			baomingFormFadeIn();
		}
		$('.btn-register-logout').off('click').on('click',function(e){
			RegisterService.logout();
			window.location.href = 'index.jsp';
			// window.location.href = app.ctx + '/auth.do?method=frontLogout';
		});

		$('.btn-baoming').off('click').on('click',function(e){
			$('html, body').animate({
				scrollTop: $("#contact").offset().top - 75
			}, 500);
		});
	}

	if(app.lunwen.id){
		$('#btn-lunwen-cancel').show();
		lunwenFadeIn();
	} else {
		$('#btn-lunwen-cancel').hide();
		lunwenFadeOut();
		if(app.nofile){
			$('#lunwe-msg').html('您的论文已被管理员删除，请重新上传！');
		}
	}

	$('#registerBtn').off('click').on('click',function(e){
		var that = this;
		var register = {
			username:$('#email').val(),
			nickname:$('#firstName').val() + ' ' + $('#lastName').val(),
			password:$('#password').val(),
			telphone:$('#telphone').val(),
			email:$('#email').val(),
			sex:$('#registerForm input[name="sex"]:checked').val(),
			company:$('#company').val(),
			job:$('#job').val(),
			journalname:'',
			message:'',//$('#message').val()
			//新加字段
			sfbg:$('#sfbg_input').val()||'否',
			sfkc:$('#registerForm input[name="sfkc"]:checked').val(),
			sfzs:$('#sfzs_select').val()||'否'
		};
		if(!register.email){
			$('#email').focus().attr('placeholder','该项不能为空！');
			return;
		}
		if(!register.telphone){
			$('#telphone').focus().attr('placeholder','该项不能为空！');
			return;
		}
		if(!register.password){
			$('#password').focus().attr('placeholder','密码不可为空！');
			return;
		}
		// if(register.password.length<6){
		// 	$('#password').focus().attr('placeholder','密码不少于6个字符！');
		// 	return;
		// }
		if(register.password!=$('#repassword').val()){
			$('#repassword').focus().attr('placeholder','两次输入密码不一致！');
			return;
		}
		if(!register.nickname){
			$('#nickname').focus().attr('placeholder','该项不能为空！');
			return;
		}
		$(that).addClass('disabled');
		RegisterService.hasRegisterByTel(register,function(has){
			if(!has){
				RegisterService.register(register,function(msg){
					if(msg){
						alert('注册成功!');
						$(that).removeClass('disabled');
						$('#registerForm')[0].reset();
						// window.location.href = app.ctx + "/auth.do?method=frontLogin&email="+register.email+"&password="+register.password;
						window.location.href = app.ctx + "/index.jsp";
					}
				});
			} else {
				alert('该邮箱已被注册！');
				$('#email').focus();
				$(that).removeClass('disabled');
			}
		});
	});
	
	$('#loginBtn').off('click').on('click',function(e){
		var loginEmail = $('#login_email');
		var loginPassword = $('#login_password');
		if(!loginEmail.val()){
			loginEmail.placeholder = '请输入正确的邮箱！'; return false;
		}
		if(!loginPassword.val()){
			loginPassword.placeholder = '请输入有效密码！'; return false;
		}
		// $('#loginForm').submit();
		// window.location.href = app.ctx + '/auth.do?method=frontLogin&email='+loginEmail.val()+'&password='+loginPassword.val();
	});

	$('#baomingBtn').off('click').on('click',function(e){
		var reg = {
			id : app.register.id,
			username:$('#b_nickname').val()||$('#b_email').val(),
			nickname:$('#b_nickname').val(),
			password:'',
			telphone:$('#b_telphone').val(),
			email:$('#b_email').val(),
			sex:$('#baomingForm input[name="sex"]:checked').val(),
			company:$('#b_company').val(),
			job:$('#b_job').val(),
			journalname:'',
			message:'',//$('#b_message').val()
			//新加字段
			sfbg:$('#sfbg_input').val()||'否',
			sfkc:$('#baomingForm input[name="sfkc"]:checked').val(),
			sfzs:$('#sfzs_select').val()||'否'
		}
		RegisterService.updateRegister(reg,function(ret){
			alert('报名成功！');
			window.location.href = app.ctx + '/auth.do?method=frontLogin&id='+reg.id;
		});
	});

	$('#btn-hyjj-sr').off('click').on('click',function(e){
		$('html, body').animate({
			scrollTop: $("#services").offset().top - 75
		}, 500);
	});

	loadResources();

	//根据锚点定位页面位置，放置在所有业务结束后，定位才能精确
	if(app.maodian){
		if($('#alert-loginmsg').html()){
			loginFormFadeIn();
		} else {
			$('html, body').animate({
			    scrollTop: $(app.maodian).offset().top - 75
			}, 500);
		}
	}

	//UpdateBy GeCoder on 2016/11/11 报名注册增加几个字段的逻辑
	//给单选项添加选中事件
	$('.sfbg_radio').on('change',function(e){
		if($(this).val()=='是'){
			$('#sfbg_input').removeProp('disabled');
		} else {
			$('#sfbg_input').prop('disabled',true).val('');
		}
	});

	$('.sfzs_radio').on('change',function(e){
		if($(this).val()=='是'){
			$('#sfzs_select').removeProp('disabled');
		} else {
			$('#sfzs_select').prop('disabled',true).val('');
		}
	});
	// end 给单选项添加选中事件
});

function loadResources(){
	ResourceService.getResources(function(data){
		for(var i=0;i<data.length;i++){
			var item = data[i];
			if(item.category == '往届回顾') {
				var html = '<div class="wow fadeInRight animated post-item-wrap pull-left col-sm-6 col-md-6 col-xs-12">'
					+'<img src="'+app.ctx+'/static/images/reback.png" class="img-responsive post-author-img" alt="">'
					+'<div class="pull-left col-md-8 col-sm-8 col-xs-8">'
                          +'<div class="post-title pull-left"><a href="javascript:;">'+item.filename+'.'+item.type+'</a></div>'
                          +'<div class="post-meta-top">'
                              +'<ul>'
                              +'<li><i class="fa fa-calendar"></i>'+item.uploadtime+'</li> '
                              +'<li><button class="btn btn-warning btn-resource-download" data-id="'+item.id+'"><i class="fa fa-download"></i></button></li>'
                              +'</ul>'
                          +'</div>'
                    +'</div>'
                +'</div>';
				$('#resource-view2').append(html);
			} else {
				var html = '<div class="wow fadeInRight animated post-item-wrap pull-left col-sm-6 col-md-6 col-xs-12">'
					+'<img src="'+app.ctx+'/static/images/resource.png" class="img-responsive post-author-img" alt="">'
					+'<div class="pull-left col-md-8 col-sm-8 col-xs-8">'
                          +'<div class="post-title pull-left"><a href="javascript:;">'+item.filename+'.'+item.type+'</a></div>'
                          +'<div class="post-meta-top">'
                              +'<ul>'
                              +'<li><i class="fa fa-calendar"></i>'+item.uploadtime+'</li> '
                              +'<li><button class="btn btn-success btn-resource-download" data-id="'+item.id+'"><i class="fa fa-download"></i></button></li>'
                              +'</ul>'
                          +'</div>'
                    +'</div>'
                +'</div>';
				$('#resource-view1').append(html);
			}

			$('.btn-resource-download').click(function(event) {
				window.location.href = app.ctx + '/resource.do?method=download&fileid='+$(this).data('id');
			});
		}
	});
}

function registerFormFadeIn(){
	window.location.href = app.ctx+'/register.jsp';
}

function homePage(){
	window.location.href = app.ctx;
}

function lunwenFadeIn(){
	$('#lunwen_view').fadeIn('slow/400/fast', function() {
		
	});

	$('#lunwen_upload').hide();
}

function lunwenFadeOut(){
	$('#lunwen_upload').fadeIn('slow/400/fast', function() {
		
	});

	$('#lunwen_view').hide();
}

function loginFormFadeIn(){
	if(!app.register.id){
		window.location.href = app.ctx+'/login.jsp';
	} else {
		$('html, body').animate({
			scrollTop: $("#contact").offset().top - 75
		}, 500);
	}
}

function baomingFormFadeIn(){

	$('#baomingForm input[type="text"]').each(function(index, el) {
		$(el).val(app.register[el.name]);
	});


	$('#baomingForm input[name="sex"]').each(function(index, el) {
		if($(el).val()==app.register.sex){
			$(el).prop('checked',true);
		}
	});

	$('#baomingForm input[name="sfbg"]').each(function(index, el) {
		if($(el).val()==app.register.sfbg){
			$(el).prop('checked',true);
			$('#sfbg_input').val(app.register.sfbg=='否'?'':app.register.sfbg);
		}
		if($(el).attr('id')=='sfbg2'&&app.register.sfbg!='否'){
			$(el).prop('checked',true);
			$('#sfbg_input').prop('disabled',false);
			$('#sfbg_input').val(app.register.sfbg);
		}
	});

	$('#baomingForm input[name="sfkc"]').each(function(index, el) {
		if($(el).val()==app.register.sfkc){
			$(el).prop('checked',true);
		}
	});

	$('#baomingForm input[name="sfzs"]').each(function(index, el) {
		// TODO
		if($(el).val()==app.register.sfzs){
			$(el).prop('checked',true);
			$('#sfzs_select').val('');
		}
		if($(el).attr('id')=='sfzs2'&&app.register.sfzs!='否'){
			$(el).prop('checked',true);
			$('#sfzs_select').prop('disabled',false);
			$('#sfzs_select').val(app.register.sfzs);
		}
	});

	$('#b_message').val(app.register.message);

	$('.login-form').fadeOut('slow/400/fast', function() {
		
	});

	$('.register-form').fadeOut('slow/400/fast', function() {
		
	});

	$('.baoming-form').fadeIn('slow/400/fast', function() {
		
	});
}

function baomingFormFadeOut(){

	$('.login-form').fadeOut('slow/400/fast', function() {
		
	});

	$('.register-form').fadeOut('slow/400/fast', function() {
		
	});

	$('.baoming-form').fadeOut('slow/400/fast', function() {
		
	});
}

function validateAuth(){
	if(!app.register.id){
		alert('对不起请先登录，并报名后方可提交论文');
		window.location.href = app.ctx+'/8thMapConference/login.jsp';
		return false;
	}
	if(!app.register.bmflag){
		alert('对不起您还没有报名参会，不能提交论文！');
		$('html, body').animate({
			scrollTop: $("#contact").offset().top - 75
		}, 500);
		return false;
	}
	return true;
}