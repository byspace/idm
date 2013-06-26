<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/portal_head.jsp" %>

<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = getUrl("/static/script/ueditor/");
</script>

<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.config.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.all.min.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/uploadify/jquery.uploadify.min.js" />"></script>

<script type="text/javascript" src="<spring:url value="/static/script/country.js"/>"></script>
<script type="text/javascript" src="<spring:url value="/static/script/member/register/enterprise.js"/>"></script>

<link rel="stylesheet" href="<spring:url value="/static/css/portal.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/css/register.css"/>" type="text/css" />
<link rel="stylesheet" href="<spring:url value="/static/script/uploadify/uploadify.css"/>" type="text/css" />

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

<form id="registerForm" name="registerForm" action="<spring:url value="/member/register/enterpriseCommit"/>">

	<div class="regsiter_lbzt" style="width: 750px; padding-top: 30px;">

		<table class="contentTable" width="100%">
			<tr>
				<td width="20%" class="label">公司名称:</td>
				<td><input class="text" type="text" name="name" id="name" size="100" maxlength="100"></td>
			</tr>
			<tr>
				<td class="label">公司Logo:</td>
				<td>
					<div id="logoDiv"><img id="logoImage" width="100" height="50" style="display: none"/></div>
					<input type="hidden" id="logo" name="logo" />
					<input type="file" name="uploadify" id="file_upload" />
				</td>
			</tr>

			<tr>
				<td class="label">公司类型:</td>
				<td>
					<select id="enterpriseType" name="enterpriseType">
						 <c:forEach items="${enterpriseTypeList}" var="enterpriseType">
							 <option value="${enterpriseType.id}">${enterpriseType.name}</option>
						 </c:forEach>
					</select>
				</td>
			</tr>

			<tr>
				<td class="label">公司主页:</td>
				<td>
					<input class="text" type="text" name="mainPage" id="mainPage" size="100" maxlength="100">
				</td>
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
				<td class="label">邮编:</td>
				<td><input class="text" type="text" style="width: 50px;" name="postCode" id="postCode" size="15" maxlength="15"></td>
			</tr>
			<tr>
				<td class="label">联系人:</td>
				<td><input class="text" type="text" name="contact" id="contact" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">手机:</td>
				<td><input class="text" type="text" name="mobile" id="mobile" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">固定电话:</td>
				<td>
					<input class="text" type="text" name="phone" id="phone" size="21" maxlength="20">
				</td>
			</tr>
			<tr>
				<td class="label">邮箱:</td>
				<td>
					<input class="text" type="text" name="email" id="email" size="50" maxlength="50">
				</td>
			</tr>
			<tr>
				<td class="label">传真:</td>
				<td><input class="text" type="text" name="fax" id="fax" size="21" maxlength="20"></td>
			</tr>
			<tr>
				<td class="label">公司简介:</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="introduction" id="introduction" cols="65" rows="15"></textarea>
				</td>
			</tr>

			<tr>
				<td class="label">公司详细介绍:</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="detail" id="detail" cols="65" rows="15"></textarea>
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