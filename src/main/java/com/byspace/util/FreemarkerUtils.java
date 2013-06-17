package com.byspace.util;

import freemarker.cache.StringTemplateLoader;
import freemarker.template.Configuration;
import freemarker.template.Template;

import java.io.StringWriter;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午9:17
 */
public class FreemarkerUtils {

	public static final String TEMPLATE_NAME = "replace_temp_string";

	public static String replace(Map<String, Object> variables, String source) {
		try {

			Configuration cfg = new Configuration();
			StringTemplateLoader stringTemplateLoader = new StringTemplateLoader();
			stringTemplateLoader.putTemplate(TEMPLATE_NAME, source);

			cfg.setTemplateLoader(stringTemplateLoader);
			cfg.setDefaultEncoding("utf-8");
			cfg.setNumberFormat("#");

			Template template = cfg.getTemplate(TEMPLATE_NAME);

			StringWriter writer = new StringWriter();
			template.process(variables, writer);

			return writer.toString();
		} catch (Exception e) {
			CustomLogger.error(e, FreemarkerUtils.class);
			return null;
		}
	}

	/**
	 *
	 * @param variables
	 * @param path eg. pages/portal/panel/template/name.jsp
	 * @return
	 */
	public static String replaceByTemplate(Map<String, Object> variables, String path) {
		path = DirectoryUtil.getRootDir() + path;
		String source = FileUtils.readFileByLine(path);

		return replace(variables, source);
	}
}
