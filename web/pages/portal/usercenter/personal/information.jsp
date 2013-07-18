<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="information" />

<script type="text/javascript">
	$(function(){
		$("td").each(function(){
			var html = $(this).html();
			$(this).html(html.replace(/\n/g, "<br />"));
		});
	});
</script>

<div class="container">
	<div class="main">

		<%@ include file="left.jsp"%>

		<div class="right">
			<div class="right_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>个人简历</span></div>
			<div class="right_bottom">
				<table width="100%" class="infomationTable">
					<tr>
						<td width="20%">参加工作时间:</td>
						<td><fmt:formatDate value="${member.personalInformation.startWorkDate}" pattern="yyyy-MM-dd"/></td>
					</tr>
					<tr>
						<td>在职公司名称:</td>
						<td>${member.personalInformation.company}</td>
					</tr>
					<tr>
						<td>职务:</td>
						<td>${member.personalInformation.duty}</td>
					</tr>
					<tr>
						<td>毕业院校:</td>
						<td>${member.personalInformation.school}</td>
					</tr>
					<tr>
						<td>专业:</td>
						<td>${member.personalInformation.major}</td>
					</tr>
					<tr>
						<td>最高学历:</td>
						<td>${member.personalInformation.degree}</td>
					</tr>
					<tr>
						<td>教育经历:</td>
						<td>${member.personalInformation.studyExperience}</td>
					</tr>
					<tr>
						<td>个人业绩:</td>
						<td>${member.personalInformation.workArchievement}</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="clear"></div>

		<%@include file="personal_bottom.jsp"%>