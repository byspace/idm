<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="personal_top.jsp" %>

<link rel="stylesheet" href="<spring:url value="/static/css/portal/usercenter/default/information.css"/>" type="text/css" />

<input type="hidden" id="nav_current_page" value="comment" />

<script type="text/javascript">
	function leaveMessage() {
		var msg = $("#message").val();
		ajaxSubmit(getUrl("/portal/usercenter/personal/leaveMessage/" + $("#memberId").val()), {
			"message" : msg
		}, function(data) {
			if (data.result) {
				window.location.reload();
			} else {
				alert(data.message);
			}
		});
	}
</script>

<div class="container">
	<div class="main">
		<%@ include file="left.jsp"%>

		<input type="hidden" id="memberId" value="${member.id}" />

		<div class="right">
			<div class="right_top" style="background: url('<spring:url value="/static/img/member/bg_01.png"/>') repeat-x;"><span>留言板</span></div>
			<div class="right_bottom">
				<table width="98%" cellpadding="0" cellspacing="0">

					<c:forEach items="${member.commentList}" var="comment">
						<tr>
							<td style="padding-top: 5px; padding-bottom: 5px; vertical-align: top;">
								<img src="${member.personalInformation.portrait}" width="40px" height="40px">
							</td>
							<td style="border-bottom: 1px solid #ccc; padding: 5px;">
								<span id="name">${comment.author.name}：</span>${comment.message} | <span id="date"><fmt:formatDate value="${comment.date}" pattern="yyyy-MM-dd HH:mm:ss"/></span>
							</td>
						</tr>
					</c:forEach>

					<tr>
						<td colspan="2">
							<textarea id="message" rows="5" cols="90"></textarea>
							<div style="text-align: right; padding-right: 40px;"><a class="editLink" href="#" onclick="leaveMessage()">&nbsp;留言</a></div>
						</td>
					</tr>
				</table>
			</div>
	</div>
	<div class="clear"></div>

<%@include file="personal_bottom.jsp"%>