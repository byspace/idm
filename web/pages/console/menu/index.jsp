<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/console/menu/index.js" />"></script>

<body class="easyui-layout">

	<div data-options="region:'west',split:true" title="菜单" style="width:400px;">
		<ul class="easyui-tree menutree" data-options="url:'<spring:url value="/console/menu/getMenuItemDataByParentId/0" />',animate:true,dnd:true"></ul>
	</div>

	<div data-options="region:'center'" title="菜单编辑">
        <form id="ff" method="post">
            <table style="margin: 30px">
                <tr>
                    <td width="200px">菜单名称:</td>
                    <td><input class="easyui-validatebox" type="text" name="name" data-options="required:true" /></td>
                </tr>
                <tr>
                    <td>连接地址:</td>
                    <td><input class="easyui-validatebox" type="text" name="link" data-options="required:true,validType:'email'"/></td>
                </tr>
                <tr>
                    <td>图标:</td>
                    <td><input class="" type="text" name="icon" data-options="required:true"/></td>
                </tr>
                <tr>
                    <td>上级菜单:</td>
                    <td>
                        <input class="easyui-combotree" value="根目录" data-options="url:'<spring:url value="/console/menu/getMenuItemDataByParentId/0" />',required:true" style="width:200px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">保存</a>
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'">重置</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>

</body>
</html>