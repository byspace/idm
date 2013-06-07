$(function(){
	$("img", $(".content")).attr("onload", 'resetImageSize(this)');
});

function resetImageSize(imgObj) {

	var maxWidth = 770;

	var width = $(imgObj).width();
	var height = $(imgObj).height();

	if (width > maxWidth) {
		height = (maxWidth / width) * height;

		$(imgObj).width(maxWidth);
		$(imgObj).height(height);
	}
}