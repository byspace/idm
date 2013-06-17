<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ page import="java.util.*" %>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="portal" uri="/tags/portalTag.tld" %>

<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>国际设计传媒</title>

	<style>
		.panel {
			background: #FFF;
			padding: 10px;
			float: left;
		}
		.panel .top {
			height: 30px;
			border-bottom: #209fa9 dotted 1px;
		}
		.panel .top .title {
			float: left;
			height: 25;
		}

		.panel .top .title span {
			margin: 5px 0 0 10px;
			display: inline-block;
			font-weight: bold;
		}

		.panel .top .more {
			float: right;
			width: 54px;
			height: 20px;
			display: block;
			padding-top: 3px;
			padding-left: 5px;
		}
		.panel .top .more a {
			font-size: 12px;
			color: #FFFFFF;
			margin-left: 6px;
			line-height: 14px;
			text-decoration: none;
		}

		.panel ul.list {
			margin: 0px;
			padding: 0px;
			list-style: none;
		}

		.panel ul.list li {
			font-size: 12px;
			color: #000000;
			overflow: hidden;
			display: block;
			text-overflow: ellipsis;
			line-height: 22px;
			_line-height: 19px;
			min-width: 216px;
			word-break: keep-all;
			white-space: nowrap;
		}

		.panel ul.list li a {
			text-decoration: none;
			color: #000;
		}
	</style>

</head>
<body>

     <portal:panel panelCode="MP0001" width="338" height="462"></portal:panel>

</body>
</html>