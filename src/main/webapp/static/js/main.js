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
	    	var top = $(this).offset().top - 76,
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

	// Mobile Navigation
	$('.nav').find('a').on('click', function() {
		var menuBtn = $('.navbar-toggle');
		if(menuBtn.css('display')=='block')
			$('.navbar-toggle').click();
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
		var html =
			'<a href="javascript:;" class="a-account" style="height: 40px;margin-top: -8px" data-toggle="dropdown"><i class="fa fa-user"></i> '+app.register.username +
			'　<span class="caret"></span>' +
			'</a>' +
			'<ul class="dropdown-menu" role="menu">' +
			'<li>' +
			'<a href="javascript:;" onclick="registerFormFadeIn()"><i class="fa fa-file-text"></i> My Account</a>' +
			'</li>' +
			'<li>' +
			'<a href="'+app.ctx+'/payment.jsp"><i class="fa fa-file-text"></i> Payment</a>' +
			'</li>' +
			'<li>' +
			'<a href="javascript:;" class="btn-register-logout"><i class="fa fa-power-off"></i> Logout</a>' +
			'</li>' +
			'</ul>';
		if(app.language==1){
			html =
				'<a href="javascript:;" class="a-account" style="height: 40px;margin-top: -8px" data-toggle="dropdown"><i class="fa fa-user"></i> '+app.register.username +
				'　<span class="caret"></span>' +
				'</a>' +
				'<ul class="dropdown-menu" role="menu">' +
				'<li>' +
				'<a href="javascript:;" onclick="registerFormFadeIn_cn()"><i class="fa fa-file-text"></i> 个人中心</a>' +
				'</li>' +
				'<li>' +
				'<a href="'+app.ctx+'/payment_cn.jsp"><i class="fa fa-file-text"></i> 会费支付</a>' +
				'</li>' +
				'<li>' +
				'<a href="javascript:;" class="btn-register-logout"><i class="fa fa-power-off"></i> 退出</a>' +
				'</li>' +
				'</ul>';
		}
		$('#registerInfo').html(html);
		$('.btn-register-logout').off('click').on('click',function(e){
			RegisterService.logout(function(){
                if(app.language==1){
                    window.location.href = 'index_cn.jsp';
				}else{
                    window.location.href = 'index.jsp';
				}
			});
			// window.location.href = app.ctx + '/auth.do?method=frontLogout';
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
			id:$('#regid').val(),
			firstname:$('#firstname').val(),
			lastname:$('#lastname').val(),
			username:$('#firstname').val() + ' ' + $('#lastname').val(),
			nickname:$('#firstname').val() + ' ' + $('#lastname').val(),
			password:$('#password').val(),
			telphone:$('#telphone').val(),
			email:$('#email').val(),
			sex:$('#registerForm input[name="sex"]:checked').val(),
			company:$('#company').val(),
			job:$('#job').val(),
			journalname:'',
			message:'',//$('#message').val()
			//新加字段
			sfbg:$('input[name="sfbg"]:checked').val()||'',
			bgtm:$('input[name="bgtm"]').val()||'',
			sfkc:$('input[name="sfkc"]:checked').val()||'',
			sfzs:$('input[name="sfzs"]:checked').val()||'',
			countryarea:$('#basic').val()
		};
		if(!register.firstname){
			if(app.language==1){
                $('#firstname').focus().attr('placeholder','这个项目不能为空!');
            }else{
                $('#firstname').focus().attr('placeholder','This item cannot be empty');
            }
			return;
		}
		if(!register.lastname){
            if(app.language==1){
                $('#lastname').focus().attr('placeholder','这个项目不能为空!');
            }else{
                $('#lastname').focus().attr('placeholder','This item cannot be empty');
            }
			return;
		}
		if(!register.email){
            if(app.language==1){
                $('#email').focus().attr('placeholder','Email不能为空!');
            }else{
                $('#email').focus().attr('placeholder','This item cannot be empty');
            }
			return;
		}
		if(!register.telphone){
            if(app.language==1){
                $('#telphone').focus().attr('placeholder','电话号码不能为空!');
            }else{
                $('#telphone').focus().attr('placeholder','This item cannot be empty');
            }

			return;
		}
		var reg = /^[a-zA-Z0-9!,_]{6,20}$/;  //正则数字字母特殊字符

		if(!app.register.id&&!register.password.match(reg)){
			$('#password').focus();
            if(app.language==1){
                $('#password-errorinfo').text('密码长度不少于6,必须是数字或字母或下划线!');
            }else{
                $('#password-errorinfo').text('Password length of not less than 6, must be numbers or letters or underscores');
            }
			return;
		}
		if(!app.register.id&&register.password!=$('#repassword').val()){
			$('#repassword').focus();
            if(app.language==1){
                $('#password-errorinfo').text('两次输入的密码必须相同!');
            }else{
                $('#password-errorinfo').text('Two passwords are inconsistent!');
            }
			return;
		}
		if(!register.nickname){
            if(app.language==1){
                $('#nickname').focus().attr('placeholder','这个项目不能为空');
            }else{
                $('#nickname').focus().attr('placeholder','This item cannot be empty');
            }
			return;
		}
		$(that).addClass('disabled');
		if(!app.register.id) {
			$('#password-errorinfo').text('');
			RegisterService.hasRegisterByTel(register,function(has){
				if(!has){
					RegisterService.register(register,true,app.language,function(msg){
						if(msg){
							if(app.language==1){
                                alert('注册成功!');
                                $(that).removeClass('disabled');
                                $('#registerForm')[0].reset();
                                // window.location.href = app.ctx + "/auth.do?method=frontLogin&email="+register.email+"&password="+register.password;
                                window.location.href = app.ctx + "/index_cn.jsp";
							}else {
                                alert('login was successful!');
                                $(that).removeClass('disabled');
                                $('#registerForm')[0].reset();
                                // window.location.href = app.ctx + "/auth.do?method=frontLogin&email="+register.email+"&password="+register.password;
                                window.location.href = app.ctx + "/index.jsp";
							}

						}
					});
				} else {
                    if(app.language==1){
                        alert('电话号码或邮箱已经注册！');
                    }else{
                        alert('This telphone or E-mail address is using！');
					}
					$('#email').focus();
					$(that).removeClass('disabled');
				}
			});
		} else {
			RegisterService.register(register,true,app.language,function(msg){
				if(msg){
					if(app.language==1){
                        alert('更新账户信息成功!');
                        $(that).removeClass('disabled');
                        $('#registerForm')[0].reset();
                        // window.location.href = app.ctx + "/auth.do?method=frontLogin&email="+register.email+"&password="+register.password;
                        window.location.href = app.ctx + "/index_cn.jsp";
					}else {
                        alert('update account info was successful!');
                        $(that).removeClass('disabled');
                        $('#registerForm')[0].reset();
                        // window.location.href = app.ctx + "/auth.do?method=frontLogin&email="+register.email+"&password="+register.password;
                        window.location.href = app.ctx + "/index.jsp";
					}

				}
			});
		}
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

	//loadResources();

	//根据锚点定位页面位置，放置在所有业务结束后，定位才能精确
	if(app.maodian){
		if($('#alert-loginmsg').html()){
			loginFormFadeIn();
		} else {
			$('html, body').animate({
			    scrollTop: $(app.maodian).offset() - 75
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

	// a-link-submission on click
	$('#a-link-submission').off('click').on('click',function(e){
		if(!app.register.id){
			alert('Sorry! Please login first!');
			window.location.href = app.ctx + '/login.jsp';
		} else {
			window.location.href = app.ctx + '/Submission/index.jsp';
		}
	});
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
function registerFormFadeIn_cn(){
	window.location.href = app.ctx+'/register_cn.jsp';
}
function indexCn(){
	window.location.href=app.ctx+'/index_cn.jsp';
}
function indexEn(){
	window.location.href=app.ctx+'/index.jsp';
}
function homePage(){
	window.location.href = app.ctx;
}
function registerFormFadeIn_cn(){
    window.location.href = app.ctx+'/register_cn.jsp';
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
function loginFormFadeIn_cn(){
    if(!app.register.id){
        window.location.href = app.ctx+'/login_cn.jsp';
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
	alert(2);
	if(!app.register.id){
		alert('Sorry! Please login first!');
		window.location.href = app.ctx+'/login.jsp';
		return false;
	}
	return true;
}