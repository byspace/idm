function getUrl(url) {
	var root = $("#rootUrl").val();

	if (root.indexOf(";jsessionid=") >= 0) {
		root = root.substr(0, root.indexOf(";jsessionid="));
	}

	if (url.indexOf("/") == 0) {
		url = url.substr(1);
	}
	
	return encodeURI(root + url);
}

function isEmptyString(str) {
	if (str == null || str == undefined || str == "" || $.trim(str) == "") {
		return true;
	}
	return false;
}

function removeStringLastChar(str) {
	str = str.substring(0, str.length - 1);
	
	return str;
}

function formatRootUrl() {
	var root = $("#rootUrl").val();
	root += ";jsessionid=12345";
	if (root.indexOf("jsessionid") > 0) {
		root = root.substr(0, root.indexOf(";jsessionid"));
	}
	
	$("#rootUrl").val(root);
}

function ajaxSubmitForm(formObj, callback, customData) {
	var url = formObj.attr("action");
	var data = new Object();
	$("*[name]", formObj).each(function(){
		var name = $(this).attr("name");
		var value = $(this).val();
		
		data[name] = value;
	});

	$.extend(data, customData);

	$.ajax({
		url: url,
		dataType: "json",
		data: data,
		timeout: 10000,
		type: "post",
		error: function() {
		},
		success: function(data) {
			callback(data);
		}
	});
}

function ajaxSubmit(url, data, successCallBack) {
	$.ajax({
		url: url,
		dataType: "json",
		data: data,
		timeout: 10000,
		type: "post",
		error: function() {
		},
		success: function(data) {
			successCallBack(data);
		}
	});
}

function getWidthByString(str, fontSize) {

	var size = parseFloat(fontSize);
	var width = 0;
	var seed = size / 2;
	for (var i = 0; i < str.length; i++) {

		var charCode = str.charCodeAt(i);

		if (charCode >=0 && charCode <= 255) {
			width += seed;
		} else {
			width += seed * 2;
		}

	}

	return width;
}

Date.prototype.format = function(fmt)
{ //author: meizz
	var o = {
		"M+" : this.getMonth()+1,                 //月份
		"d+" : this.getDate(),                    //日
		"h+" : this.getHours(),                   //小时
		"m+" : this.getMinutes(),                 //分
		"s+" : this.getSeconds(),                 //秒
		"q+" : Math.floor((this.getMonth()+3)/3), //季度
		"S"  : this.getMilliseconds()             //毫秒
	};
	if(/(y+)/.test(fmt))
		fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
	for(var k in o)
		if(new RegExp("("+ k +")").test(fmt))
			fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
	return fmt;
}

function formatDate(time, format) {
	if (isEmptyString(format)) {
		format = "yyyy-MM-dd hh:mm:ss";
	}
	var date = new Date();
	date.setTime(time);

	return date.format(format);
}

jQuery.cookie = function(name, value, options) {
	if (typeof value != 'undefined') { // name and value given, set cookie
		options = options || {};
		if (value === null) {
			value = '';
			options.expires = -1;
		}
		var expires = '';
		if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
			var date;
			if (typeof options.expires == 'number') {
				date = new Date();
				date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
			} else {
				date = options.expires;
			}
			expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
		}
		var path = options.path ? '; path=' + options.path : '';
		var domain = options.domain ? '; domain=' + options.domain : '';
		var secure = options.secure ? '; secure' : '';
		document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
	} else { // only name given, get cookie
		var cookieValue = null;
		if (document.cookie && document.cookie != '') {
			var cookies = document.cookie.split(';');
			for (var i = 0; i < cookies.length; i++) {
				var cookie = jQuery.trim(cookies[i]);
				// Does this cookie string begin with the name we want?
				if (cookie.substring(0, name.length + 1) == (name + '=')) {
					cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
					break;
				}
			}
		}
		return cookieValue;
	}
};

function i18n(key) {
	return jQuery.i18n.prop(key);
}

function getToday() {
	var date = new Date;
	var str = date.getFullYear() + "-" + (date.getMonth() + 1) + "-" + (date.getDate() < 10 ? "0" : "") + date.getDate();

	return str;
}