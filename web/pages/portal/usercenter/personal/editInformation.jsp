<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/editInformation.css"/>" type="text/css" />

<script type="text/javascript" src="<spring:url value="/static/script/country.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/My97DatePicker/WdatePicker.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/usercenter/editInformation.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/uploadify/jquery.uploadify.min.js" />"></script>
<link rel="stylesheet" href="<spring:url value="/static/script/uploadify/uploadify.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="information" />

<div class="container">

	<form method="POST" id="editInformationForm" name="editInformationForm" action="<spring:url value="/portal/usercenter/personal/information/save"/>">
	<input type="hidden" id="id" name="id" value="${member.id}" />
	<div style="background-color: white;">
		<table width="100%" class="editTable" cellpadding="0" cellspacing="0">
			<tr>
			   <td class="lineTitle" colspan="2">基本信息</td>
			</tr>
			<tr>
				<td width="20%" class="label">头像</td>
				<td>
					<img src="${member.personalInformation.portrait}" width="130px" height="150px" id="portraitImage" />
					<input type="hidden" id="portrait" name="portrait" />
					<input type="file" name="uploadify" id="file_upload" />
				</td>
			</tr>
			<tr>
				<td class="label">姓名</td>
				<td><input type="text" id="name" name="name" class="inputText" value="${member.name}"/> </td>
			</tr>
			<tr>
				<td class="label">性别</td>
				<td>
					<input type="radio" name="sex" value="0" <c:if test="${member.personalInformation.sex == 0}">checked</c:if> />男
					&nbsp;&nbsp;
					<input type="radio" name="sex" value="1" <c:if test="${member.personalInformation.sex == 1}">checked</c:if>/>女
				</td>
			</tr>
			<tr>
				<td class="label">邮箱</td>
				<td><input type="text" id="email" name="email" class="inputText" value="${member.email}" /> </td>
			</tr>
			<%--<tr>
				<td class="label">所在地区</td>
				<td>
					<select id="s1" name="country"><option value="${member.personalInformation.country}">${member.personalInformation.country}</option></select>
					<select id="s2" name="province"><option value="${member.personalInformation.province}">${member.personalInformation.province}</option></select>
					<select id="s3" name="city"><option value="${member.personalInformation.city}">${member.personalInformation.city}</option></select>
				</td>
			</tr>--%>
			<tr>
				<td class="label">地址</td>
				<td><input type="text" id="address" name="address" class="inputText" value="${member.personalInformation.address}" style="width: 400px;" /></td>
			</tr>
			<tr>
				<td class="label">手机</td>
				<td><input type="text" id="mobile" name="mobile" class="inputText" value="${member.personalInformation.mobile}" /></td>
			</tr>
			<tr>
				<td class="label">固定电话</td>
				<td><input type="text" id="phone" name="phone" class="inputText" value="${member.personalInformation.phone}"/> </td>
			</tr>
			<tr>
				<td class="label">业务范围:</td>
				<td>
					<input type="hidden" id="personalWorkType" name="personalWorkType" value="${personalWorkType}"/>
					<c:forEach items="${personalWorkTypeList}" var="personalWorkType" varStatus="status">
						<input type="checkbox" class="workTypeBox" onchange="setWorkType()" value="${personalWorkType.id}" />${personalWorkType.name}&nbsp;
						<c:if test="${status.index % 3 == 2}"><br /></c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td class="label">擅长设计类型:</td>
				<td>
					<input type="hidden" id="personalDesignType" name="personalDesignType" value="${personalDesignType}"/>
					<c:forEach items="${personalDesignTypeList}" var="personalDesignType" varStatus="status">
						<input style="margin-bottom: 10px;" type="checkbox" class="designTypeBox" onchange="setDesignType()" value="${personalDesignType.id}" />${personalDesignType.name}&nbsp;
						<c:if test="${status.index % 3 == 2}"><br /></c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td class="label">个人简介</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="introduction" id="introduction" cols="65" rows="15">${member.introduction}</textarea>
				</td>
			</tr>
			<tr>
				<td class="lineTitle" colspan="2">工作信息</td>
			</tr>
			<tr>
				<td class="label">参加工作时间</td>
				<td><input type="text" class="inputText" onclick="WdatePicker()" id="startWorkDate" name="startWorkDate" value="${startWorkDateStr}"/></td>
			</tr>
			<tr>
				<td class="label">公司名称</td>
				<td><input type="text" class="inputText" id="company" name="company" value="${member.personalInformation.company}" /></td>
			</tr>
			<tr>
				<td class="label">职务</td>
				<td><input type="text" class="inputText" id="duty" name="duty" value="${member.personalInformation.duty}" /></td>
			</tr>
			<tr>
				<td class="lineTitle" colspan="2">教育信息</td>
			</tr>
			<tr>
				<td class="label">毕业院校</td>
				<td><input type="text" class="inputText" id="school" name="school" value="${member.personalInformation.school}" /></td>
			</tr>
			<tr>
				<td class="label">专业</td>
				<td><input type="text" class="inputText" id="major" name="major" value="${member.personalInformation.major}" /></td>
			</tr>
			<tr>
				<td class="label">最高学历</td>
				<td><input type="text" class="inputText" id="degree" name="degree" value="${member.personalInformation.degree}" /></td>
			</tr>
			<tr>
				<td class="label">教育经历</td>
				<td><textarea style="border: 1px solid #DDDDDD;" name="studyExperience" id="studyExperience" cols="65" rows="8">${member.personalInformation.studyExperience}</textarea></td>
			</tr>
			<tr>
				<td class="lineTitle" colspan="2">主要业绩</td>
			</tr>
			<tr>
				<td class="label">个人业绩</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="workArchievement" id="workArchievement" cols="65" rows="15">${member.personalInformation.workArchievement}</textarea>
				</td>
			</tr>

			<tr>
				<td colspan="2" style="text-align: center">
					<input type="button" value="保存" class="regsiter_bot" onclick="submitForm()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif" />') no-repeat scroll left center transparent;">
				</td>
			</tr>
		</table>
	</div>
	</form>

<%@include file="personal_bottom.jsp"%>