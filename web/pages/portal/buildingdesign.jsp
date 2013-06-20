<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />

<body>

<%@ include file="top.jsp" %>
<input type="hidden" id="currentTopic" value="建筑设计"/>

<div class="container">
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
</div>


<%@ include file="bottom.jsp"%>
</body>
</html>
