package com.byspace.portal;

import com.byspace.portal.panel.service.PanelService;
import com.byspace.util.ContextHelper;
import org.junit.Test;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-13
 * Time: 上午9:38
 */
public class UpdatePanels {

	@Test
	public void updatePanels() {
		PanelService panelService = (PanelService) ContextHelper.getBean("panelService");
		//panelService.updateAllPanelArticles();
	}
}
