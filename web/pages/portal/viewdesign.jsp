<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />

<body>

<%@ include file="top.jsp" %>
<input type="hidden" id="currentTopic" value="景观设计"/>

<div class="container">
	<table cellpading=0 cellspacing=0 style="padding: 0px; margin: 0px;" >
		<tr>
			<td><portal:panel panelCode="VD0001" width="300" height="323"></portal:panel></td>
			<td><portal:panel panelCode="VD0002" width="335" height="323"></portal:panel></td>
			<td><portal:panel panelCode="VD0003" width="240" height="323"></portal:panel></td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="VD0004" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="VD0005" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="VD0006" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="VD0007" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="VD0008" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="VD0009" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="VD0010" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="VD0011" width="240" height="380"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="VD0012" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="VD0013" width="240" height="380"></portal:panel>
			</td>
		</tr>

	</table>
</div>


<%@ include file="bottom.jsp"%>
</body>
</html>
