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

		<div style="width: ${width / 3 - 30}px; float: left; border-right: #CCC dotted 1px; padding: 10px;">
			<ul class="list">
				<#list vi27 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>

		<div class="imageContainer" style="width: ${2 * width / 3}px; float: left;">

			<#assign imageWidth = (2 * width / 3) / 5 - 20>

			<ul>
				<#list vi28 as article>
					<li>
						<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank" style="max-width: ${imageWidth}px; width: ${imageWidth}px;">
							<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${imageWidth}" height="${imageWidth * 0.75}"/>
						</a>
						<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${imageWidth}px; width: ${imageWidth}px;">${article.subject}</a>
					</li>
				</#list>
			</ul>
		</div>
	</div>
</div>
