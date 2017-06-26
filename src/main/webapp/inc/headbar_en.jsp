<%@ page language="java" pageEncoding="UTF-8" %>

<div class="container-fluid headerbar">
    <div class="row">
        <div class="col-sm-12">
            <span class="wellcome">Welcome!</span>
            <div class="pull-right btn-group" id="registerInfo">
                <a class="btn btn-default" onclick="javascript:registerFormFadeIn();" style="padding:0px 8px;">Register</a>
                <a class="btn btn-default" onclick="javacript:loginFormFadeIn();" style="padding:0px 8px;">Sign in</a>
                <a class="btn btn-default btn-language" onclick="javascript:indexCn();" style="padding:0px 8px;"> CN </a>
            </div>
        </div>
    </div>
</div>
<div class="navbox-wap">
    <div class="navbar navbar-inverse navbar-fixed-top"  style="top:35px;" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <span class="navbar-brand">ICUS2017</span>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>

            <div class="collapse navbar-collapse" >
                <ul class="nav navbar-nav">
                    <li><a href="<%=path%>/index.jsp#Home">Home</a></li>
                    <li><a href="<%=path%>/index.jsp#callForPapers">Call For Papers </a></li>
                    <li><a href="<%=path%>/index.jsp#workshop">Workshop</a></li>
                    <li><a href="<%=path%>/index.jsp#Keynote_Speakers">Keynote Speakers</a></li>
                    <li><a href="<%=path%>/index.jsp#Invited_Sessions">Invited Sessions</a></li>
                    <li><a href="<%=path%>/index.jsp#Submission">Submission</a></li>
                    <li><a href="<%=path%>/index.jsp#committee">Committee</a></li>
                    <li><a href="<%=path%>/index.jsp#Fee">Fee</a></li>
                    <li><a href="<%=path%>/index.jsp#Download">Download</a></li>
                    <li><a href="<%=path%>/index.jsp#Venue">Venue</a></li>
                       <%-- <li id="registerInfo">
                            <div class="btn-group">
                                <button class="btn btn-primary" onclick="javascript:registerFormFadeIn();" style="padding:1px 8px;">Register</button>
                                <button class="btn btn-warning" onclick="javacript:loginFormFadeIn();" style="padding:1px 8px;">Sign in</button>
                                <button class="btn btn-danger" onclick="javascript:indexCn();" style="padding:1px 14px;"> CN </button>
                            </div>
                        </li>--%>
                    <div class="clear"></div>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>

</div>