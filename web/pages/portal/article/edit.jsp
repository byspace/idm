<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" charset="utf-8">
	window.UEDITOR_HOME_URL = getUrl("/static/script/ueditor/");
</script>

<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.config.js" />"></script>
<script type="text/javascript" src="<spring:url value="/static/script/ueditor/ueditor.all.min.js" />"></script>

<script type="text/javascript" src="<spring:url value="/static/script/portal/article/edit.js" />"></script>

<body class="easyui-layout" style="overflow: scroll">
<form id="ff" method="post" action="<spring:url value="/portal/article/save" />">
	<table style="margin: 30px">
		<tr>
			<td width="20%">文章标题:</td>
			<td>
				<input type="hidden" name="id" id="id" value="<c:if test="${article == null}">0</c:if><c:if test="${article != null}">${article.id}</c:if>"/>
				<input class="easyui-validatebox" type="text" value="${article.subject}" name="subject" id="subject" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>所属栏目:</td>
			<td>
				<input class="easyui-combotree" name="topic" id="topic" value="${article.topic.id}" data-options="url:'<spring:url value="/portal/topic/getTopicTreeDataByParentId/0" />'" style="width:200px;">
			</td>
		</tr>
		<tr>
			<td>内容分类:</td>
			<td>
				<select class="easyui-combobox" name="category" id="category" style="width:200px;" value="${article.category.id}">
					<option value="0">请选择</option>
					<c:forEach items="${categories}" var="category">
						<option <c:if test="${category.id == article.category.id}">selected</c:if> value="${category.id}">${category.name}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>文章类型:</td>
			<td>
				<select class="easyui-combobox" name="articleType" id="articleType" style="width:200px;" value="${article.articleType.id}">
					<option value="0">请选择</option>
					<c:forEach items="${articleTypes}" var="articleType">
						<option <c:if test="${articleType.id == article.articleType.id}">selected</c:if> value="${articleType.id}">${articleType.name}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
		<tr>
			<td>文章来源:</td>
			<td><input class="easyui-validatebox" type="text" value="${article.source}" name="source" id="source" data-options="" style="width: 300px;"/></td>
		</tr>
		<tr>
			<td>发布时间:</td>
			<td><input class="easyui-datetimebox" name="publishDate" id="publishDate"  value="${article.publishDateStr}" style="width:200px"></td>
		</tr>
		<tr>
			<td>文章摘要:</td>
			<td><textarea id="summary" name="summary"  style="width: 500px; height: 100px;">${article.summary}</textarea> </td>
		</tr>
		<tr>
			<td>内容:</td>
			<td>
				<script id="content" type="text/plain" style="width:1024px;height:1000px">
					${article.content}
				</script>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; padding-top: 20px">
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="saveForm()">保存</a>
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="resetForm();">新建</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>