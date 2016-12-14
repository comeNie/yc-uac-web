<!DOCTYPE html>
<%@page import="com.ai.opt.uac.web.constants.Constants"%>
<%@page import="com.ai.opt.sdk.components.mcs.MCSClientFactory"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.Date"%>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html lang="zh-cn">
<head>
<%@ include file="/inc/inc.jsp"%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <%-- <link rel="shortcut icon" href="${_baasBase }/images/citic.ico"> --%>
    <meta name="viewport" content="width=device-width; initial-scale=0.8;  user-scalable=0;" />
    <title>译云专业语言服务平台后台登录</title>
	<script type="text/javascript" src="${_baasBase }/js/datacheck.js" ></script>
	<script language="javascript" src="${pageContext.request.contextPath}/resources/spm_modules/app/login/messenger.js"></script>  
	<script language="javascript" src="${pageContext.request.contextPath}/resources/spm_modules/app/login/casLoginView.js"></script>  

</head>
<body class="loginbj">	
		<div class="herad"><img src="${_ycBase}/images/herad-logo.png" /></div>
		<form:form method="post" id="fm1" name="fm1" commandName="${commandName}" htmlEscape="true">
		<div class="login-user">
			<div class="user-center">
				<div class="user-list">
					<ul>
					<div class="login-note" id="errorMsg"><form:errors path="*" id="msg" cssClass="errors" element="div" htmlEscape="false" /></div>
						<li>
							<p><img src="${_ycBase}/images/urse-logo.png" /></p>
							<p class="title">后台管理系统</p>
						</li>
						<li class="enword"><img src="${_ycBase}/images/word.jpg" /></li>
						<li class="mt-30"><form:input cssClass="int-ntext" cssErrorClass="error" id="username" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" placeholder="登录名/手机号／邮箱"/><i class="icon iconfont">&#xe60c;</i></li>
						<li><form:password  cssClass="int-ntext" cssErrorClass="error" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off"  placeholder="密码" onkeydown="encryptPwd(event)"/><i class="icon iconfont">&#xe609;</i></li>
						<li class="pasw">
							<p><input id="rememberMe" name="rememberMe" type="checkbox"/>自动登录</p>
							<!-- <p class="right"><a href="#">忘记密码</a></p> -->
						</li>
						
					</ul>
				</div>
			<div class="nwbtn">
			<input type="button" class="nlogin-btn" value="登 录" accesskey="l" tabindex="4" onclick="javascript:dologin();">
				
			</div>
			</div>
			
		</div>
				<input type="hidden"  id="errorNum" name="errorNum" value="${errorNum}">
		<input type="hidden" name="lt" value="${loginTicket}" />
		<input type="hidden" name="execution" value="${flowExecutionKey}" />
		<input type="hidden" name="_eventId" value="submit" />
		<input type="hidden" name="sessionId" value="<%=request.getSession().getId()%>"/>
		</form:form>
		<div class="user-footer">译云专业语言服务平台 版权所有   Copyright ©2015 www.yeecloud.com All rights reserved. 京ICP备13002826号-7</div>
</body>

</html>
