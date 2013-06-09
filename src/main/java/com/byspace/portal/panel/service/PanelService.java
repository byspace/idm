package com.byspace.portal.panel.service;

import com.byspace.portal.panel.entity.Panel;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-9
 * Time: 上午10:47
 */
public interface PanelService {

	/**
	 * read panel
	 * @param panelId
	 * @return
	 */
	public Panel read(int panelId);

	public Panel findByCode(String code);
}
