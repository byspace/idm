<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/console/menu/index.js" />"></script>

<body class="easyui-layout">

	<div data-options="region:'west',split:true" title="菜单" style="width:400px;">
		<ul class="easyui-tree" id="tt" data-options="url:'<spring:url value="/console/menu/getMenuItemDataByParentId/0" />',animate:true,dnd:true"></ul>
	</div>

	<div data-options="region:'center'" title="菜单编辑">
        <form id="ff" method="post">
            <table style="margin: 30px">
                <tr>
                    <td width="200px">菜单名称:</td>
                    <td>
						<input type="hidden" name="id" id="id" value="0"/>
						<input class="easyui-validatebox" type="text" name="name" id="name" data-options="" style="width: 200px;"/>
					</td>
                </tr>
                <tr>
                    <td>连接地址:</td>
                    <td><input class="easyui-validatebox" type="text" name="link" id="link" data-options="" style="width: 300px;"/></td>
                </tr>
                <tr>
                    <td>图标:</td>
                    <td><input class="" type="text" name="icon" id="icon" data-options="" style="width: 200px;"/></td>
                </tr>
                <tr>
                    <td>上级菜单:</td>
                    <td>
                        <input class="easyui-combotree" name="parentMenuItem" id="parentMenuItem" data-options="url:'<spring:url value="/console/menu/getMenuItemDataWithRoot" />'" style="width:200px;">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center; padding-top: 20px">
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="saveMenuItem()">保存</a>
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="resetForm();">新建</a>
                    </td>
                </tr>
            </table>
        </form>
    </div>

	<div id="mm" class="easyui-menu" style="width:120px;">
		<div onclick="removeItem()" data-options="iconCls:'icon-remove'">删除</div>
		<div class="menu-sep"></div>
		<div onclick="expand()">展开</div>
		<div onclick="collapse()">收起</div>
	</div>
</body>
</html>