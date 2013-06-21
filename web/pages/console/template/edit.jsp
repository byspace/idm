<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/console/template/edit.js" />"></script>

<body class="easyui-layout" style="overflow: scroll">
<form id="ff" method="post" action="<spring:url value="/console/template/save" />">
	<table style="margin: 30px">
		<tr>
			<td width="20%">模板名称:</td>
			<td>
				<input type="hidden" name="id" id="id" value="<c:if test="${panelTemplate == null}">0</c:if><c:if test="${panelTemplate != null}">${panelTemplate.id}</c:if>"/>
				<input class="easyui-validatebox" type="text" value="${panelTemplate.name}" name="name" id="name" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>模板文件:</td>
			<td>
				<input class="easyui-validatebox" type="text" value="${panelTemplate.code}" name="code" id="code" data-options="" style="width: 300px;"/>
			</td>
		</tr>
		<tr>
			<td>模板类型:</td>
			<td>
				<select class="easyui-combobox" name="type" id="type" style="width:200px;" value="${panelTemplate.type}">
					<option value="">请选择</option>
					<option <c:if test="${panelTemplate.type == 'titleList'}">selected</c:if> value="titleList">标题列表</option>
					<option <c:if test="${panelTemplate.type == 'pictureList'}">selected</c:if> value="pictureList">图片列表</option>
					<option <c:if test="${panelTemplate.type == 'pictureAndTitle'}">selected</c:if> value="pictureAndTitle">图片文字混排列表</option>
					<option <c:if test="${panelTemplate.type == 'tabs'}">selected</c:if> value="tabs">标签页</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>描述:</td>
			<td>
				<textarea id="detail" name="detail"  style="width: 500px; height: 100px;">${panelTemplate.detail}</textarea>
			</td>
		</tr>

		<tr>
			<td>显示项:</td>
			<td>
				<table id="viewItemDg" class="easyui-datagrid" style="width:700px;height:auto"
					   data-options="
					   		toolbar: '#tb',
							iconCls: 'icon-edit',
							singleSelect: true,
							onClickRow: onClickRow
						">
					<thead>
						<tr>
							<th data-options="field:'id',width:25">ID</th>
							<th data-options="field:'type',width:150,
								formatter:function(value,row){

								    for (var i = 0; i < viewItemTypes.length; i++) {
								    	if (row.type == viewItemTypes[i].label) {
								    		return viewItemTypes[i].detail;
								    	}
								    }

								},
								editor:{type:'combobox',options:{
									valueField: 'label',
									textField: 'detail',
									data: viewItemTypes
							}}">类别</th>
							<th data-options="field:'size',width:80,align:'right',editor:{type:'numberbox',options:{precision:0}}">数量</th>
							<th data-options="field:'detail',width:250,editor:'text'">描述</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${panelTemplate.viewItemList}" var="viewItem">
							<tr>
								<td>${viewItem.id}</td>
								<td>${viewItem.type}</td>
								<td>${viewItem.size}</td>
								<td>${viewItem.detail}</td>
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
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="addViewItem()">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="deleteViewItem()">删除</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-save',plain:true" onclick="accept()">提交</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-undo',plain:true" onclick="reject()">撤销</a>
</div>

</body>
</html>