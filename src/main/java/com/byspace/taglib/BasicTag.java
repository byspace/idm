package com.byspace.taglib;

import com.byspace.console.template.service.TemplateService;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.ContextHelper;
import com.byspace.util.DateUtils;
import com.byspace.util.FreemarkerUtils;
import com.byspace.util.Md5Utils;
import net.sf.json.JSONObject;

import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-15
 * Time: 下午4:38
 */
public class BasicTag extends TagSupport {

	protected Map<String, Object> variables = new HashMap<String, Object>();
	protected TemplateService templateService;
	protected TopicService topicService;

	protected String getUrl(String url) {
		return pageContext.getServletContext().getContextPath() + url;
	}

	protected void init() {
		variables.put("ROOT_URL", pageContext.getServletContext().getContextPath());
		templateService = (TemplateService) ContextHelper.getBean("templateService");
		topicService = (TopicService) ContextHelper.getBean("topicService");
	}

	protected void write(String path) throws IOException {

		variables.put("UNIQUE_TAG", getUniqueTag());

		String result = FreemarkerUtils.replaceByTemplate(variables, path);
		pageContext.getOut().write(result);
	}

	protected String getUniqueTag() {
		return Md5Utils.encode(pageContext.getRequest().getRemoteAddr() + DateUtils.getCurrentTimestamp() + JSONObject.fromObject(variables).toString());
	}

}
