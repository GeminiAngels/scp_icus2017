<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
%>
<c:set var="cc" value="${contribution}"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Submission</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>/Submission/css/bootstrap-table.css">
    <link rel="stylesheet" href="<%=path%>/Submission/tougao.css">
    <link rel="stylesheet" href="<%=path%>/static/css/main_cn.css">
</head>
<body>
<%@include file="/inc/headbar_cn.jsp" %>


<div class="container-fluid submission">
    <form id="contributionForm" action="<%=path%>/contribution.do?method=save" class="formStyle" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${cc.id}"/>
        <input type="hidden" name="registerid" value="${cc.registerid}"/>
        <input type="hidden" name="locale" value="zh-CN"/>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-5 ">
                <label>论文题目:<sppan class="redColor">(*)</sppan></label>
                <input type="text" class="form-control" name="wt" id="wt" placeholder="" value="${cc.wt}"/>
            </div>
			<div class="col-sm-5">
                <label>作者:<span class="redColor">(*)</span></label>
                <input type="text" class="form-control" name="author" readonly="readonly" value="${register.nickname}"/>
                <input type="hidden" name="registerid" value="${register.id}"/>
            </div>
		</div>
        <div class="row">
			<div class="col-sm-offset-1 col-sm-5">
                <label>稿件类型:</label>
                <select class="form-control" name="gjlx" id="gjlx">
                    <option value=""></option>
                    <option value="Unmanned Aerial Vehicles">Unmanned Aerial Vehicles</option>
                    <option value="Unmanned Ground Vehicles">Unmanned Ground Vehicles</option>
                    <option value="Unmanned Underwater Vehicles">Unmanned Underwater Vehicles</option>
                    <option value="Unmanned System Command and Control">Unmanned System Command and Control</option>
                    <option value="Sensing, Navigation and Control">Sensing, Navigation and Control</option>
                    <option value="Cooperative Control of Unmanned Systems">Cooperative Control of Unmanned Systems</option>
                    <option value="Unmanned System Dynamics">Unmanned System Dynamics</option>
                    <option value="Unmanned System Modeling and Simulation">Unmanned System Modeling and Simulation</option>
                    <option value="Artificial Intelligence and Intelligent Systems">Artificial Intelligence and Intelligent Systems</option>
                    <option value="Robotic Systems">Robotic Systems</option>
                    <option value="Bionic Technology">Bionic Technology</option>
                    <option value="New Concept Unmanned Systems">New Concept Unmanned Systems</option>
                    <option value="Other Related Technologies for Unmanned Systems">Other Related Technologies for Unmanned Systems</option>
                </select>
            </div>
			<div class="col-sm-5">
                <label>关键词:<span class="redColor">(*)</span></label>
                <input type="text" class="form-control" name="gjc" id="gjc" placeholder="" value="${cc.gjc}"/>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <label>关键词解释:</label>
            </div>
            <div class="col-sm-10 col-sm-offset-1">
                <span>Please input the key words of your paper. Please press the print keyword format "submission" required, 
					generally 3 to 5 is appropriate, each key length is not more than 50 Chinese characters, and English semicolon to separate. For example: 
					GeoProcessing; Minjiang River; basin characteristics; digital watershed model; automatic extraction</span>
            </div>
        </div>
		<div class="row">
			<div class="col-sm-5 col-sm-offset-1">
                <label>摘要:</label>
                <textarea name="zy" id="zy" class="form-control" rows="2">${cc.zy}</textarea>
            </div>
            <div class="col-sm-5">
                <label>稿件语种:</label>
				<label class="radio-inline">
                    <input type="radio" name="language" id="English" value="英文稿件" checked>英文
                </label>
                <label class="radio-inline">
                    <input type="radio" name="language" id="Chinese" value="中文稿件" ${cc.language eq '中文稿件'?'checked':''}/>中文
                </label>
			</div>
		</div>
        <div class="row">
			<div class="col-sm-10 col-xs-12 col-sm-offset-1">
                <label>备注说明:</label>
                <textarea class="form-control" name="ly" id="ly">${cc.ly}</textarea>
            </div>
			<!--
            <div class="col-sm-5">
                <label>English Abstract:</label>
                <textarea class="form-control" name="ywzy" id="ywzy" rows="2"></textarea>
            </div>
			-->
        </div>
		<!--
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
		-->
		<!--
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
		-->
        <div class="row">
            
			<!--
            <div class="col-sm-5 col-xs-12">
                <label>SupportInfo:</label>
                <textarea class="form-control" name="supportinfo" id="supportinfo"></textarea>
            </div>
			-->
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
                <c:if test="${not empty fileerror}">
                    <div class="alert alert-warning alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong>出错了!</strong> ${fileerror}.
                    </div>
                </c:if>
                <c:if test="${success}">
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <strong>论文提交成功！</strong> .
                    </div>
                </c:if>
                <div class="panel panel-primary">
                    <div class="panel-heading">上传论文</div>
                    <div class="panel-body">
                        <div class="col-sm-10 col-xs-12">
                            <label>
                                请选择要上传的稿件。</label>
                        </div>
                        <div class="col-sm-5 col-xs-12">
                            <label>允许上传的文件格式有：docx / txt / zip / doc / pdf 。并且 要求文件大小为 10M 以下。</label>
                        </div>
                        <div class="col-sm-5">
                            <!--<label>The Text of Your Manuscript (If there are separate pictures, please compress them as well as the text into a file package and then upload):</label>-->
                            <input class="form-control" type="file" name="file1" id="file1" style="${not empty thesisList?'display:none':''}" accept=".docx,application/msword,text/plain,aplication/zip,application/pdf">
                            <div class="" id="fileName" style="${not empty thesisList?'':'display:none'}">
                            点此下载-> <a href="<%=path%>/contribution.do?method=download&fileid=${thesisList[0].id}" >${thesisList[0].filename}.${thesisList[0].type}</a>
                            <span class="btn btn-default" id="btn-clear" >重新上传</span>
                            </div>
                        </div>
						<!--
                        <div class="col-sm-5 col-xs-12">
                            <label>PDF Files with Your Text (Optional):</label>
                            <input class="form-control" type="file" name="file2" id="file2">
                        </div>
                        <div class="col-sm-5">
                            <label>Attached Figures or Videos:</label>
                            <input class="form-control" type="file" name="file3" id="file3">
                        </div>
						-->
                    </div>
                </div>
            </div>
        </div>
		<!--
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 col-xs-12">
                <label>The List of Your Uploading:</label>
                <table id="fileList">
                    <tbody>
                        <c:forEach items="${thesisList}" var="t">
                        <tr>
                            <td></td>
                            <td></td>
                            <td>${t.type}</td>
                            <td>${t.uploadtime}</td>
                            <td>${t.filesize}</td>
                            <td><a href="<%=path%>/contribution.do?method=download&fileid=${t.id}">查看</a></td>
                            <td><a href="<%=path%>/contribution.do?method=delete&fileid=${t.id}">删除</a></td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
		-->
        <div class="row">
            <div class="col-sm-offset-5 col-sm-7 col-xs-offset-3 col-xs-8">
                <button class="btn btn-primary btn-saveandsubmit" type="button">保存并提交</button>
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
<script type="text/javascript" src="<%=path%>/Submission/js/jquery.min.js"></script>
<script src="<%=path%>/Submission/js/bootstrap.min.js"></script>
<script src="<%=path%>/Submission/js/bootstrap-table.min.js"></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
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
        submission : {
            id : '${cc.id}'/1,
            wt:'${cc.wt}',
            author:'${cc.author}',
            gjlx:'${cc.gjlx}',
            gjc:'${cc.gjc}',
            zy:'${cc.zy}',
            language:'${cc.language}',
            ly:'${cc.ly}'
        },
        nofile : '${param.nofile}'
    }
