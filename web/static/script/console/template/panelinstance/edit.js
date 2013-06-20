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

$(function(){
	$("#templateId").combobox({
		onChange: function(newValue) {
			changeTemplate(newValue);
		}
	})
});

function onClickRow(index){
	if (editIndex != index){
		if (endEditing()){
			$('#viewItemFilterDg').datagrid('selectRow', index).datagrid('beginEdit', index);
			editIndex = index;
		} else {
			$('#viewItemFilterDg').datagrid('selectRow', editIndex);
		}
	}
}

function addViewItem(){
	if (endEditing()){
		$('#viewItemFilterDg').datagrid('appendRow',{status:'P'});
		editIndex = $('#viewItemFilterDg').datagrid('getRows').length-1;
		$('#viewItemFilterDg').datagrid('selectRow', editIndex).datagrid('beginEdit', editIndex);
	}
}

function endEditing(){
	if (editIndex == undefined){return true}
	if ($('#viewItemFilterDg').datagrid('validateRow', editIndex)){
		var ed = $('#viewItemFilterDg').datagrid('getEditor', {index:editIndex,field:'topic'});
		var type = $(ed.target).combotree('getText');
		$('#viewItemFilterDg').datagrid('getRows')[editIndex]['topicName'] = type;
		$('#viewItemFilterDg').datagrid('endEdit', editIndex);
		editIndex = undefined;
		return true;
	} else {
		return false;
	}
}

function accept(){
	if (endEditing()){
		$('#viewItemFilterDg').datagrid('acceptChanges');
	}
}
function reject(){
	$('#viewItemFilterDg').datagrid('rejectChanges');
	editIndex = undefined;
}

function deleteViewItem(){
	if (editIndex == undefined){return}
	$('#viewItemFilterDg').datagrid('cancelEdit', editIndex).datagrid('deleteRow', editIndex);
	editIndex = undefined;
}

function saveForm() {
	endEditing();

	ajaxSubmit(getUrl("/console/template/panelInstance/save"), {
		"id" : $("#id").val(),
		"code" : $("#code").val(),
		"title" : $("#title").val(),
		"templateId" : $("#templateId").combobox("getValue"),
		"moreLink" : $("#moreLink").val(),
		"detail" : $("#detail").val(),
		"viewItems" : JSON.stringify($("#viewItemFilterDg").datagrid("getRows"))
	}, function(data) {
		if (data.result) {
			window.location.reload();
		}

		$.messager.alert("操作结果", data.message, "info");
	});
}

function changeTemplate(newValue) {
	$('#viewItemFilterDg').datagrid('loadData',{total:0,rows:[]});

	if (newValue != 0) {
		ajaxSubmit(getUrl("/console/template/readTemplate/" + newValue), {}, function(data){

			$("#templateImage").attr("src", getUrl("/static/images/template/" + data.code + ".png"));
			console.log(getUrl("/static/images/template/" + data.code + ".png"));

			var viewItemList = data.viewItemList;
			for (var i = 0; i < viewItemList.length; i++) {
				var viewItem = viewItemList[i];

				var data = {
					"tag": "vi" + viewItem.id,
					"type" : viewItem.type,
					"size" : viewItem.size,
					"viewItemId" : viewItem.id,
					"detail" : viewItem.detail
				};

				$("#viewItemFilterDg").datagrid("appendRow", data);
			}

			$("#viewItemFilterDg").datagrid("resize");
		});
	}

}