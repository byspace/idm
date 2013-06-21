<div class='panel' style='width: ${width}px; height: ${height}px;'>
	<div class='top'>
		<div class='title' style="background: url('${ROOT_URL}/static/img/icon01.png') no-repeat top left;">
			<span>${title}</span>
		</div>
		<div class='more'>
			<a href='${moreLink}'>+更多</a>
		</div>
	</div>
	<div class='content'>

		<#assign leftWidth = width / 3 - 10>

		<div style="width: ${width / 3}px; float: left; border-right: #CCC dotted 1px; padding: 0px;">
			<div class="imageContainer">
				<ul>
					<#list vi34 as article>
						<li style="margin: 0px">
							<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank" style="max-width: ${leftWidth}px; width: ${leftWidth}px;">
								<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${leftWidth}" height="${height / 3 - 35}"/>
							</a>
							<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${leftWidth}px; width: ${leftWidth}px;">${article.subject}</a>
						</li>
					</#list>
				</ul>
			</div>
		</div>

		<div style="width: ${2 * width / 3 - 40}px; float: left; padding: 0px 10px">

			<ul class="list">
				<#list vi35 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>
	</div>
</div>
