<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/portal_head.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />

<body>

<%@ include file="top.jsp" %>
<input type="hidden" id="currentTopic" value="效果图模型"/>

<div class="container">
	<table cellpading=0 cellspacing=0 style="padding: 0px; margin: 0px;" >
		<tr>
			<td><portal:panel panelCode="EM0001" width="300" height="323"></portal:panel></td>
			<td><portal:panel panelCode="EM0002" width="335" height="323"></portal:panel></td>
			<td><portal:panel panelCode="EM0003" width="240" height="323"></portal:panel></td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0004" width="940" height="300"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0005" width="940" height="400"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0006" width="940" height="300"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="2">
				<portal:panel panelCode="EM0007" width="665" height="380"></portal:panel>
			</td>
			<td>
				<portal:panel panelCode="EM0008" width="240" height="380"></portal:panel>
			</td>
		</tr>



		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0009" width="940" height="400"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0010" width="940" height="300"></portal:panel>
			</td>
		</tr>

		<tr>
			<td colspan="3">
				<portal:panel panelCode="EM0011" width="940" height="300"></portal:panel>
			</td>
		</tr>
	</table>
</div>


<%@ include file="bottom.jsp"%>
</body>
</html>
