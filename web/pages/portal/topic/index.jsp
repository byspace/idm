<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/portal/topic/index.js" />"></script>

<body class="easyui-layout">

	<div data-options="region:'west',split:true" title="菜单" style="width:400px;">
		<ul class="easyui-tree" id="tt" data-options="url:'<spring:url value="/portal/topic/getTopicTreeDataByParentId/0" />',animate:true,dnd:true"></ul>
	</div>

	<div data-options="region:'center'" title="栏目编辑">
        <form id="ff" method="post">
            <table style="margin: 30px">
                <tr>
                    <td width="200px">栏目名称:</td>
                    <td>
						<input type="hidden" name="id" id="id" value="0"/>
						<input class="easyui-validatebox" type="text" name="name" id="name" data-options="" style="width: 200px;"/>
					</td>
                </tr>
                <tr>
                    <td>上级栏目:</td>
                    <td>
                        <input class="easyui-combotree" name="parentTopic" id="parentTopic" data-options="url:'<spring:url value="/portal/topic/getTopicTreeDataWithRoot" />'" style="width:200px;">
                    </td>
                </tr>
				<tr>
					<td>描述:</td>
					<td>
						<textarea name="detail" id="detail" style="height:150px; width: 400px"></textarea>
					</td>
				</tr>
                <tr>
                    <td colspan="2" style="text-align: center; padding-top: 20px">
                        <a href="#" class="easyui-linkbutton" data-options="iconCls:'icon-save'" onclick="saveTopic()">保存</a>
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