<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/member/register/personal.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>


<div class="container" style="background-color: #ffffff">
<div class="regsiter_bz">
<p class="regsiter_bz_e" style="background: url('<spring:url value="/static/img/member/rebgc.jpg"/>') no-repeat left bottom;">
<span>填写通行账号</span>
<span>选择身份</span>
<span>完善资料</span>
<span style="padding-right: 0px">完成</span>
</p>
</div>

<form id="registerForm" name="registerForm" action="<spring:url value="/member/register/enterpriseCommit"/>">

<div class="regsiter_lbzt">
<div class="regsiter_list">
<p class="list_zh"><span>手机号:</span><input type="text" name="username" size="21" maxlength="20" v_name="登陆账号" v_type="string" v_maxlength="20" v_minlength="4" v_must="1"></p>
<p class="list_ts"><img src="<spring:url value="/static/img/member/zcts.gif"/>" width="16" height="16"><span>允许4-20数字组成的字符串</span></p>

</div>

<p class="regsiter_ansj">
<input type="button" value="下一步" class="regsiter_bot" onclick="submit()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif"/>') no-repeat scroll left center transparent;">
</p>

</div>

</form>
</div>

</body>
</html>