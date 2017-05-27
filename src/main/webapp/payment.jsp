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
    <title>Payment</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="<%=path%>/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path%>/Submission/css/bootstrap-table.css">
    <link rel="stylesheet" href="<%=path%>/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path%>/static/css/main.css">
    <link rel="stylesheet" href="<%=path%>/Submission/tougao.css">
    <style type="text/css">
        .order-price {
            color:red;
            font-size:20px;
            font-weight:bold;
        }
    </style>
</head>
<body>
<%@include file="/inc/headbar_en.jsp" %>

<div class="container-fluid submission">
    <form id="orderForm" action="<%=path%>/auth.do?method=payment" class="formStyle" method="post">
        <input type="hidden" name="id" value="${cc.id}"/>
        <input type="hidden" name="registerid" value="${cc.registerid}"/>
        <c:if test="${empty orderList}">
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 ">
                <label>PAPER QUANTITY:<span class="redColor">(*)　</span></label>
                <label class="radio-inline">
                    <input type="radio" name="lwsl" id="lwsl1" data-key="0" value="无" checked>None
                </label>
                <label class="radio-inline">
                    <input type="radio" name="lwsl" id="lwsl2" data-key="1" value="一篇">One paper
                </label>
                <label class="radio-inline">
                    <input type="radio" name="lwsl" id="lwsl3" data-key="2" value="两篇及以上"/>Two and above
                </label>
            </div>
        </div>
        <div class="row">

        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 ">
                <label>IDENTITY:<span class="redColor">(*)　</span></label>
                <label class="radio-inline">
                    <input type="radio" name="rylx" id="rylx1" data-key="1" value="普通人员" checked>Normal
                </label>
                <label class="radio-inline">
                    <input type="radio" name="rylx" id="rylx2" data-key="2" value="学生"/>Student
                </label>
                <label class="radio-inline">
                    <input type="radio" name="rylx" id="rylx3" data-key="3" value="会员"/>Associator
                </label>
                <label class="radio-inline">
                    <input type="radio" name="rylx" id="rylx4" data-key="4" value="委员"/>Commissioner
                </label>
            </div>
		</div>
        <div class="row">

        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 ">
                <label>EXTRA PAGES:<span class="redColor">(*)　</span></label>
                <label class="radio-inline">
                    <input type="radio" name="ccys" id="ccys1" data-key="0" value="None" checked>None
                </label>
                <label class="radio-inline">
                    <input type="radio" name="ccys" id="ccys2" data-key="1" value="1"/>One page
                </label>
                <label class="radio-inline">
                    <input type="radio" name="ccys" id="ccys3" data-key="2" value="2"/>Two pages
                </label>
            </div>
        </div>
        <div class="row">

        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 ">
                <label>PAYMENT TYPE:<span class="redColor">(*)　</span></label>
                <label class="radio-inline">
                    <input type="radio" name="zffs" id="zffs1" data-path="/paypalPay" data-key="1" value="PayPal" checked/>PayPal
                </label>
                <label class="radio-inline">
                    <input type="radio" name="zffs" id="zffs2" data-path="/unionPay" data-key="2" value="UnionPay"/>UnionPay
                </label>
                <label class="radio-inline">
                    <input type="radio" name="zffs" id="zffs3" data-path="/alipay" data-key="3" value="Alipay">Alipay
                </label>
                <label class="radio-inline">
                    <input type="radio" name="zffs" id="zffs4" data-path="/wxPay" data-key="4" value="WeChat Pay"/>WeChat Pay
                </label>
                <label class="radio-inline">
                    <input type="radio" name="zffs" id="zffs5" data-path="/openPay" data-key="5" value="WeChat Pay(PUB)"/>WeChat Pay
                </label>
                <input type="hidden" name="payurl" value="http://www.egeoscience.com.cn/unipay/paypalPay"/>
            </div>
        </div>
        <div class="row">

        </div>
        <div class="row">
            <div class="col-sm-offset-1 col-sm-10 ">
                <label>PRICE: 　　<span class="order-price">$200-600</span></label>
                <input type="hidden" name="price" value="260">
            </div>
        </div>
        <div class="row">
			<div class="col-sm-10 col-xs-12 col-sm-offset-1">
                <label>Remarks:</label>
                <textarea class="form-control" name="remarks" id="remarks" rows="5"></textarea>
            </div>
        </div>
        </c:if>
        <div class="row">
            
        </div>
        <div class="row">
            <div class="col-sm-10 col-sm-offset-1">
                <label>PAYMENT EXPLAIN:</label>
            </div>
            <div class="col-sm-10 col-sm-offset-1">
                <div class="alert alert-success">
                <p>
                    (1)	Chinese Institute of Command and Control. Technical Committee on Unmanned Systems.
                </p>
                <p>
                    (2) Over Length Fee: All papers are allotted 6 pages per paper free of charge. A maximum of two extra pages per paper (i.e., 8 pages in total) is permitted at an extra charge of 150 USD per page. Papers longer than 8 pages are NOT acceptable and CANNOT be uploaded.</p>
                <p>
                    (3) All registrations are not refundable.
                </p>
                </div>
            </div>
        </div>
    </form>
