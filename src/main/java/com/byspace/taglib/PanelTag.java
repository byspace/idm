package com.byspace.taglib;

import com.byspace.portal.article.entity.Article;
import com.byspace.console.template.entity.PanelInstance;
import com.byspace.console.template.entity.ViewItem;
import com.byspace.console.template.entity.ViewItemFilter;
import com.byspace.portal.topic.entity.Topic;
import com.byspace.util.CustomLogger;
import com.byspace.util.DateUtils;
import com.byspace.util.Md5Utils;
import net.sf.json.JSONObject;

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

				ViewItem viewItem = viewItemFilter.getViewItem();

				if (viewItem.getType().equals("topic-list")) {
					List<Topic> topicList = topicService.getTopicListByParentId(viewItemFilter.getTopic().getId());
					variables.put("vi" + viewItem.getId(), topicList);
				} else {
					List<Article> articleList = topicService.getArticleListByTopicAndKey(viewItemFilter.getTopic().getCode(), viewItemFilter.getKey(), viewItem.getSize());
					variables.put("vi" + viewItem.getId(), articleList);
				}



				if (panelInstance.getPanelTemplate().getType().equals("tabs")) {
					variables.put("vi" + viewItem.getId() + "_title", viewItemFilter.getTopic().getName());
				}


			}

			String path = "/pages/portal/panel/template/" + panelInstance.getPanelTemplate().getCode() + ".jsp";
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