</script>
<script src="<%=path%>/static/js/main.js"></script>
</body>
<script>
    $(function(){

        // 对象化投稿业务对象，封装页面所有组件及操作
        var Contribution = function(){

            // 变量和属性及组件定义
            var ctx = '<%=path%>';
            var that = this;
            this.form_datetime = $('.form_datetime');
            this.fileList = $('#fileList');
            this.form = $('#contributionForm');
            this.btn_saveAndSubmit = $('.btn-saveandsubmit');

            // 操作方法定义

            // 保存并提交操作
            this.saveAndSubmit = function(){
                that.form.prop('action',ctx + '/contribution.do?method=saveAndSubmit')
                that.form.submit();
            }

            // 组件初始化，绑定组件操作
            this.init = function(){

                $('select[name="gjlx"]').val(app.submission.gjlx);

                //按钮操作初始化
                if(that.btn_saveAndSubmit) {
                    if(app.register.id)
                        that.btn_saveAndSubmit.off('click').on('click',that.saveAndSubmit);
                    else
                        that.btn_saveAndSubmit.addClass('disabled');
                }

                //重新上传论文按钮
                $("#btn-clear").click(function () {
                    $("#fileName").attr('style','display: none');
                    $("#file1").attr('style','display: block');

                    var file = $("#file1")
                    file.after(file.clone().val(""));
                    file.remove();
                    file.val('');
                });
            }
        }

        // 创建投稿业务对象实例，并初始化组件
        var contribution = new Contribution();
        contribution.init();
    });
</script>
</html>
