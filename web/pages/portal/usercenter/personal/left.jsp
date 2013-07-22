<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="left">
	<div class="left_top">
		<div class="img">
			<c:if test="${member.personalInformation.portrait == \"default\"}">
				<img src="<spring:url value="/static/images/portrait/default.png"/>" width="130" height="150"/>
			</c:if>
			<c:if test="${member.personalInformation.portrait != \"default\"}">
				<img src="${member.personalInformation.portrait}" width="130" height="150"/>
			</c:if>
				<br/>
			<c:if test="${isCurrentUser}">&nbsp;&nbsp;&nbsp;&nbsp;<a class="editLink" href="<spring:url value="/portal/usercenter/personal/information/edit/${member.id}"/>" target="_blank">编辑个人信息</a></c:if>
		</div>
		<div class="produce">
			<ul>
				<li><span>姓名：</span>${member.name}</li>
				<li><span>性别：</span><c:if test="${member.personalInformation.sex == 0}">男</c:if><c:if test="${member.personalInformation.sex == 1}">女</c:if></li>
				<li><span>学历：</span>${member.personalInformation.degree}</li>
				<li><span>专业：</span>${member.personalInformation.major}</li>
				<li><span>毕业院校：</span>${member.personalInformation.school}</li>
				<li><span>工作单位：</span>${member.personalInformation.company}</li>

			</ul>
		</div>
	</div>
	<div class="left_bottom">
		<ul>
			<li class="left_bottom_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>个人出色作品</span>
			</li>
			<li>
				<ul class="work">
					<c:forEach items="${bestWorkDesignTypeList}" var="design">
						<li><img src="${design.titleImage}" width="126px" height="92px"><br><a href="<spring:url value="/portal/usercenter/personal/design/view/${design.id}"/>">${design.title}</a></li>
					</c:forEach>

				</ul>
				<div class="clear"></div>
			</li>
		</ul>
	</div>
</div>