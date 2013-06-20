<#assign leftImageWidth = width / 3 - 20 />

<div class='panel' id="panel${UNIQUE_TAG}" style='width: ${width}px; height: ${height}px;'>
	<div class='top'>
		<div class='title' style="background: url('${ROOT_URL}/static/img/icon01.png') no-repeat top left;">
			<span>${title}</span>
		</div>
		<div class='more' style="background: url('${ROOT_URL}/static/img/btn_bg01.png') no-repeat;">
			<a href='${moreLink}'>更多</a>
		</div>
	</div>
	<div class='content'>

		<table celpadding=0 cellspacing=0>
			<tr>
				<td>
					<div class="imageContainer" style="width: ${width / 3 - 20}px; float: left; border-right: #CCC dotted 1px; padding: 0px 10px;">

						<div>
							<ul>
								<#list vi48 as article>
									<li style="margin: 0px">
										<a href="${ROOT_URL}/portal/article/viewVedio/${article.id}" target="_blank"  style="max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;">
											<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${leftImageWidth}" height="${(leftImageWidth) * 0.85}" />
										</a>
										<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${leftImageWidth}px; width: ${leftImageWidth}px;">${article.subject}</a>
									</li>
								</#list>
							</ul>
						</div>
					</div>
				</td>
				<td>
					<div style="width: ${width * 2 / 3 - 30}px; float: left; padding: 0px 10px;">

						<ul class="list" style="float: left; width: ${width / 3 - 25}px; border-right: #CCC dotted 1px;">
							<#list vi49 as article>
								<#if article_index lt 10>
									<li>
										<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${width / 4 - 80}px; width: ${width / 4 - 80}px;">${article.subject}</a>
									</li>
								</#if>
							</#list>
						</ul>

						<ul class="list" style="float: left;  width: ${width / 3 - 25}px; margin-left: 10px">
							<#list vi49 as article>
								<#if article_index gt 9>
									<li>
										<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${width / 4 - 80}px; width: ${width / 4 - 80}px;">${article.subject}</a>
									</li>
								</#if>
							</#list>
						</ul>
					</div>
				</td>
			</tr>

			<tr>
				<td colspan="2">
					<div class="imageContainer" style="text-align: center">

						<#assign imageWidth = width / 5 - 25 />

						<ul>
							<#list vi50 as article>
								<li>
									<a href="${ROOT_URL}/portal/article/viewVedio/${article.id}" target="_blank"  style="max-width: ${imageWidth}px; width: ${imageWidth}px;">
										<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}" width="${imageWidth}" height="${(imageWidth) * 0.75}" />
									</a>
									<a title="${article.subject}" href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${imageWidth}px; width: ${imageWidth}px;">${article.subject}</a>
								</li>
							</#list>
						</ul>
					</div>
				</td>
			</tr>
		</table>

	</div>
</div>
