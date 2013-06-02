$(function() {
	var locale = $.cookie("org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE");

	if (locale == null) {
		locale = "zh_CN";
	}

	jQuery.i18n.properties({
		name:'message', //使用资源文件名称
		path: getUrl("/i18n/getMessageFile/"), //资源文件所在路径
		mode:'both',    //调用方式，可用值‘vars’ (default) 变量方式, ‘map’map方式 or ‘both’两者均支持
		language: locale, //语言
		callback: function() {
		}
	});
});