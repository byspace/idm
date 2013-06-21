<div class='panel' id="panel${UNIQUE_TAG}" style='width: ${width}px; height: ${height}px;'>
	<div class='top'>
		<div class='title' style="background: url('${ROOT_URL}/static/img/icon01.png') no-repeat top left;">
			<span>${title}</span>
		</div>
		<div class='more'>
			<a href='${moreLink}'>+更多</a>
		</div>
	</div>

	<#assign imageWidth = width * 3 / 5 / 4 />

	<div class='content'>
		<table celpadding=0 cellspacing=0>
			<tr>
				<td width="${imageWidth * 4 + 50}px">
					<div class="imageContainer" style="text-align: center">
						<ul>
							<#list vi60 as article>
								<li style="margin-top: 0px; margin-right: 0px;">
									<a href="${ROOT_URL}/portal/article/viewVedio/${article.id}" target="_blank"  style="max-width: ${imageWidth}px; width: ${imageWidth}px;">
										<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${imageWidth}" height="${(imageWidth) * 0.8}" />
									</a>
									<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${imageWidth}px; width: ${imageWidth}px;">${article.subject}</a>
								</li>
							</#list>
						</ul>
					</div>
				</td>

				<td style="vertical-align: top;">
					<table style="border: 1px solid #CFCFCF; padding: 5px">
						<#list vi61 as topic>
							<#if (topic_index % 2) == 0><tr></#if>
								<td style="padding: 2px 8px;">
									<a style="text-decoration: none" href="${ROOT_URL}/portal/topic/list/${topic.code}">${topic.name}</a>
								</td>
							<#if (topic_index % 2) == 1></tr></#if>
						</#list>
					</table>
				</td>

			</tr>
		</table>

	</div>
</div>
