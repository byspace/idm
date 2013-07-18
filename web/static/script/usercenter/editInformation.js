var s=["s1","s2","s3"];
var opt0 = ["国家","省份、州","地级市、县"];

$(function(){
	//setup();

	setPersonalWorkType();
	setPersonalDesignType();

	$("#file_upload").uploadify({
		'fileTypeDesc' : 'Image Files',
		swf           : getUrl('/static/script/uploadify/uploadify.swf'),
		uploader      : getUrl('/ueditor/imageUp'),
		buttonText    : "上传头像",
		fileSizeLimit : '2MB',
		'fileTypeExts' : '*.gif; *.jpg; *.png; *.ico',
		'width' : 80,
		'height' : 20,
		'uploadLimit' : 1,
		'onUploadSuccess' : function(file, data, response) {

			if (response) {

				data = data.replace(/'/g, "\"");
				var json = $.parseJSON(data);
				var realPath = getUrl("/static/" + json.url);

				$("#portrait").val(realPath);
				$("#portraitImage").attr("src", realPath).show();

				$('#file_upload').uploadify('cancel', '*');
			}
		}
	});
});

function setPersonalWorkType() {

	var str = $("#personalWorkType").val();
	var array = str.split(",");
	for (var i = 0; i < array.length; i++) {
		var id = array[i];

		$("input.workTypeBox").each(function(){
			if ($(this).val() == id) {
				$(this).attr("checked", "checked");
			}
		});
	}
}

function setPersonalDesignType() {

	var str = $("#personalDesignType").val();
	var array = str.split(",");
	for (var i = 0; i < array.length; i++) {
		var id = array[i];

		$("input.designTypeBox").each(function(){
			if ($(this).val() == id) {
				$(this).attr("checked", "checked");
			}
		});
	}
}

function setup() {
	for(i=0;i <s.length-1;i++)
		document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
	change(0);
}

function submitForm() {
	editInformationForm.submit();
}

function setWorkType() {
	var workTypes = "";
	$(".workTypeBox").each(function(){
		if ($(this).prop('checked') == true) {
			workTypes += $(this).val() + ",";
		}
	});

	$("#personalWorkType").val(workTypes);
}

function setDesignType() {
	var designTypes = "";
	$(".designTypeBox").each(function(){
		if ($(this).prop('checked') == true) {
			designTypes += $(this).val() + ",";
		}
	});

	$("#personalDesignType").val(designTypes);
}