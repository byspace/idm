$(function(){

    $('#tt').tree({
        onClick: function(node){
            ajaxSubmit(getUrl("/console/menu/readMenuItem/" + node.id), {}, function(data) {
				$("#id").val(data.id);
				$("#name").val(data.name);
				$("#link").val(data.link);
				$("#icon").val(data.icon);
				$("#parentMenuItem").combotree("setValue", data.parentMenuItemId);

				$("#parentMenuItem").combotree("reload");
            });
        },

		onDrop: function (target,source,point) {
			ajaxSubmit(getUrl("/console/menu/move/" + source.id + "/" + $(target).attr("node-id") + "/" + point), {}, function(data) {
				if (!data.result) {
					$("#tt").tree("reload");
					$.messager.alert(data.message);
				} else {
					$("#parentMenuItem").combotree("reload");
				}
			});
		},

		onContextMenu: function(e,node){
			e.preventDefault();
			$(this).tree('select',node.target);
			$('#mm').menu('show',{
				left: e.pageX,
				top: e.pageY
			});
		}
	});

});

function saveMenuItem() {
	ajaxSubmit(getUrl("/console/menu/saveMenuItem"), {
		"id" : $("#id").val(),
		"name" : $("#name").val(),
		"link" : $("#link").val(),
		"icon" : $("#icon").val(),
		"parentMenuItemId" : $("#parentMenuItem").combotree("getValue")
	}, function(data) {
		$.messager.alert('操作结果', data.message, 'info');

		if (data.result) {
			$("#tt").tree("reload");
			resetForm();
		}
	});
}

function resetForm() {
	$("#ff").form('clear');
	$("#id").val(0);
	$("#parentMenuItem").combotree("reload");
}

function removeItem(){
	var node = $('#tt').tree('getSelected');

	if ($('#tt').tree('getChildren', node.target).length > 0) {
		$.messager.confirm('删除确认', '确认删除当前菜单以及所有子菜单?', function(r){
			if (r){
				deleteMenuItem(node);
			}
		});
	} else {
		deleteMenuItem(node);
	}
}

function deleteMenuItem(node) {
	ajaxSubmit(getUrl("/console/menu/delete/" + node.id), {}, function(data) {
		if (data.result) {
			$('#tt').tree('remove', node.target);
		}
		$.messager.alert('操作结果', data.message, 'info');
	});
}

function collapse(){
	var node = $('#tt').tree('getSelected');
	$('#tt').tree('collapse',node.target);
}
function expand(){
	var node = $('#tt').tree('getSelected');
	$('#tt').tree('expand',node.target);
}