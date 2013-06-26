var s=["s1","s2","s3"];
var opt0 = ["国家","省份、州","地级市、县"];

$(function(){


	setup();
});


function submitForm() {

	var checkNameResult = checkName();
	var checkMobileResult = checkMobile();


	if (checkNameResult && checkMobileResult) {
		registerForm.submit();
	}
}

function appendError(objId, msg) {
	$(".checkResult", $("#" + objId).parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/check-error.png") + "'/>" + msg);
	$("#" + objId).addClass("error");
}

function appendSuccess(objId) {
	$(".checkResult", $("#" + objId).parent()).html("");
	$("#" + objId).removeClass("error");
}

function checkName() {
	var name = $("#name").val();
	if (isEmptyString(name)) {
		appendError("name", "请输入姓名");
		return false;
	} else {
		appendSuccess("name");
		return true;
	}
}

function checkMobile() {
	var mobile = $("#mobile").val();
	var pattern = /^\+?[1-9][0-9]*$/;
	if (isEmptyString(mobile)) {
		appendError("mobile", "请输入手机号码");
		return false;
	} else if (!pattern.test(mobile)) {
		appendError("mobile", "请输入正确的手机号码");
		return false;
	} else {
		appendSuccess("mobile");
		return true;
	}
}

function setup()
{
	for(i=0;i <s.length-1;i++)
		document.getElementById(s[i]).onchange=new Function("change("+(i+1)+")");
	change(0);
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
