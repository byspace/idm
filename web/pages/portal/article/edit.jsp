<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>


<script type="text/javascript" src="<spring:url value="/static/script/portal/article/edit.js" />"></script>

<body class="easyui-layout">
<form id="ff" method="post">
	<table style="margin: 30px">
		<tr>
			<td width="200px">文章标题:</td>
			<td>
				<input type="hidden" name="id" id="id" value="0"/>
				<input class="easyui-validatebox" type="text" name="subject" id="subject" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>所属栏目:</td>
			<td>
				<input class="easyui-combotree" name="topic" id="topic" data-options="url:'<spring:url value="/portal/topic/getTopicTreeDataByParentId/0" />'" style="width:200px;">
			</td>
		</tr>
		<tr>
			<td>内容分类:</td>
			<td>

			</td>
		</tr>
		<tr>
			<td>文章类型:</td>
			<td>

			</td>
		</tr>
		<tr>
			<td>文章来源:</td>
			<td><input class="easyui-validatebox" type="text" name="source" id="source" data-options="" style="width: 300px;"/></td>
		</tr>
		<tr>
			<td>发布时间:</td>
			<td><input class="easyui-datetimebox" style="width:200px"></td>
		</tr>
		<tr>
			<td>文章摘要:</td>
			<td><textarea id="summary" name="summary" style="width: 300px; height: 200px;"></textarea> </td>
		</tr>
		<tr>
			<td>内容:</td>
			<td>
				<textarea name="content" id="contentEditor"></textarea>
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