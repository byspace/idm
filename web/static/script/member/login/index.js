function changeSecurityCode() {
	$("#securityCode").attr("src", getUrl("/member/register/getSecurityCode/" + Date.parse(new Date())));
}

function clickKeepLogin() {
	var keep = $("#keepLogin").prop("checked");

	$("#rememberUsername").prop("checked", keep);
}

function login() {
	loginForm.submit();
}