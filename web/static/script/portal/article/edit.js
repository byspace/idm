
$(function(){
	CKEDITOR.replace( 'content', {
		toolbar: 'Basic',
		customConfig: getUrl('/static/script/ckeditor/config.js')
	} );
});

function saveForm() {
	ajaxSubmitForm($("#ff"), alertSaveResult, {content : CKEDITOR.instances.content.getData()});
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