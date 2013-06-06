<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>


<script type="text/javascript" src="<spring:url value="/static/script/portal/article/index.js" />"></script>

<body>

<div style="margin:10px 0;"></div>

<table id="dg" class="easyui-datagrid" title="文章分类管理" style="width:auto;height:auto"
			data-options="
				iconCls: 'icon-edit',
				toolbar: '#tb',
				pagination:true,
				pageSize: 20,
				url: '<spring:url value="/dataGrid/getData/Article" />',
				loadMsg: '载入中...'
			">
	<thead>
		<tr>
			<th data-options="field:'id',width:50">ID</th>
			<th data-options="field:'subject',width:250,editor:'text'">主题</th>
			<th data-options="field:'topicName',width:150,editor:'text'">栏目</th>
			<th data-options="field:'categoryName',width:150,editor:'text'">分类</th>
			<th data-options="field:'articleTypeName',width:150,editor:'text'">类型</th>
			<th data-options="field:'source',width:150,editor:'text'">来源</th>
			<th data-options="field:'publishDateStr',width:150,editor:'text'">发布日期</th>
			<th data-options="field:'summary',width:300,editor:'text'">摘要</th>
		</tr>
	</thead>
</table>

<div id="tb" style="height:auto">
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="editRow()">编辑</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="deleteRows()">删除</a>
</div>

<div id="w" class="easyui-window" title="Modal Window" data-options="modal:true,closed:true,iconCls:'icon-save'" style="width:500px;height:200px;padding:10px;">
	The window content.
</div>

</body>
</html>