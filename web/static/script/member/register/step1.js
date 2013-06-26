$(function(){
	$("#username").bind("change", function(){
		checkUserName();
	}).bind("blur", function(){
		checkUserName();
	});

	$("#password").bind("change", function(){
		checkPassword();
	}).bind("blur", function(){
		checkPassword();
	});

	$("#pwd_retry").bind("change", function(){
		checkRePassword();
	}).bind("blur", function(){
		checkRePassword();
	});

	$("#email").bind("change", function(){
		checkEmail();
	}).bind("blur", function(){
		checkEmail();
	});

	$("#securityCodeInput").bind("change", function(){
		checkSecurityCode();
	}).bind("securityCodeInput", function(){
		checkSecurityCode();
	});
});

function changeSecurityCode() {
	$("#securityCode").attr("src", getUrl("/member/register/getSecurityCode/" + Date.parse(new Date())));
}

function submitRegister() {

	checkUserName();
	checkPassword();
	checkRePassword();
	checkEmail();
	checkSecurityCode();

	checkUserNameWhenSubmit();

}

function appendError(objId, msg) {
	$(".checkResult", $("#" + objId).parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/check-error.png") + "'/>" + msg);
	$("#" + objId).addClass("error");
}

function appendSuccess(objId) {
	$(".checkResult", $("#" + objId).parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/check-success.png") + "'/>");
	$("#" + objId).removeClass("error");
}



function checkUserName() {

	$(".checkResult", $("#username").parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/loading.gif") + "'/>");

	var pattern = /[A-Za-z\d_]/;
	var username = $("#username").val();

	if (isEmptyString(username)) {
		appendError("username", "");
	} else if (username.length < 4 || username.length > 20) {
		appendError("username", "");
	} else if (!pattern.test(username)) {
		appendError("username", "");
	} else {

		ajaxSubmit(getUrl("/member/register/checkUsername/" + username), {}, function(data){
			if (data == "notExist") {
				appendSuccess("username");
			} else {
				appendError("username", "用户名已存在");
			}
		});
	}
}

function checkUserNameWhenSubmit() {

	$(".checkResult", $("#username").parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/loading.gif") + "'/>");

	var pattern = /[A-Za-z\d_]/;
	var username = $("#username").val();

	if (isEmptyString(username)) {
		appendError("username", "");
		return;
	} else if (username.length < 4 || username.length > 20) {
		appendError("username", "");
		return;
	} else if (!pattern.test(username)) {
		appendError("username", "");
		return;
	} else {

		ajaxSubmit(getUrl("/member/register/checkUsername/" + username), {}, function(data){
			if (data == "notExist") {
				appendSuccess("username");
				if (checkPassword() && checkRePassword() && checkEmail()) {
					checkSecurityCodeWhenSubmit();
				}
			} else {
				appendError("username", "用户名已存在");
				return;
			}
		});
	}
}

function checkPassword() {

	var password = $("#password").val();

	if (isEmptyString(password)) {
		appendError("password", "");
		return false;
	} else if (password.length < 6 || password.length > 15) {
		appendError("password", "");
		return false;
	} else {
		appendSuccess("password");
		return true;
	}
}

function checkRePassword() {
	var password = $("#password").val();
	var repassword = $("#pwd_retry").val();

	if (password != repassword || repassword == "") {
		appendError("pwd_retry", "");
		return false;
	} else {
		appendSuccess("pwd_retry");
		return true;
	}
}

function checkEmail() {
	var pattern = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var email = $("#email").val();
	if (!pattern.test(email)) {
		appendError("email", "");
		return false;
	} else {
		appendSuccess("email");
		return true;
	}

}

function checkSecurityCode() {

	if (isEmptyString($("#securityCodeInput").val())) {
		appendError("securityCodeInput", "");
	} else {
		$(".checkResult", $("#securityCodeInput").parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/loading.gif") + "'/>");

		ajaxSubmit(getUrl("/member/register/checkSecurityCode/" + $("#securityCodeInput").val()), {}, function(data) {
			if (!data.result) {
				appendError("securityCodeInput", data.message);
				return false;
			} else {
				appendSuccess("securityCodeInput");
				return true;
			}
		});
	}


}

function checkSecurityCodeWhenSubmit() {

	if (isEmptyString($("#securityCodeInput").val())) {
		appendError("securityCodeInput", "");
	} else {
		$(".checkResult", $("#securityCodeInput").parent()).html("<img width='20px' height='20px' id='checkResult' src='" + getUrl("/static/images/loading.gif") + "'/>");

		ajaxSubmit(getUrl("/member/register/checkSecurityCode/" + $("#securityCodeInput").val()), {}, function(data) {
			if (!data.result) {
				appendError("securityCodeInput", data.message);
			} else {
				appendSuccess("securityCodeInput");

				registerForm.submit();
			}
		});
	}


}