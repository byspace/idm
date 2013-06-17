function append() {
	parent.addTab("添加模板", getUrl("/console/template/create"), "");
}

function editRow() {
	var rows = $("#dg").datagrid("getSelections");

	if (rows.length == 0) {
		$.messager.alert("操作错误", "请在列表中选中要编辑的模板", "error");
		return;
	} else if (rows.length > 1) {
		$.messager.alert("操作错误", "同一时间只能编辑一条模板", "error");
		return;
	}

	var row = rows[0];

	parent.addTab("编辑模板", getUrl("/console/template/edit/" + row.id), 'icon-edit')
}


function deleteRows() {
	var rows = $("#dg").datagrid("getSelections");

	if (rows.length == 0) {
		$.messager.alert("操作错误", "请在列表中选中要删除的模板", "error");
		return;
	}

	var deleteIds = "";
	for (var i = 0; i < rows.length; i++) {
		var row = rows[i];
		deleteIds += row.id + ",";
	}

	ajaxSubmit(getUrl("/console/template/delete"), {
		deleteIds : deleteIds
	}, function(data) {
		if (data.result) {
			$("#dg").datagrid("reload");
		}
		$.messager.alert("操作成功", data.message, "info");
	});
}