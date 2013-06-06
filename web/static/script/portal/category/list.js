
function onClickRow(index){

}
function append(){
	$('#editDialog').dialog('open');
	$("#id").val(0);
	$("#name").val("");
	$("#detail").val("");
}
function removeit(){

}


function saveCategory() {
	ajaxSubmit(getUrl("/portal/category/save"), {
		"id" : $("#id").val(),
		"name" : $("#name").val(),
		"detail" : $("#detail").val()
	}, function (data) {
		$.messager.alert('操作结果', data.message, 'info');
		if (data.result) {
			$("#editDialog").dialog("close");
			$("#dg").datagrid("reload");
		}
	});
}

function editRow() {
	var rows = $("#dg").datagrid("getSelections");

	if (rows.length == 0) {
		$.messager.alert("操作错误", "请在列表中选中要编辑的文章分类", "error");
		return;
	} else if (rows.length > 1) {
		$.messager.alert("操作错误", "同一时间只能编辑一条信息", "error");
		return;
	}

	var row = rows[0];
	ajaxSubmit(getUrl("/portal/category/read/" + row.id), {}, function(data) {
		$("#editDialog").dialog("open");
		$("#id").val(data.id);
		$("#name").val(data.name);
		$("#detail").val(data.detail);
	});
}

function deleteRows() {
	var rows = $("#dg").datagrid("getSelections");

	if (rows.length == 0) {
		$.messager.alert("操作错误", "请在列表中选中要删除的文章分类", "error");
		return;
	}

	var deleteIds = "";
	for (var i = 0; i < rows.length; i++) {
		var row = rows[i];
		deleteIds += row.id + ",";
	}

	ajaxSubmit(getUrl("/portal/category/delete"), {
		deleteIds : deleteIds
	}, function(data) {
		if (data.result) {
			$("#dg").datagrid("reload");
		}
		$.messager.alert("操作成功", data.message, "info");
	});
}