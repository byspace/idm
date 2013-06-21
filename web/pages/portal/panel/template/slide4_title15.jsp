<script type="text/javascript">
	$(function(){
		$("#${UNIQUE_TAG}").PikaChoose({
			hoverPause:true,
			showTooltips:true
		});
	});
</script>

<#assign leftImageWidth = width / 2 - 40 />

<style>
	#panel${UNIQUE_TAG} .pika-stage, .pika-textnav {
		width: ${leftImageWidth}px;
	}

	#panel${UNIQUE_TAG} .pika-thumbs {
		padding: 0px;
	}

	#panel${UNIQUE_TAG} .pika-thumbs li {
		width: 55px;
		height: 55px;
	}

	#panel${UNIQUE_TAG} .pika-stage {
		padding: 0px;
		overflow: hidden;
	}

	#panel${UNIQUE_TAG} .pika-textnav a.previous {
		display: none;
	}

	#panel${UNIQUE_TAG} .pika-textnav a.next {
		display: none;
	}

	#panel${UNIQUE_TAG} .pika-stage .caption {
		bottom: 10px;
	}
	#panel${UNIQUE_TAG} .pika-counter {
		bottom: 10px;
	}

	#panel${UNIQUE_TAG} .pika-imgnav a.previous {
		left: 0px;
	}
	#panel${UNIQUE_TAG} .pika-imgnav a.next {
		right: 0px;
	}
</style>

<div class='panel' id="panel${UNIQUE_TAG}" style='width: ${width}px; height: ${height}px;'>
	<div class='top'>
		<div class='title' style="background: url('${ROOT_URL}/static/img/icon01.png') no-repeat top left;">
			<span>${title}</span>
		</div>
		<div class='more'>
			<a href='${moreLink}'>+更多</a>
		</div>
	</div>
	<div class='content'>

		<div style="width: ${width / 2 - 20}px; float: left; border-right: #CCC dotted 1px; padding: 0px 10px;">

			<div>
				<ul id="${UNIQUE_TAG}" >
					<#list vi40 as article>
						<li>
							<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank">
								<img src="<#if article.titleImage?index_of('http') == -1>${ROOT_URL}</#if>${article.titleImage}"/>
							</a>
							<span>${article.subject}</span>
						</li>
					</#list>
				</ul>
			</div>

		</div>

		<div style="width: ${width / 2 - 30}px; float: left; padding: 0px 10px;">
			<ul class="list">
				<#list vi41 as article>
					<li>
						<a href="${ROOT_URL}/portal/article/view/${article.id}" target="_blank"  style="max-width: ${width / 2 - 20}px; width: ${width / 2 - 20}px;">${article.subject}</a>
					</li>
				</#list>
			</ul>
		</div>

	</div>
</div>
