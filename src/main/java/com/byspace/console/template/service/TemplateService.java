package com.byspace.console.template.service;

import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.PanelTemplate;
import com.byspace.console.template.entity.ViewItem;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午10:40
 */
public interface TemplateService {

	/**
	 * read panel instance by code
	 * @param code
	 * @return
	 */
	public PanelInstance readPanelInstanceByCode(String code);

	/**
	 * read view item by code
	 * @param code
	 * @return
	 */
	public ViewItem readViewItemByCode(String code);

	/**
	 * read view item by id
	 * @param id
	 * @return
	 */
	public ViewItem readViewItemById(int id);

	/**
	 * read panel template by id
	 * @param id
	 * @return
	 */
	public PanelTemplate readPanelTemplateById(int id);

	/**
	 * save panel template
	 * @param panelTemplate
	 */
	public void savePanelTemplate(PanelTemplate panelTemplate);

	/**
	 * batch delete panel template
	 * @param idList
	 */
	public void batchDeletePanelTemplate(List<Integer> idList);
}
