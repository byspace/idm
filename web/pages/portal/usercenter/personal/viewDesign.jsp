<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/portal/sub.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="design" />

<div class="container">

		<div class="right_top" style="font-size: 14px;font-weight: bold;color: #757575;background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>设计案例</span></div>
		<div class="right_bottom">

			<div class="details_list">
				<table class="aarticle" cellpadding="0" cellspacing="0">
					<tbody>
					<tr>
						<td class="title">${personalDesign.title}</td>
					</tr>
					<tr>
						<td class="lline"></td>
					</tr>
					<tr>
						<td class="time">
							<fmt:formatDate value="${personalDesign.createDate}" pattern="yyyy-MM-dd HH:mm"/>
							&nbsp;&nbsp;设计类型：<font class="time_source">${personalDesign.type}</font>
						</td>
					</tr>
					<tr>
						<td class="content" id="zoom"><br>
							${personalDesign.content}
							<br>
						</td>
					</tr>
					</tbody>
				</table>


			</div>
		</div>

<%@include file="personal_bottom.jsp"%>