<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../../common/head.jsp" %>


<script type="text/javascript" src="<spring:url value="/static/script/console/template/panelinstance/index.js" />"></script>

<body>

<div style="margin:10px 0;"></div>

<table id="dg" class="easyui-datagrid" title="版面管理" style="width:auto;height:auto"
		data-options="
		iconCls: 'icon-edit',
		toolbar: '#tb',
		pagination:true,
		pageSize: 20,
		url: '<spring:url value="/dataGrid/getData/PanelInstance" />',
		loadMsg: '载入中...'
">
	<thead>
		<tr>
			<th data-options="field:'id',width:50">ID</th>
			<th data-options="field:'code',width:100,editor:'text'">编码</th>
			<th data-options="field:'title',width:100,editor:'text'">标题</th>
			<th data-options="field:'moreLink',width:200,editor:'text'">链接</th>
			<th data-options="field:'detail',width:500,editor:'text'">描述</th>
		</tr>
	</thead>
</table>

<div id="tb" style="height:auto">
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="editRow()">编辑</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="deleteRows()">删除</a>
</div>

</body>
</html>