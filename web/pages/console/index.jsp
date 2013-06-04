<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp" %>

<script type="text/javascript" src="<spring:url value="/static/script/console/index.js" />"></script>

<body class="easyui-layout">
	<div data-options="region:'north'" style="height:100px"></div>
	<div data-options="region:'south',split:true" style="height:50px;"></div>
	<div data-options="region:'east',split:true" title="East" style="width:180px;">

	</div>
	<div data-options="region:'west',split:true" title="菜单" style="width:200px;">
		<div class="easyui-accordion" data-options="fit:true,border:false">

			<c:forEach items="${firstLevelMenuItemList}" var="menuItem">
				<div title="${menuItem.name}" style="padding:10px;">
					<ul class="easyui-tree menutree" data-options="url:'<spring:url value="/console/menu/getMenuItemDataByParentId/${menuItem.id}" />',animate:true"></ul>
				</div>
			</c:forEach>

		</div>
	</div>
	<div data-options="region:'center',title:'操作面板',iconCls:'icon-ok'">
		<div class="easyui-tabs" id="mainPanel" data-options="fit:true,border:false,plain:true">
			<div title="About" style="padding:10px">

			</div>
		</div>
	</div>
</body>
</html>