<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@include file="../common/head.jsp"%>

	<style>
		.panel {
			background: #FFF;
			padding: 10px;
			float: left;
			margin: 5px;
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
<body style="background-color: #d4d5d6">

	<div>
		<portal:panel panelCode="NC0001" width="300" height="380"></portal:panel>

		<portal:panel panelCode="NC0002" width="338" height="380"></portal:panel>
	</div>



</body>
</html>