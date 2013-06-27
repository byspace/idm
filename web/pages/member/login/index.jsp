<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/member/login/index.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>


<div class="container" style="background-color: #ffffff">

	<form id="loginForm" name="registerForm" method="post" action="<spring:url value="/member/login/loginCommit"/>">

		<div class="regsiter_lbzt" style="padding-top: 30px;">

			<div style="color: #007a7f; padding-left: 10px;height: 30px;line-height: 30px;font-weight: bold;font-size: 14px; width: 547px; background-color:  #f6f6f6; border: 1px solid #cecece;">用户登录</div>
			<table class="registTable" style="padding: 30px;border-left: 1px solid #cecece;border-right: 1px solid #cecece;border-bottom: 1px solid #cecece;">

				<tr>
					<td>登陆账号:</td>
					<td>
						<input class="text" type="text" value="${username}" name="username" id="username" size="21" maxlength="20"/>
					</td>
				</tr>

				<tr>
					<td>密码:</td>
					<td>
						<input class="text" type="password" name="password" id="password" maxlength="16" />
					</td>
				</tr>

				<tr>
					<td>验证码:</td>
					<td>
						<input class="text" type="text" name="code" id="securityCodeInput" style="width: 70px;" />
						<img style="padding-top: 10px;" id="securityCode" src="<spring:url value="/member/register/getSecurityCode/0"/>" width="70" height="25">
						<span>看不清?<a href="javascript:changeSecurityCode()">换一张</a></span>
					</td>
				</tr>

				<tr>
					<td></td>
					<td>
						<input type="checkbox" id="keepLogin" name="keepLogin" onclick="clickKeepLogin()"/>保持登录&nbsp;&nbsp;
						<input type="checkbox" id="rememberUsername" name="rememberUsername" />记住用户名&nbsp;&nbsp;
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<p class="regsiter_ansj" style="padding-top: 5px;">
							<input type="button" value="登陆" class="regsiter_bot" onclick="login()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif"/>') no-repeat scroll left center transparent;">
						</p>
					</td>
				</tr>

				<tr>
					<td></td>
					<td>
						<div style="font-size:14px; font-weight: bolder; padding-bottom: 10px; color: red;">${loginResult}</div>
						<p style="font-weight: bold">还不是国际设计传媒用户？<a href="<spring:url value="/member/register/index" />">立即注册</a>&nbsp;&nbsp;<a href="#">忘记密码</a></p>
						<br />
						现在免费注册成为国际设计媒体用户，便能立刻上传展示自己的作品
					</td>
				</tr>

			</table>

		</div>

	</form>

</div>

</body>
</html>