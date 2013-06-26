var s=["s1","s2","s3"];
var opt0 = ["国家","省份、州","地级市、县"];

$(function(){

	var options = {
		initialFrameWidth: 554,
		initialFrameHeight: 400

	};

	editor = UE.getEditor('detail', options);
	setup();

	$("#file_upload").uploadify({
		'fileTypeDesc' : 'Image Files',
		swf           : getUrl('/static/script/uploadify/uploadify.swf'),
		uploader      : getUrl('/member/register/uploadLogo'),
		buttonText    : "上传Logo",
		fileSizeLimit : '2MB',
		'fileTypeExts' : '*.gif; *.jpg; *.png; *.ico',
		'width' : 80,
		'height' : 20,
		'uploadLimit' : 1,
		'onUploadSuccess' : function(file, data, response) {

			if (response) {
				data = data.substring(1, data.length - 1);

				var realPath = getUrl("/static/upload/logo/" + data);

				$("#logo").val(realPath);
				$("#logoImage").attr("src", realPath).show();

				$('#file_upload').uploadify('cancel', '*')
			}
		}
	});

});

function submit() {
	registerForm.submit();
}

function setup()
{
	for(i=0;i <s.length-1;i++)
		document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
	change(0);
}
