<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/console/template/panelinstance/edit.js" />"></script>

<body class="easyui-layout" style="overflow: scroll">
<form id="ff" method="post" action="<spring:url value="/console/template/panelInstance/save" />">
	<table style="margin: 30px">
		<tr>
			<td width="20%">面板编码:</td>
			<td>
				<input type="hidden" name="id" id="id" value="<c:if test="${panelInstance == null}">0</c:if><c:if test="${panelInstance != null}">${panelInstance.id}</c:if>"/>
				<input class="easyui-validatebox" type="text" value="${panelInstance.code}" name="code" id="code" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>面板标题:</td>
			<td>
				<input class="easyui-validatebox" type="text" value="${panelInstance.title}" name="title" id="title" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>模板:</td>
			<td>
				<select class="easyui-combobox" name="templateId" id="templateId" style="width:200px;" value="${panelInstance.panelTemplate.name}">
					<option value="0">请选择</option>
					<c:forEach items="${panelTemplateList}" var="panelTemplate">
						<option <c:if test="${panelTemplate.id == panelInstance.panelTemplate.id}">selected</c:if> value="${panelTemplate.id}">${panelTemplate.name}</option>
					</c:forEach>

				</select>
			</td>
		</tr>

		<tr>
			<td>"更多"按钮链接:</td>
			<td>
				<input class="easyui-validatebox" type="text" value="${panelInstance.moreLink}" name="moreLink" id="moreLink" data-options="" style="width: 300px;"/>
			</td>
		</tr>

		<tr>
			<td>描述:</td>
			<td>
				<textarea id="detail" name="detail"  style="width: 300px; height: 200px;">${panelInstance.detail}</textarea>
			</td>
		</tr>

		<tr>
			<td>显示项设置:</td>
			<td>
				<table id="viewItemFilterDg" class="easyui-datagrid" style="width:800px;height:auto"
					   data-options="
					   		toolbar: '#tb',
							iconCls: 'icon-edit',
							singleSelect: true,
							onClickRow: onClickRow
						">
					<thead>
						<tr>
							<th data-options="field:'id',width:80">ID</th>
							<th data-options="field:'topic',width:150,editor:{type:'combotree',options:{
								url:'<spring:url value="/portal/topic/getTopicTreeDataByParentId/0" />'
							}},formatter:function(value,row){
								return row.topicName;
							},">栏目</th>
							<th data-options="field:'key',width:200,editor:'text'">关键字</th>
							<th data-options="field:'code',width:80">编码</th>
							<th data-options="field:'type',width:80">类型</th>
							<th data-options="field:'size',width:60,align:'right'">内容数量</th>
							<th data-options="field:'detail',width:100">描述</th>
							<th data-options="field:'topicName',width:0, hidden:true"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${panelInstance.viewItemFilterList}" var="viewItemFilter">
							<tr>
								<td>${viewItemFilter.id}</td>
								<td>${viewItemFilter.topic.id}</td>
								<td>${viewItemFilter.key}</td>
								<td>${viewItemFilter.viewItem.code}</td>
								<td>${viewItemFilter.viewItem.type}</td>
								<td>${viewItemFilter.viewItem.size}</td>
								<td>${viewItemFilter.viewItem.detail}</td>
								<td>${viewItemFilter.topic.name}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center; padding-top: 20px">
				<a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="saveForm()">保存</a>
			</td>
		</tr>
	</table>
</form>

<div id="tb" style="height:auto">
	<%--<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addViewItem()">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="deleteViewItem()">删除</a>--%>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="accept()">提交</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" onclick="reject()">撤销</a>
</div>

</body>
</html>