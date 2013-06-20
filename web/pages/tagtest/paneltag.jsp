<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@include file="../common/head.jsp"%>

	<style>

		body {
			font-family: "Microsoft YaHei","Microsoft JhengHei",STHeiti,MingLiu;
		}

		.panel {
			background: #FFF;
			padding: 10px;
			float: left;
			margin: 5px;
		}
		.panel .top {
			height: 30px;
			border-bottom: #209fa9 dotted 1px;
			margin-bottom: 15px;
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

		.panel ul.list li a:hover {
			text-decoration:underline;
		}

		.panel img {
			cursor: pointer;
		}
		a {
			color: black;
		}

		.imageContainer {
		}

		.imageContainer ul {
			margin: 0px;
			padding: 0px;
			list-style: none;
		}

		.imageContainer li {
			float: left;
			margin: 10px;
		}

		.imageContainer ul li a {
			overflow: hidden;
			white-space: nowrap;
			text-overflow: ellipsis;
			text-decoration: none;
			display: block;
		}

		.imageContainer ul li a:hover {
			text-decoration: underline;

		}


	</style>

</head>
<body style="background-color: #d4d5d6">

	<table cellpading=0 cellspacing=0 style="padding: 0px; margin: 0px;" >
		<tr>
			<td><portal:panel panelCode="BD0001" width="300" height="323"></portal:panel></td>
			<td><portal:panel panelCode="BD0002" width="335" height="323"></portal:panel></td>
			<td><portal:panel panelCode="BD0003" width="240" height="323"></portal:panel></td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0004" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0005" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0006" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0007" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0008" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0009" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0010" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0011" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0012" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0013" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="BD0014" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="BD0015" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="BD0016" width="940" height="380"></portal:panel>
			</td>
		</tr>
	</table>

</body>
</html>