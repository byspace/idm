<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="design" />

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
		<div class="left">
			<div class="left_top">
				<div class="img">
					<c:if test="${member.personalInformation.portrait == \"default\"}">
						<img src="<spring:url value="/static/images/portrait/default.png"/>" width="130" height="150"/>
					</c:if>
					<c:if test="${member.personalInformation.portrait != \"default\"}">
						<img src="${member.personalInformation.portrait}" width="130" height="150"/>
					</c:if>
				</div>
				<div class="produce">
					<ul>
						<li><span>姓名：</span>${member.name}</li>
						<li><span>性别：</span><c:if test="${member.personalInformation.sex == 0}">男</c:if><c:if test="${member.personalInformation.sex == 1}">女</c:if></li>
						<li><span>学历：</span>${member.personalInformation.degree}</li>
						<li><span>专业：</span>${member.personalInformation.major}</li>
						<li><span>毕业院校：</span>${member.personalInformation.school}</li>
						<li><span>工作单位：</span>${member.personalInformation.company}</li>
						<c:if test="${isCurrentUser}"><li><a class="editLink" href="<spring:url value="/portal/usercenter/personal/information/edit/${member.id}"/>" target="_blank">编辑个人信息</a></li></c:if>
					</ul>
				</div>
			</div>
			<div class="left_bottom">
				<ul>
					<li class="left_bottom_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>个人出色作品</span>
					</li>
					<li>
						<ul class="work">
							<li><img src="images/work.png"><br><a href="#">宏伟办公大厦</a></li>
							<li><img src="images/work.png"><br><a href="#">宏伟办公大厦</a></li>
							<li><img src="images/work.png"><br><a href="#">宏伟办公大厦</a></li>
							<li><img src="images/work.png"><br><a href="#">宏伟办公大厦</a></li>
						</ul>
						<div class="clear"></div>
					</li>
				</ul>
			</div>
		</div>
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