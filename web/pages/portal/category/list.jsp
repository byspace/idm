<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>


<script type="text/javascript" src="<spring:url value="/static/script/portal/category/list.js" />"></script>

<body>

<div style="margin:10px 0;"></div>

<table id="dg" class="easyui-datagrid" title="文章分类管理" style="width:700px;height:auto"
	   data-options="
                iconCls: 'icon-edit',  
                toolbar: '#tb',
                pagination:true,
                url: '<spring:url value="/dataGrid/getData/Category" />',
                onClickRow: onClickRow,
			    loadMsg: '载入中...'
            ">
	<thead>
	<tr>
		<th data-options="field:'id',width:50">ID</th>
		<th data-options="field:'name',width:250,editor:'text'">名称</th>
		<th data-options="field:'detail',width:350,editor:'text'">描述</th>
	</tr>
	</thead>
</table>

<div id="tb" style="height:auto">
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="append()">添加</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true" onclick="editRow()">编辑</a>
	<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true" onclick="deleteRows()">删除</a>
</div>


<div id="editDialog" class="easyui-dialog" title="编辑文章分类" style="width:400px;height:250px;padding:10px"
	 data-options="
	 			closed: true,
                iconCls: 'icon-save',
                buttons: [{
                    text:'保存',
                    iconCls:'icon-ok',
                    handler:function(){
                    	saveCategory();
                    }
                },{
                    text:'取消',
                    iconCls:'icon-cancel',
                    handler:function(){
                        $('#editDialog').dialog('close');
                    }
                }]
            ">
	<table width="100%">
		<tr>
			<td width="30%">名称:</td>
			<td>
				<input type="hidden" id="id" name="id" />
				<input class="easyui-validatebox" type="text" name="name" id="name" data-options="" style="width: 200px;"/>
			</td>
		</tr>
		<tr>
			<td>描述:</td>
			<td><textarea id="detail" name="detail" style="width: 200px; height: 100px;"></textarea></td>
		</tr>
	</table>
</div>

</body>
</html>  