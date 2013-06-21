function changeSecurityCode() {
	$("#securityCode").attr("src", getUrl("/member/register/getSecurityCode/" + Date.parse(new Date())));
}

function submit() {
	registerForm.submit();
}