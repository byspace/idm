<script type="text/javascript">
	$(function(){
		$("#${UNIQUE_TAG}").PikaChoose({
			hoverPause:true,
			showTooltips:true
		});
	});
</script>

<style>
	#panel${UNIQUE_TAG} .pika-stage, .pika-textnav {
		width: ${width}px;
	}

	#panel${UNIQUE_TAG} .pika-stage{
		height: ${height - 70}px;
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
	<div>
		<ul id="${UNIQUE_TAG}" >
			<#list vi24 as article>
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
