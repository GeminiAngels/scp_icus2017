<%@page contentType="text/html;charset=utf-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" href="<%=path%>/static/css/countdown/jcountdown.css">
    <link rel="stylesheet" type="text/css" href="<%=path%>/static/css/style4.css" />
    <link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path%>/static/css/main_cn.css">
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
            language:1
        }
    </script>
</head>
<body>
    <%@include file="/inc/headbar_cn.jsp" %>
    <section id="contact" class="section">
        <div class="container register-form">
            <div class="section-header">
                <h2 class="wow fadeInDown animated">会议费用支付</h2>
                <p class="wow fadeInDown animated"><br/>打开微信扫一扫，扫描下方二维码完成支付</p>
            </div>
            <div class="row wow fadeInLeft animated text-center">
                <img src="http://www.egeoscience.com.cn/unipay/wxPay?orderId=${param.orderId}&title=${param.title}&description=${param.description}&total=${param.total}&processUrl=${param.processUrl}" width="300" height="300"/>
            </div>
            <div class="col-sm-8 col-sm-offset-2">
                <button id="pay-btn" name="submit" type="button" class="btn btn-success btn-lg" style="margin-top:15px;">已完成支付？请确认</button>
            </div>
            </form>
        </div>
        </div>

    </section>
    <script src="<%=path%>/static/js/jquery.min.js"></script>
    <script src="<%=path%>/static/js/main.js"></script>
    <script type="text/javascript">
        $(function(){
           $('#pay-btn').off('click').on('click',function(e){
               window.location.href = '<%=path%>/auth.do?method=asyncPayStatus&regid=${register.id}';
           });
        });
    </script>

</body>
</html>
