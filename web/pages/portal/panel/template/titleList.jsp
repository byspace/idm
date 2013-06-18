<div class='panel' style='width: ${width}px; height: ${height}px;'>
	<div class='top'>
		<div class='title' style="background: url('${ROOT_URL}/static/img/icon01.png') no-repeat top left;">
			<span>${title}</span>
		</div>
		<div class='more' style="background: url('${ROOT_URL}/static/img/btn_bg01.png') no-repeat;">
			<a href='${moreLink}'>更多</a>
		</div>
	</div>
	<div class='content'>
		<ul class="list">
			<#list vi23 as article>
				<li><a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank">${article.subject}</a></li>
			</#list>
		</ul>
	</div>
</div>
