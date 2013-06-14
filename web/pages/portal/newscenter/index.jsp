<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/infocenter_banner.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/portal/infocenter_box.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/mid.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/portal/info.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/portal/public.css"/>" type="text/css" />

<body>

<%@ include file="../top.jsp" %>
<input type="hidden" id="currentTopic" value="资讯中心"/>

<div class="container">
<div class="body">
<div class="main_box01">

	<%@include file="panel/NC0001.jsp"%>

	<%@include file="panel/NC0002.jsp"%>

</div>

<%@include file="panel/NC0003.jsp"%>

<%@include file="panel/NC0004.jsp"%>

<div class="main_box04">

	<%@include file="panel/NC0005.jsp"%>

	<%@include file="panel/NC0006.jsp"%>

</div>

<%@include file="panel/NC0007.jsp"%>

<div class="main_box06">

	<%@include file="panel/NC0008.jsp"%>

	<%@include file="panel/NC0009.jsp"%>


	<div class="clear"></div>
</div>

<div class="main_box07">
	<%@include file="panel/NC0010.jsp"%>

	<%@include file="panel/NC0011.jsp"%>
</div>

	<div class="main_box08">

	<%@include file="panel/NC0012.jsp"%>

	<%@include file="panel/NC0013.jsp"%>

</div>
</div>
</div>


<%@ include file="../bottom.jsp"%>
</body>
</html>
