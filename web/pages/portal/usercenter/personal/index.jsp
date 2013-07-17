<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<input type="hidden" id="nav_current_page" value="home" />

<div class="container">
	<div class="left">
		<h4 class="title" style="background: url('<spring:url value="/static/img/member/navbg.png"/>') repeat-x;">${member.name}的个人作品展示</h4>
		<div class="listimg">
			<span class="works"><img src="images/worka.png"></span>
			<p class="text_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="text"><a href="#" target="_blank">德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten设计完成，工程连接了汽车站与火车站两个交通体系，P+R停车库穿越了一个中心步行桥。这也是与Poppenbüttel（Poppenbuettel）区交界的交通扩建重组设施的第一部分</a><span class="bowen_xq"><a href="#" target="_blank">[详情]</a></span></p>
		</div>

		<div class="listimg">
			<span class="works"><img src="images/worka.png"></span>
			<p class="text_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="text"><a href="#" target="_blank">德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten设计完成，工程连接了汽车站与火车站两个交通体系，P+R停车库穿越了一个中心步行桥。这也是与Poppenbüttel（Poppenbuettel）区交界的交通扩建重组设施的第一部分</a><span class="bowen_xq"><a href="#" target="_blank">[详情]</a></span></p>
		</div>

		<div class="listimg">
			<span class="works"><img src="images/worka.png"></span>
			<p class="text_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="text"><a href="#" target="_blank">德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten设计完成，工程连接了汽车站与火车站两个交通体系，P+R停车库穿越了一个中心步行桥。这也是与Poppenbüttel（Poppenbuettel）区交界的交通扩建重组设施的第一部分</a><span class="bowen_xq"><a href="#" target="_blank">[详情]</a></span></p>
		</div>

		<div class="listimg">
			<span class="works"><img src="images/worka.png"></span>
			<p class="text_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="text"><a href="#" target="_blank">德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten设计完成，工程连接了汽车站与火车站两个交通体系，P+R停车库穿越了一个中心步行桥。这也是与Poppenbüttel（Poppenbuettel）区交界的交通扩建重组设施的第一部分</a><span class="bowen_xq"><a href="#" target="_blank">[详情]</a></span></p>
		</div>
		<div class="listimg_one">
			<span class="works"><img src="images/worka.png"></span>
			<p class="text_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="text"><a href="#" target="_blank">德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten设计完成，工程连接了汽车站与火车站两个交通体系，P+R停车库穿越了一个中心步行桥。这也是与Poppenbüttel（Poppenbuettel）区交界的交通扩建重组设施的第一部分</a><span class="bowen_xq"><a href="#" target="_blank">[详情]</a></span></p>
		</div>
	</div>
	<div class="right">
		<div class="grjj">
			<h4 class="resume_title" style="background: url('<spring:url value="/static/img/member/navbg.png"/>') repeat-x;">${member.name}个人简历</h4>

			<div class="photo"><img src="images/photo.png"></div>
			<div class="resume_list">
				<ul>
					<li class="name">${member.name}</li>
					<%--<li><span>会员认证：</span>普通会员</li>--%>
					<li><span>地区：</span>${member.personalInformation.province}${member.personalInformation.city}</li>
					<li><span>电话：</span>${member.personalInformation.phone}</li>
					<li><span>手机：</span>${member.personalInformation.mobile}</li>
					<li><span>在线咨询：</span><img src="images/qqbg.png"></li>
					<li><span><a href="#"><img src="images/liuyarn.png" width="60" height="20"></a></span><span style="padding-left:8px;"><a href="#"><img src="images/wtsj.png" width="60" height="20"></a></span></li>
				</ul>

			</div>
			<div class="clear"></div>
			<div class="list">
				<ul>
					<li>
						<span class="color">擅长设计:</span>
						<c:forEach items="${member.personalInformation.personalDesignTypeSet}" var="designType" varStatus="status">
							${designType.name}
							<c:if test="${!status.last}">,</c:if>
						</c:forEach>
					</li>

					<li><span class="color">设计师简介:</span></li>
					<li>${member.introduction}</li>
					<li><span class="colora"><a href="<spring:url value="/portal/usercenter/personal/information/${member.id}"/>">详细介绍&gt;&gt;</a></span></li>
				</ul>



			</div>

		</div>
		<div class="clear"></div>
		<div class="newszp">
			<h4 class="resume_title" style="background: url('<spring:url value="/static/img/member/navbg.png"/>') repeat-x;">最新作品公告</h4>
			<div class="works_news"><img src="images/zxzpa.png"></div>
			<p class="works_title"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽</a></p>
			<p class="works_list"><a href="#" target="_blank">国汉堡Poppenbuette交通枢纽
				德国汉堡Poppenbüttel（Poppenbuettel）区交通枢纽工程由Blunck + Morgen Architekten</a></p>



		</div>
	</div>
	<div class="clear"></div>
	<div class="page">
		<div class="up"><a href="#"><img src="<spring:url value="/static/img/member/pageaa.png"/>">上一页</a></div>
		<div class="down"><a href="#">下一页<img src="<spring:url value="/static/img/member/pagea.png"/>"></a></div>


	</div>
	<div class="clear"></div>
	<div class="advert">
		<span><img src="images/hrew2.jpg" width="300" height="86"></span>
		<span style="padding-left:15px;"><img src="images/guangao.jpg" width="300" height="86"></span>
		<span style="padding-left:15px;"><img src="images/hrew2.jpg" width="300" height="86"></span>

	</div>

<%@include file="personal_bottom.jsp"%>