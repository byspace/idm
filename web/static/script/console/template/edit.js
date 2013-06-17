var editIndex = undefined;
var viewItemTypes = [{
	label: 'title-list',
	detail: '标题列表'
},{
	label: 'picture-slide',
	detail: '图片滚动'
},{
	label: 'picture-list',
	detail: '图片列表'
}];

function onClickRow(index){
	if (editIndex != index){
		if (endEditing()){
			$('#viewItemDg').datagrid('selectRow', index).datagrid('beginEdit', index);
			editIndex = index;
		} else {
			$('#viewItemDg').datagrid('selectRow', editIndex);
		}
	}
}

function addViewItem(){
	if (endEditing()){
		$('#viewItemDg').datagrid('appendRow',{status:'P'});
		editIndex = $('#viewItemDg').datagrid('getRows').length-1;
		$('#viewItemDg').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
	}
}

function endEditing(){
	if (editIndex == undefined){return true}
	if ($('#viewItemDg').datagrid('validateRow', editIndex)){
		var ed = $('#viewItemDg').datagrid('getEditor', {index:editIndex,field:'type'});
		var type = $(ed.target).combobox('getText');
		$('#viewItemDg').datagrid('getRows')[editIndex]['typeName'] = type;
		$('#viewItemDg').datagrid('endEdit', editIndex);
		editIndex = undefined;
		return true;
	} else {
		return false;
	}
}

function accept(){
	if (endEditing()){
		$('#viewItemDg').datagrid('acceptChanges');
	}
}
function reject(){
	$('#viewItemDg').datagrid('rejectChanges');
	editIndex = undefined;
}

function deleteViewItem(){
	if (editIndex == undefined){return}
	$('#viewItemDg').datagrid('cancelEdit', editIndex).datagrid('deleteRow', editIndex);
	editIndex = undefined;
}

function saveForm() {
	endEditing();

	ajaxSubmit(getUrl("/console/template/save"), {
		"id" : $("#id").val(),
		"name" : $("#name").val(),
		"code" : $("#code").val(),
		"type" : $("#type").combobox("getValue"),
		"detail" : $("#detail").val(),
		"viewItems" : JSON.stringify($("#viewItemDg").datagrid("getRows"))
	}, function(data) {
		if (data.result) {
			//window.location.reload();
		}

		$.messager.alert("操作结果", data.message, "info");
	});
}