</div>
<div class="container-fluid submission">
    <div class="row">
        <div class="col-sm-offset-1 col-sm-10 col-xs-12">
            <label>TICKET ORDERS LIST:</label>
            <table id="fileList" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>ORDER INFO</th>
                    <th>OPTION</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${orderList}" var="o">
                    <tr>
                        <td>NO.: ${o.orderno}
                            <br/>PERSON: ${o.orderuname}
                            <br/>FEE: $${o.ordermoney}
                            <br/>DATE: ${fn:substring(o.orderdate,5,16)}
                            <br/>PAYMENT TYPE: ${o.ordertype}</td>
                        <td>
                            <c:if test="${order.orderstatus ne '1'}">
                                <a href="javascript:;" class="btn btn-sm btn-default btn-deleteorder" data-id="${o.id}" data-orderregisterid="${o.orderregisterid}">Remove</a>
                                <a href="javascript:;" class="btn btn-sm btn-default btn-pay" data-id="${o.id}" data-orderregisterid="${o.orderregisterid}">Pay</a>
                            </c:if>
                        </td>
                        <td style="display:none">
                            <form class="form-pay" action="${payurl}" target="_blank">
                                <input type="hidden" name="orderId" value="${o.orderno}"/>
                                <input type="hidden" name="title" value="Conferences Fees"/>
                                <input type="hidden" name="description" value="${o.orderremark}"/>
                                <%--<c:set var="ordermoney" value="${o.ordermoney}"/>--%>
                                <c:set var="ordermoney" value="1"/>
                                <c:if test="${o.ordertype eq 'Alipay' or o.ordertype eq 'PayPal'}">
                                    <c:set var="ordermoney" value="${ordermoney/100}"/>
                                </c:if>
                                <input type="hidden" name="total" value="${ordermoney}"/>
                                <input type="hidden" name="processUrl" value="http://www.icus.org.cn">
                                <input type="hidden" name="openid" id="openid" >
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <c:if test="${empty orderList}">
        <div class="row">
            <div class="col-sm-offset-5 col-sm-7 col-xs-offset-3 col-xs-8">
                <button class="btn btn-primary btn-saveandsubmit" type="button">Create Order</button>
            </div>
        </div>
    </c:if>
</div>
<script type="text/javascript" src="<%=path%>/Submission/js/jquery.min.js"></script>
<script src="<%=path%>/Submission/js/bootstrap.min.js"></script>
<script src="<%=path%>/Submission/js/bootstrap-table.min.js"></script>
<script type='text/javascript' src='<%=path%>/dwr/engine.js'></script>
<script type='text/javascript' src='<%=path%>/dwr/interface/RegisterService.js'></script>
<c:if test="${not empty register}">
    <script type='text/javascript' src='<%=path%>/dwr/interface/OrderService.js'></script>
</c:if>
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
        var Payment = function(){
            var that = this;

            this.key_lwsl = 0;
            this.key_rylx = 1;
            this.key_ccys = 0;
            this.payurl_prefix = "http://www.egeoscience.com.cn/unipay";

            this.txt_price = $('.order-price');
            this.input_price = $('input[name="price"]');
            this.radio_lwsl = $('input[name="lwsl"]');
            this.radio_rylx = $('input[name="rylx"]');
            this.radio_ccys = $('input[name="ccys"]');
            this.radio_zffs = $('input[name="zffs"]');
            this.hidden_payurl = $('input[name="payurl"]');
            this.btn_submit = $('.btn-saveandsubmit');
            this.btn_pay = $('.btn-pay');

            this.computePrice = function(lwsl,rylx,ccys){
                var _price = 260;//￥3000

                //无论文，普通人员
                if(!lwsl && rylx == 1) {
                    _price = 260;//￥1800
                }

                //无论文，非普通人员
                else if(!lwsl && rylx != 1) {
                    _price = 200;//￥1500
                }

                //1篇论文，普通人员
                else if(lwsl == 1 && rylx == 1) {
                    _price = 420;//￥3000
                }

                //1篇论文，非普通人员
                else if(lwsl == 1 && rylx != 1) {
                    _price = 400;//￥2800
                }

                //2篇论文，普通人员
                else if(lwsl == 2 && rylx == 1) {
                    _price = 500;//￥3500
                }

                //2篇论文，非普通人员
                else if(lwsl == 2 && rylx != 1) {
                    _price = 450;//￥3200
                }

                if(ccys)
                    _price = _price + 150*ccys;

                this.txt_price.text('$'+_price);
                this.input_price.val(_price);
            };

            this.changePayurl = function(path) {
                this.hidden_payurl.val(this.payurl_prefix + path);
            }

            //提交订单
            this.ordersubmit = function(e){
                $('#orderForm').submit();
            };

            this.paysubmit = function(e){
                $('.form-pay').submit();
            }

            this.init = function(){
                this.radio_lwsl.on('change',function(e){
                    console.log($(this).attr('name')+':'+$(this).data('key'));
                    that.key_lwsl = $(this).data('key');
                    that.computePrice(that.key_lwsl,that.key_rylx,that.key_ccys);
                });

                this.radio_rylx.on('change',function(e){
                    console.log($(this).attr('name')+':'+$(this).data('key'));
                    that.key_rylx = $(this).data('key');
                    that.computePrice(that.key_lwsl,that.key_rylx,that.key_ccys);
                });

                this.radio_ccys.on('change',function(e){
                    console.log($(this).attr('name')+':'+$(this).data('key'));
                    that.key_ccys = $(this).data('key');
                    that.computePrice(that.key_lwsl,that.key_rylx,that.key_ccys);
                });

                this.radio_zffs.on('change',function(e){
                    console.log($(this).attr('name')+':'+$(this).data('key'));
                    that.changePayurl($(this).data('path'));
                });

                this.btn_submit.off('click').on('click',function(e){
                    that.ordersubmit(e);
                });

                this.btn_pay.off('click').on('click',function(e){
                    that.paysubmit(e);
                });

                $('.btn-deleteorder').off('click').on('click',function(e){
                    var order = {id:$(this).data('id'),orderregisterid:$(this).data('orderregisterid')};
                    OrderService.deleteOrder(order,function(ret){
                        if(ret){
                            window.location.href = '<%=path%>/payment.jsp';
                        }
                    });
                });
            }
        }

        var payment = new Payment();
        payment.init();
    });
</script>
</html>
