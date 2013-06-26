<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/member/register/step1.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>


<div class="container" style="background-color: #ffffff">
	<div class="regsiter_bz">
		<p class="regsiter_bz_e" style="background: url('<spring:url value="/static/img/member/rebga.jpg"/>') no-repeat left bottom;">
			<span>填写通行账号</span>
			<span>选择身份</span>
			<span>完善资料</span>
			<span style="padding-right: 0px">完成</span>
		</p>
	</div>

	<form id="registerForm" name="registerForm" action="<spring:url value="/member/register/step1Commit"/>">

	<div class="regsiter_lbzt">

		<table class="registTable">
			<tr>
				<td>登陆账号:</td>
				<td>
					<input class="text" type="text" name="username" id="username" size="21" maxlength="20"/>
					<span class="checkResult"></span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>允许4-20个英文字符、数字或下划线组成的字符串</td>
			</tr>
			<tr>
				<td>设置密码:</td>
				<td>
					<input class="text" type="password" name="password" id="password" maxlength="16" />
					<span class="checkResult"></span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>请设置长度为6-15位的密码</td>
			</tr>
			<tr>
				<td>确认密码:</td>
				<td>
					<input class="text" type="password" name="pwd_retry" id="pwd_retry" maxlength="16" />
					<span class="checkResult"></span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>重复输入密码</td>
			</tr>
			<tr>
				<td>电子邮箱:</td>
				<td>
					<input class="text" type="text" name="email" id="email" />
					<span class="checkResult"></span>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>请填写有效的电子邮箱</td>
			</tr>
			<tr>
				<td>验证码:</td>
				<td>
					<input class="text" type="text" name="securityCode" id="securityCodeInput" style="width: 70px;" />
					<span class="checkResult"></span>
					<img style="padding-top: 10px;" id="securityCode" src="<spring:url value="/member/register/getSecurityCode/0"/>" width="70" height="25">
					<span>看不清?<a href="javascript:changeSecurityCode()">换一张</a></span>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<p class="regsiter_ansj">
						<input type="button" value="同意协议并注册" class="regsiter_bot" onclick="submitRegister()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif"/>') no-repeat scroll left center transparent;">
						<span>已注册立即<a href="#">登陆</a></span>
					</p>
				</td>
			</tr>

		</table>

	</div>

	</form>


	<div class="clear"></div>
	<div class="regsiter_ffhtk">
		<p><a href="#">《国际设计传媒网服务条款》</a></p>
		<div class="ffhtk_ler">
			<dl>
				<dt>一、国际设计传媒服务条款</dt>
				<dd>国际设计传媒网立足于商务，为客户提供全方位的服务。<br>
					国际设计传媒网的各项电子服务的所有权和运作权归国际设计传媒网。国际设计传媒网提供的服务将完全按照其发布的章程、服务条款和操作规则严格执行。会员若完全同意所有服务条款，并完成注册程序，即可成为国际媒体设计网的正式会员</dd>

				<dt>二、国际设计传媒服务条款</dt>
				<dd>国际设计传媒网立足于商务，为客户提供全方位的服务。<br>
					国际设计传媒网的各项电子服务的所有权和运作权归国际设计传媒网。国际设计传媒网提供的服务将完全按照其发布的章程、服务条款和操作规则严格执行。会员若完全同意所有服务条款，并完成注册程序，即可成为国际媒体设计网的正式会员</dd>

			</dl>

		</div>

	</div>

</div>

</body>
</html>