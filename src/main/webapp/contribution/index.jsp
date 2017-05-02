<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>投稿</title>
    <link rel="stylesheet" href="<%=path%>/contribution/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>/contribution/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="<%=path%>/contribution/css/bootstrap-table.css">
    <link rel="stylesheet" href="<%=path%>/contribution/tougao.css">
</head>
<body>
<div class="container-fluid">
    <form id="contributionForm" action="<%=path%>/contribution.do?method=save" class="formStyle" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${contribution.id}"/>
        <input type="hidden" name="registerid" value="1"/>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>稿件拟投栏目:</label>
                <select class="form-control" name="lm" id="lm">
                    <option ></option>
                    <option value="论文">论文</option>
                </select>
            </div>
            <div class="col-sm-5">
                <label>文题:<sppan class="redColor">(*)</sppan></label>
                <input type="text" class="form-control" name="wt" id="wt" placeholder="(您可以从您的论文中粘贴过来, 但所有格式将丢失(不影响您的论文文件), 长度不超过255个汉字.)" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>英文文题:</label>
                <input type="text" class="form-control" name="ywwt" id="ywwt" placeholder="" />
            </div>
            <div class="col-sm-5">
                <label>作者:<span class="redColor">(*)</span></label>
                <input type="text" class="form-control" name="author" placeholder="此处作者和登录名一致" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>介绍信:</label>
                <label class="radio-inline">
                    <input type="radio" name="jsx" id="jsxy" value="有" />有
                </label>
                <lable class="radio-inline">
                    <input type="radio" name="jsx" id="jsxw" value="无" checked />无
                </lable>
            </div>
            <div class="col-sm-5">
                <label>稿件语言类型:</label>
                <label class="radio-inline">
                    <input type="radio" name="language" id="Chinese" value="中文稿件" />中文稿件
                </label>
                <label class="radio-inline">
                    <input type="radio" name="language" id="English" value="英文稿件">英文稿件
                </label>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>关键词:<span class="redColor">(*)</span></label>
                <input type="text" class="form-control" name="gjc" id="gjc" placeholder="" />
            </div>
            <div class="col-sm-5">
                <label>英文关键词:<span class="redColor">(*)</span></label>
                <input type="text" class="form-control" name="ywgjc" id="ywgjc" placeholder="" />
            </div>
        </div>
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <label>关键词说明:</label>
            </div>
            <div class="col-sm-10 col-sm-offset-1">
                <span>请输入您论文的关键词. 关键词格式请按本刊的《投稿须知》要求填写, 一般3到5个为宜, 每个关键词长度不超过50个汉字, 并用英文分号分开. 例如:GeoProcessing;岷江上游;流域特征;数字水系模型;自动提取</span>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>摘要:</label>
                <textarea name="zy" id="zy" class="form-control" rows="2"></textarea>
            </div>
            <div class="col-sm-5">
                <label>英文摘要:</label>
                <textarea class="form-control" name="ywzy" id="ywzy" rows="2"></textarea>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-5 col-sm-offset-1">
                <label>学科分类号:</label>
                <input type="text" class="form-control" name="xkflh" id="xkflh">
            </div>
            <div class="col-sm-5">
                <label>本文研究领域:</label>
                <input type="text" class="form-control" name="yjly" id="yjly">
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-5">
                <label>稿件类型:</label>
                <select class="form-control" name="gjlx" id="gjlx">
                    <option value=""></option>
                    <option value="网上投稿">网上投稿</option>
                    <option value="ֽ纸质文本">ֽ纸质文本</option>
                    <option value="自然地理">自然地理</option>
                    <option value="人文地理">人文地理</option>
                    <option value="遥感与GIS">遥感与GIS</option>
                    <option value="综合">综合</option>
                    <option value="英文稿">英文稿</option>
                    <option value="中文稿">中文稿</option>
                </select>
            </div>
            <div class="col-sm-5">
                <label>创作类型:</label>
                <select class="form-control" name="czlx" id="czlx">
                    <option value=""></option>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-5">
                <label for="dtp_input1" class=" control-label">作者期望刊出时间:</label>
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
                <label>留言:</label>
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
                    <div class="panel-heading">上传全文文件</div>
                    <div class="panel-body">
                        <div class="col-sm-10 col-xs-12">
                            <label>选择您的稿件文件上传，如果上传错误，可以在列表中删除，然后选择正确的文件重新上传即可(注意：请分别对应一一上传)。</label>
                        </div>
                        <div class="col-sm-10 col-xs-12">
                            <label>允许上传的文件类型docx|txt|war|zip|doc|pdf|;不超过10M</label>
                        </div>
                        <div class="col-sm-5">
                            <label>稿件内容正文(如果有单独图片, 请压缩成一个文件包再上传):</label>
                            <input class="form-control" type="file" name="file1" id="file1">
                        </div>
                        <div class="col-sm-5 col-xs-12">
                            <label>允许上传的文件类型PDF;不超过10M,&nbsp;&nbsp;对应的PDF文件(可选):</label>
                            <input class="form-control" type="file" name="file2" id="file2">
                        </div>
                        <div class="col-sm-5">
                            <label>附图或视频上传:</label>
                            <input class="form-control" type="file" name="file3" id="file3">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 col-xs-12">
                <label>已经上传的文件列表：</label>
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
        <div class="row">
            <div class="col-sm-offset-5 col-sm-5 col-xs-offset-3 col-xs-8">
                <button class="btn btn-primary btn-save" type="button">临时保存</button>
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
<script type="text/javascript" src="<%=path%>/contribution/js/jquery.min.js"></script>
<script src="<%=path%>/contribution/js/bootstrap.min.js"></script>
<script src="<%=path%>/contribution/js/bootstrap-datetimepicker.js"></script>
<script src="<%=path%>/contribution/js/bootstrap-table.min.js"></script>
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
                            title:'序号',
                            formatter:function(v,r,i){
                                return ++i;
                            }
                        },{
                            field:'type',
                            title:'内容文件类型',
                            sortable:true
                        },{
                            field:'uploadtime',
                            title:'上传时间'
                        },{
                            field:'filesize',
                            title:'文件大小'
                        },{
                            field:'check',
                            title:'查看'
                        },{
                            field:'operation',
                            title:'操作'
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
