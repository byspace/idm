<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/editInformation.css"/>" type="text/css" />

<script type="text/javascript" src="<spring:url value="/static/script/uploadify/jquery.uploadify.min.js" />"></script>
<link rel="stylesheet" href="<spring:url value="/static/script/uploadify/uploadify.css"/>" type="text/css" />

<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = getUrl("/static/script/ueditor/");
</script>

<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.config.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.all.min.js" />"></script>

<input type="hidden" id="nav_current_page" value="post" />

<script type="text/javascript">
	var editor;
	$(function(){
		editor = UE.getEditor('content');

	});

	function submitForm() {
		ajaxSubmitForm($("#editInformationForm"), alertSaveResult, {content : editor.getContent()});
	}

	function alertSaveResult(data) {
		if (data.result) {
			window.location.reload();
		} else {
			alert(data.message);
		}
	}
</script>

<div class="container">

	<form method="POST" id="editInformationForm" name="editInformationForm" action="<spring:url value="/portal/usercenter/personal/post/save"/>">

	<input type="hidden" id="id" name="id" value="${personalPost.id}" />

	<div style="background-color: white;">
		<table width="100%" class="editTable" cellpadding="0" cellspacing="0">
			<tr>
				<td class="lineTitle" colspan="2">编辑设计案例</td>
			</tr>
			<tr>
				<td width="20%" class="label">标题</td>
				<td>
					<input type="text" id="title" name="title" class="inputText" style="width: 300px;" value="${personalPost.title}" size="200"/>
				</td>
			</tr>
			<tr>
				<td class="label">摘要</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="summary" id="summary" cols="65" rows="8">${personalPost.summary}</textarea>
				</td>
			</tr>
			<tr>
				<td class="label" style="vertical-align: top">正文</td>
				<td>
					<script id="content" type="text/plain" style="width:730px;height:1000px">
						${personalPost.content}
					</script>

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