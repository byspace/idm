var s=["s1","s2","s3"];
var opt0 = ["国家","省份、州","地级市、县"];

$(function(){

	setup();
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
