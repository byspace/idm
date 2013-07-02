<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<script type="text/javascript">
	$(function(){
		ajaxSubmit(getUrl("/member/login/getCurrentMember"), {}, function(data){

			$(".top_nav").show();

			$(".bottom_header_top").css("top", "40px");
		});
	});
</script>

<style>
	.top_nav {
		width: 100%;
		height: 30px;
		line-height: 30px;
		margin: 0 auto;
		background: #f8f8f8;
		border-bottom: 1px solid #ccc;
		display: none;
	}

	.top_navbg {
		width: 953px;
		margin: 0 auto;
		line-height: 30px;
	}

	.top_navbg ul {
		margin: 0px;
		padding: 0px;
		list-style: none;
	}

	.top_navbg ul li {
		padding-left: 10px;
		float: left;
		list-style: none;
		margin: 0px;
	}

	.top_navbg ul li a {
		text-decoration: none;
	}
</style>


<div class="top_nav">
	<div class="top_navbg">
		<ul>
			<li><a href="<spring:url value="/portal/usercenter/index"/>" style="color: #0ba6b8">[进入会员中心]</a></li>
			<li><a href="<spring:url value="/portal/index"/>" target="_blank">国际设计传媒网首页</a></li>
			<li><a href="#" target="_blank">加入收藏</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0001"/>" >资讯中心</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0002"/>" >建筑设计</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0003"/>" >景观设计</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0004"/>" >室内设计</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0005"/>" >效果图模型</a></li>
			<li><a href="<spring:url value="/portal/topic/topicIndex/TP0006"/>" >开发商</a></li>

		</ul>
	</div>
</div>