<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/member/register/step2.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>

<form id="registerFrom" name="registerFrom" method="post" action="<spring:url value="/member/register/step2Commit"/>">
	<input type="hidden" id="memberType" name="memberType" />
</form>


<div class="container" style="background-color: #ffffff">
	<div class="regsiter_bz">
		<p class="regsiter_bz_e" style="background: url('<spring:url value="/static/img/member/rebgb.jpg"/>') no-repeat left bottom;">
			<span>填写通行账号</span>
			<span>选择身份</span>
			<span>完善资料</span>
			<span style="padding-right: 0px">完成</span>
		</p>
	</div>

	<div class="regsiter_lbzt">
		<div class="regsiter_lbzta">
			<p class="yhzc"><input type="button" onclick="javascript:submit('personal')" class="yhzc_bnt" name="" value="个人用户注册Personal Register" style="background: url('<spring:url value="/static/img/member/xzbntbg.jpg"/>') repeat scroll center center transparent;"></p>
			<p class="yhzc"><input type="button" onclick="javascript:submit('enterprise')" class="yhzc_bnt" name="" value="企业用户注册Enterprise Register" style="background: url('<spring:url value="/static/img/member/xzbntbg.jpg"/>') repeat scroll center center transparent;"></p>
		</div>

	</div>
</div>

</body>
</html>