var editor;
$(function(){
	editor = UE.getEditor('content');
});

function saveForm() {
	var images = getImages(editor.getContent());
	ajaxSubmitForm($("#ff"), alertSaveResult, {content : editor.getContent(), images : images});
}

function alertSaveResult(data) {
	if (data.result) {
		$.messager.alert("操作成功", data.message, "info", function() {
			parent.refreshCurrentTab();
		});
	} else {
		$.messager.alert("操作失败", data.message, "error");
	}
}

function getImages(content) {
	var contentObj = $(content);
	var images = "";

	$("img", contentObj).each(function(){
		images += $(this).attr('src') + "|%%|,|%%|";
	});

	return images;
}
