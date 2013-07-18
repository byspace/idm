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

<input type="hidden" id="nav_current_page" value="design" />

<script type="text/javascript">
	var editor;
	$(function(){
		editor = UE.getEditor('content');

		$("#file_upload").uploadify({
			'fileTypeDesc' : 'Image Files',
			swf           : getUrl('/static/script/uploadify/uploadify.swf'),
			uploader      : getUrl('/ueditor/imageUp'),
			buttonText    : "上传标题图片",
			fileSizeLimit : '2MB',
			'fileTypeExts' : '*.gif; *.jpg; *.png; *.ico',
			'width' : 80,
			'height' : 20,
			'uploadLimit' : 1,
			'onUploadSuccess' : function(file, data, response) {

				if (response) {
					data = data.replace(/'/g, "\"");
					var json = $.parseJSON(data);
					var realPath = getUrl("/static/" + json.url);

					$("#titleImage").val(realPath);
					$("#titleImageImage").attr("src", realPath).show();

					$('#file_upload').uploadify('cancel', '*');
				}
			}
		});
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

	<form method="POST" id="editInformationForm" name="editInformationForm" action="<spring:url value="/portal/usercenter/personal/design/save"/>">

	<input type="hidden" id="id" name="id" value="${personalDesign.id}" />

	<div style="background-color: white;">
		<table width="100%" class="editTable" cellpadding="0" cellspacing="0">
			<tr>
				<td class="lineTitle" colspan="2">编辑设计案例</td>
			</tr>
			<tr>
				<td width="20%" class="label">标题</td>
				<td>
					<input type="text" id="title" name="title" class="inputText" style="width: 300px;" value="${personalDesign.title}" size="200"/>
				</td>
			</tr>
			<tr>
				<td class="label">摘要</td>
				<td>
					<textarea style="border: 1px solid #DDDDDD;" name="summary" id="summary" cols="65" rows="8">${personalDesign.summary}</textarea>
				</td>
			</tr>
			<tr>
				<td class="label">设计类别</td>
				<td>
					<select id="type" name="type">
						<option value="">请选择</option>
						<c:forEach items="${designTypes}" var="type">
							<option <c:if test="${personalDesign.type == type.key}">selected</c:if> value="${type.key}">${type.value}</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<td class="label">标题图片</td>
				<td>
					<img src="${personalDesign.titleImage}" width="120px" height="95px" id="titleImageImage" />
					<input type="hidden" id="titleImage" name="titleImage" />
					<input type="file" name="uploadify" id="file_upload" />
				</td>
			</tr>
			<tr>
				<td class="label">个人出色作品</td>
				<td>
					<input type="checkbox" <c:if test="${personalDesign.bestWork == 'on'}">checked</c:if> id="bestWork" name="bestWork" />个人出色作品
				</td>
			</tr>
			<tr>
				<td class="label" style="vertical-align: top">正文</td>
				<td>
					<script id="content" type="text/plain" style="width:730px;height:1000px">
						${personalDesign.content}
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