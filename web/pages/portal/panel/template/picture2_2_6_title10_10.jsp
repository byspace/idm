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

		<div style="width: ${width / 3 - 20}px; float: left; border-right: #CCC dotted 1px; padding: 0px 10px;">

			<#assign leftImageWidth = width / 3 / 2 - 40 />

			<div class="imageContainer" >
				<ul>
					<#list vi29 as article>
						<li>
							<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;">
								<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${leftImageWidth}" height="${leftImageWidth * 0.75}"/>
							</a>
							<a style=" max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;"  title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank">
								${article.subject}
							</a>
						</li>
					</#list>
				</ul>
			</div>

			<ul class="list">
				<#list vi30 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>

		<div style="width: ${width / 3 - 20}px; float: left; border-right: #CCC dotted 1px;  padding: 0px 10px;">

			<div class="imageContainer">
				<ul>
					<#list vi31 as article>
						<li>
							<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;">
								<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${leftImageWidth}" height="${leftImageWidth * 0.75}"/>
							</a>
							<a style=" max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;"  title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank">
								${article.subject}
							</a>
						</li>
					</#list>
				</ul>
			</div>

			<ul class="list">
				<#list vi32 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>

		<div class="imageContainer" style="width: ${width / 3 - 10}px; float: left">

			<#assign rightImageWidth = width / 3 / 2 - 30 />

			<ul>
				<#list vi33 as article>
					<li>
						<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${rightImageWidth}px; width: ${rightImageWidth}px;">
							<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${rightImageWidth}" height="${rightImageWidth * 0.65}"/>
						</a>
						<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank" style="max-width: ${rightImageWidth}px; width: ${rightImageWidth}px;">${article.subject}</a>
					</li>
				</#list>
			</ul>
		</div>
	</div>
</div>
