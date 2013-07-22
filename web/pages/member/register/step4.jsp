<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/member/register/step4.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>

<div class="container" style="background-color: #ffffff; padding-bottom: 50px;">
	<div class="regsiter_bz">
		<p class="regsiter_bz_e" style="background: url('<spring:url value="/static/img/member/rebgd.jpg"/>') no-repeat left bottom;">
			<span>填写通行账号</span>
			<span>选择身份</span>
			<span>完善资料</span>
			<span style="padding-right: 0px">完成</span>
		</p>
	</div>

	<h4 class="complete">
		恭喜您，成为国际设计传媒普通会员
		<img src="<spring:url value="/static/img/member/zcOK.gif"/>" width="115" height="85">
	</h4>

	<p class="complete_hy"><a href="<spring:url value="/portal/usercenter/index"/>">立刻进入会员中心</a></p>
</div>

</body>
</html>