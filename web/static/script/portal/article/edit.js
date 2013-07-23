var editor;
$(function(){
	editor = UE.getEditor('content');


	$("#file_upload").uploadify({
		'fileTypeDesc' : 'Image Files',
		swf           : getUrl('/static/script/uploadify/uploadify.swf'),
		uploader      : getUrl('/ueditor/imageUp'),
		buttonText    : "上传标题图片",
		fileSizeLimit : '10MB',
		'fileTypeExts' : '*.gif; *.jpg; *.png; *.ico',
		'width' : 100,
		'height' : 20,
		'uploadLimit' : 1,
		'onUploadSuccess' : function(file, data, response) {

			if (response) {

				data = data.replace(/'/g, "\"");
				var json = $.parseJSON(data);

				var path = "/static/" + json.url;

				var realPath = getUrl("/static/" + json.url);

				$("#titleImage").val(path);
				$("#titleImageImage").attr("src", realPath).show();

				$('#file_upload').uploadify('cancel', '*');
			}
		}
	});
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

		var src = $(this).attr('src') + "|%%|,|%%|";
		if (src.indexOf('/static/') != -1) {
			src = src.substr(src.indexOf('/static/'));
		}

		images += src;
	});

	return images;
}
