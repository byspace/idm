package com.byspace.taglib;

import com.byspace.portal.article.entity.Article;
import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.entity.ViewItemFilter;
import com.byspace.util.CustomLogger;

import javax.servlet.jsp.JspTagException;
import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-15
 * Time: 下午3:36
 */
public class PanelTag extends BasicTag {

	private String panelCode;
	private double width;
	private double height;

	@Override
	public int doEndTag() throws JspTagException {

		try {

			init();

			variables.put("width", width);
			variables.put("height", height);

			PanelInstance panelInstance = templateService.readPanelInstanceByCode(panelCode);

			variables.put("title", panelInstance.getTitle());
			variables.put("moreLink", getUrl(panelInstance.getMoreLink()));

			for (ViewItemFilter viewItemFilter : panelInstance.getViewItemFilterList()) {
				ViewItem viewItem = templateService.readViewItemByCode(viewItemFilter.getViewItemCode());
				String topicCode = viewItemFilter.getTopicCode();
				String key = viewItemFilter.getKey();

				List<Article> articleList = topicService.getArticleListByTopicAndKey(topicCode, key, viewItem.getSize());
				variables.put(viewItem.getCode(), articleList);
			}

			String path = "/pages/portal/panel/template/" + panelInstance.getPanelTemplate().getType() + ".jsp";
			write(path);

		} catch (IOException e) {
			CustomLogger.error(e, this);
		}

		return EVAL_PAGE;
	}

	public String getPanelCode() {
		return panelCode;
	}

	public void setPanelCode(String panelCode) {
		this.panelCode = panelCode;
	}

	public double getWidth() {
		return width;
	}

	public void setWidth(double width) {
		this.width = width;
	}

	public double getHeight() {
		return height;
	}

	public void setHeight(double height) {
		this.height = height;
	}
}