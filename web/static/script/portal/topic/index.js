$(function(){

	$('#tt').tree({
		onClick: function(node){
			ajaxSubmit(getUrl("/portal/topic/read/" + node.id), {}, function(data) {
				$("#id").val(data.id);
				$("#name").val(data.name);
				$("#code").val(data.code);
				$("#detail").val(data.detail);
				$("#parentTopic").combotree("setValue", data.parentTopicId);

				$("#parentTopic").combotree("reload");
			});
		},

		onDrop: function (target,source,point) {
			ajaxSubmit(getUrl("/portal/topic/move/" + source.id + "/" + $(target).attr("node-id") + "/" + point), {}, function(data) {
				if (!data.result) {
					$("#tt").tree("reload");
					$.messager.alert(data.message);
				} else {
					$("#parentTopic").combotree("reload");
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

function saveTopic() {
	ajaxSubmit(getUrl("/portal/topic/save"), {
		"id" : $("#id").val(),
		"name" : $("#name").val(),
		"code" : $("#code").val(),
		"detail" : $("#detail").val(),
		"parentTopicId" : $("#parentTopic").combotree("getValue")
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
	$("#parentTopic").combotree("reload");
}

function removeItem(){
	var node = $('#tt').tree('getSelected');

	if ($('#tt').tree('getChildren', node.target).length > 0) {
		$.messager.confirm('删除确认', '确认删除当前栏目以及所有子栏目?', function(r){
			if (r){
				deleteTopic(node);
			}
		});
	} else {
		deleteTopic(node);
	}
}

function deleteTopic(node) {
	ajaxSubmit(getUrl("/portal/topic/delete/" + node.id), {}, function(data) {
		if (data.result) {
			$('#tt').tree('remove', node.target);
			$("#parentTopic").combotree("reload");
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