<script type="text/javascript">
	$(function(){
		$("#panel${UNIQUE_TAG} ul").idTabs();
	});
</script>

<div id="panel${UNIQUE_TAG}" class='panel' style='width: ${width}px; height: ${height}px;'>

	<div class="tabs">
		<ul class="tabTitles">
			<li><a href="#vi56">${vi56_title}</a></li>
			<li><a href="#vi57">${vi57_title}</a></li>
			<li><a href="#vi58">${vi58_title}</a></li>
			<li><a href="#vi59">${vi59_title}</a></li>
		</ul>
		<div id="vi56">
			<ul class="list">
				<#list vi56 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>
		<div id="vi57">
			<ul class="list">
				<#list vi57 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>
		<div id="vi58">
			<ul class="list">
				<#list vi58 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>
		<div id="vi59">
			<ul class="list">
				<#list vi59 as article>
					<li><a href="${ROOT_URL}/portal/article/view/${article.id}" title="${article.subject}" target="_blank">${article.subject}</a></li>
				</#list>
			</ul>
		</div>
	</div>



</div>