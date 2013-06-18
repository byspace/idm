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
	 * read panel template list
	 * @return
	 */
	public List<PanelTemplate> readPanelTemplateList();

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

	/**
	 * read panel instance by id
	 * @param id
	 * @return
	 */
	public PanelInstance readPanelInstanceById(int id);

	/**
	 * save panel instance
	 * @param panelInstance
	 */
	public void savePanelInstance(PanelInstance panelInstance);

	/**
	 * batch delete panel instance
	 * @param idList
	 */
	public void batchDeletePanelInstance(List<Integer> idList);
}
