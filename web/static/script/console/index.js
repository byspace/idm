$(function(){

	$('.menutree').tree({
		onClick: function(node){
			addTab(node.text, getUrl(node.attributes.url), node.iconCls);
		}
	});
});

function addTab(title, href, icon){
	var tt = $('#mainPanel');
	if (tt.tabs('exists', title)){//如果tab已经存在,则选中并刷新该tab
		tt.tabs('select', title);
		refreshTab({tabTitle:title,url:href, tabs: tt});
	} else {
		if (href){
			var content = '<iframe scrolling=auto frameborder="0"  src="'+href+'" style="width:100%;height:99%;"></iframe>';
		} else {
			var content = '未实现';
		}
		tt.tabs('add',{
			title:title,
			closable:true,
			content:content,
			iconCls: icon || 'icon-default',
			tools:[{
				iconCls:'icon-mini-refresh',
				handler:function(){
					var selectedTab = tt.tabs("getSelected")
					var iframe = $("iframe", selectedTab);
					iframe.attr("src", iframe.attr("src"));
				}
			}]
		});
	}
}
/**
 * 刷新tab
 *
 *example: {tabTitle:'tabTitle',url:'refreshUrl'}
 *如果tabTitle为空，则默认刷新当前选中的tab
 *如果url为空，则默认以原来的url进行reload
 */
function refreshTab(cfg){
	var refresh_tab = cfg.tabTitle ? $('#mainPanel').tabs('getTab',cfg.tabTitle) : $('#mainPanel').tabs('getSelected');
	if(refresh_tab && refresh_tab.find('iframe').length > 0){
		var _refresh_ifram = refresh_tab.find('iframe')[0];
		var refresh_url = cfg.url?cfg.url:_refresh_ifram.src;
		_refresh_ifram.contentWindow.location.href=refresh_url;
	}
}

function refreshCurrentTab() {
	var tt = $('#mainPanel');

	var selectedTab = tt.tabs("getSelected")
	var iframe = $("iframe", selectedTab);
	iframe.attr("src", iframe.attr("src"));
}

function closeTab(title) {

	var tt = $('#mainPanel');

	if (tt.tabs('exists', title)) {
		tt.tabs('select', title);

		var tab = tt.tabs('getSelected');
		if (tab){
			var index = tt.tabs('getTabIndex', tab);
			tt.tabs('close', index);
		}
	}
}