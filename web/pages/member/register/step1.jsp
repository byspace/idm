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
		<div class="regsiter_list">
			<p class="list_zh"><span>登陆账号:</span><input type="text" name="username" size="21" maxlength="20" v_name="登陆账号" v_type="string" v_maxlength="20" v_minlength="4" v_must="1"></p>
			<p class="list_ts"><img src="<spring:url value="/static/img/member/zcts.gif"/>" width="16" height="16"><span>允许4-20个中文字符、英文字符或数字组成的字符串</span></p>

		</div>
		<div class="regsiter_list">
			<p class="list_zh"><span>设置密码:</span><input type="password" name="password" maxlength="16" v_name="设置密码" v_type="0_9" v_maxlength="15" v_minlength="6" v_must="1"></p>
			<p class="list_ts"><img src="<spring:url value="/static/img/member/zcts.gif"/>" width="16" height="16"><span>请设置长度为6-15位的密码</span></p>

		</div>
		<div class="regsiter_list">
			<p class="list_zh"><span>确认密码:</span><input type="password" name="pwd_retry" maxlength="16" v_name="确认密码" v_type="0_9" v_maxlength="15" v_minlength="6" v_must="1"></p>
			<p class="list_ts"><img src="<spring:url value="/static/img/member/zcts.gif"/>" width="16" height="16"><span>重复输入密码</span></p>

		</div>
		<div class="regsiter_list">
			<p class="list_zh"><span>电子邮箱:</span><input type="text" name="email" v_name="电子邮箱" v_type="email" v_maxlength="60" v_minlength="0" v_must="1/"></p>
			<p class="list_ts"><img src="<spring:url value="/static/img/member/zcts.gif"/>" width="16" height="16"><span>请填写有效的电子邮箱</span></p>

		</div>
		<div class="regsiter_list">
			<p class="list_zh">
				<span style="padding-left:12px;">验证码:</span>
				<input type="text" name="securityCode" v_name="验证码" v_type="string" v_maxlength="4" v_minlength="4" v_must="1" class="regiter_yzm" />
			</p>
			<p class="list_yamxs">
				<img id="securityCode" src="<spring:url value="/member/register/getSecurityCode/0"/>" width="70" height="25">
				<span>看不清?<a href="javascript:changeSecurityCode()">换一张</a></span>
			</p>
		</div>
		<p class="regsiter_ansj">
			<input type="button" value="同意协议并注册" class="regsiter_bot" onclick="submit()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif"/>') no-repeat scroll left center transparent;">
			<span>已注册立即<a href="#">登陆</a></span>
		</p>

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