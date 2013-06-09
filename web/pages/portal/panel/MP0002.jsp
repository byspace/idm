<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<div class="news" >
	<div id="newsearchtop">
		<ul>
			<li ><div class="newsearchinsider" id="v1" onClick="javascript:doClick(this)">行业动态</div></li>
			<li ><div class="newsearchinsidew" id="v2" onClick="javascript:doClick(this)">新闻直播</div></li>
			<li ><div class="newsearchinsidew" id="v3" onClick="javascript:doClick(this)">活动公告</div></li>
			<li ><div class="newsearchinsidew" id="v4" onClick="javascript:doClick(this)">论坛推荐</div></li>
		</ul>
	</div>

	<div id=newsearchbottom>
		<div id=e1><div id=left><div id=searchleft1>
			<div class="con_news">
				<ul>
					<c:forEach items="${newListTab1}" var="article" varStatus="status">
						<c:if test="${status.first}">
							<li class="heading"><strong>
								<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
							</strong></li>
						</c:if>

						<c:if test="${!status.first}">
							<li >
								<ul class="list" >
									<li class="key" id="ie6_key">
										<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
									</li>
									<li class="date"><fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd" /></li>
								</ul>
								<div class="clear"></div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div></div></div>
		<div id=e2><div id=left><div id=searchleft1>
			<div class="con_news">
				<ul>
					<c:forEach items="${newListTab2}" var="article" varStatus="status">
						<c:if test="${status.first}">
							<li class="heading"><strong>
								<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
							</strong></li>
						</c:if>

						<c:if test="${!status.first}">
							<li >
								<ul class="list" >
									<li class="key" id="ie6_key">
										<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
									</li>
									<li class="date"><fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd" /></li>
								</ul>
								<div class="clear"></div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div></div></div>
		<div id=e3><div id=left><div id=searchleft1>
			<div class="con_news">
				<ul>
					<c:forEach items="${newListTab3}" var="article" varStatus="status">
						<c:if test="${status.first}">
							<li class="heading"><strong>
								<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
							</strong></li>
						</c:if>

						<c:if test="${!status.first}">
							<li >
								<ul class="list" >
									<li class="key" id="ie6_key">
										<a href="<spring:url value="/portal/article/view/${article.id}" />" target="_blank">[${article.category.name}]${article.subject}</a>
									</li>
									<li class="date"><fmt:formatDate value="${article.publishDate}" pattern="yyyy-MM-dd" /></li>
								</ul>
								<div class="clear"></div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
			</div>
		</div></div></div>
		<div id=e4><div id=left><div id=searchleft1>
			<div class="con_news">
				<ul>

				</ul>
			</div>
		</div></div></div>
	</div>
</div>