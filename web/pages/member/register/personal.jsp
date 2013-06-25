<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/country.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/member/register/personal.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />

<body>

<%@ include file="../../portal/top.jsp" %>


<div class="container" style="background-color: #ffffff">
	<div class="regsiter_bz">
		<p class="regsiter_bz_e" style="background: url('<spring:url value="/static/img/member/rebgc.jpg"/>') no-repeat left bottom;">
			<span>填写通行账号</span>
			<span>选择身份</span>
			<span>完善资料</span>
			<span style="padding-right: 0px">完成</span>
		</p>
	</div>

<form id="registerForm" name="registerForm" action="<spring:url value="/member/register/personalCommit"/>">

	<div class="regsiter_lbzt" style="width: 750px;">

		<table width="100%">
			<tr>
				<td width="20%" class="label">姓名:</td>
				<td><input class="text" type="text" name="name" id="name" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">性别:</td>
				<td>男<input checked="true" type="radio" name="sex" value="male">&nbsp;&nbsp;女<input type="radio" name="sex" value="female"></td>
			</tr>
			<tr>
				<td class="label">所在地区:</td>
				<td>
					<select id="s1" name="country"> <option>国家</option> </select>
					<select id="s2" name="province"> <option>省份、州</option> </select>
					<select id="s3" name="city"> <option>市、县</option> </select>
				</td>
			</tr>
			<tr>
				<td class="label">地址:</td>
				<td><input class="text" type="text" style="width:400px;" name="address" id="address" size="255" maxlength="255"></td>
			</tr>
			<tr>
				<td class="label">手机:</td>
				<td><input class="text" type="text" name="mobile" id="mobile" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">固定电话:</td>
				<td><input class="text" type="text" name="phone" id="phone" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">业务范围:</td>
				<td>
					<input type="hidden" id="personalWorkType" name="personalWorkType"/>
					<c:forEach items="${personalWorkTypeList}" var="personalWorkType" varStatus="status">
						<input type="checkbox" class="workTypeBox" onchange="setWorkType()" value="${personalWorkType.id}" />${personalWorkType.name}&nbsp;
						<c:if test="${status.index % 3 == 2}"><br /></c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td class="label">擅长设计类型:</td>
				<td>
					<input type="hidden" id="personalDesignType" name="personalDesignType"/>
					<c:forEach items="${personalDesignTypeList}" var="personalDesignType" varStatus="status">
						<input type="checkbox" class="designTypeBox" onchange="setDesignType()" value="${personalDesignType.id}" />${personalDesignType.name}&nbsp;
						<c:if test="${status.index % 3 == 2}"><br /></c:if>
					</c:forEach>
				</td>
			</tr>
			<tr>
				<td class="label">个人简介:</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="introduction" id="introduction" cols="65" rows="15"></textarea>
				</td>
			</tr>
		</table>

		<p class="regsiter_ansj">
			<input type="button" value="下一步" class="regsiter_bot" onclick="submit()" style="background: url('<spring:url value="/static/img/member/zcyjbot.gif"/>') no-repeat scroll left center transparent;">
		</p>

	</div>

</form>
</div>

</body>
</html>