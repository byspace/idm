package com.byspace.portal.article.service.impl;

import com.byspace.portal.article.entity.Article;
import com.byspace.portal.article.entity.KeyWord;
import com.byspace.portal.article.service.ArticleService;
import com.byspace.portal.article.service.ArticleTypeService;
import com.byspace.portal.article.service.CategoryService;
import com.byspace.portal.article.service.ImportService;
import com.byspace.portal.topic.service.TopicService;
import com.byspace.util.CustomLogger;
import com.byspace.util.DateUtils;
import com.byspace.util.PatternUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-8
 * Time: 上午11:08
 */
@Service("importService")
@Transactional
public class ImportServiceImpl implements ImportService {

	@PersistenceContext
	private EntityManager em;

	@Autowired
	private TopicService topicService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleTypeService articleTypeService;
	@Autowired
	private CategoryService categoryService;

	private static long articleCount;

	@Override
	public void importOldArticles(int topicId, String path) {

		articleCount = 0;

		File file = new File(path);
		if (file.isDirectory()) {
			CustomLogger.info("---------------- importing:" + path + " ----------------", this);

			this.importChildrenFolder(file, topicId);

			CustomLogger.info("---------------- end import:" + path + " ----------------", this);
		} else {
			CustomLogger.error("Not Exist:" + path, this);
		}

		CustomLogger.info("import " + articleCount + " articles", this);
	}

	private void importChildrenFolder(File file, int topicId) {

		if (this.isContentDirectory(file)) {
			File[] contentFiles = file.listFiles();
			for (File contentFile : contentFiles) {
				if (this.isArtileFile(contentFile)) {
					this.importArticle(contentFile, topicId);
				}
			}
		}

		File[] children = file.listFiles();
		for (File child : children) {
			if (child.isDirectory()) {
				importChildrenFolder(child, topicId);
			}
		}
	}

	private boolean isContentDirectory(File file) {
		return PatternUtil.match(file.getName(), "^[0-9]{6}$");
	}

	private boolean isArtileFile(File file) {
		return PatternUtil.match(file.getName(), "^[0-9]{14}.html$");
	}

	private void importArticle(File articleFile, int topicId) {
		try {
			String content = this.readContent(articleFile);
			Article article = new Article();

			//CustomLogger.info("importing: " + articleFile.getAbsolutePath() + " to topic: " + topicId + " - " + topicService.readTopic(topicId).getName(), this);

			article.setSubject(fetchFromContent(content, "<td class=\"title\">(.+?)</td>"));
			article.setPublishDate(DateUtils.strToDate(fetchFromContent(content, "<td class=time>(.+?)&nbsp;&nbsp;"), "yyyy-MM-dd HH:mm"));
			article.setSource(fetchFromContent(content, "<font class =time_source>(.+?)</font>"));
			article.setArticleType(articleTypeService.fileByName(fetchFromContent(content, "var articletype = \"(.+?)\"")));
			article.setCategory(categoryService.findCategoryByName(fetchFromContent(content, "var subtitle = \"(.+?)\"")));
			article.setTopic(topicService.readTopic(topicId));

			this.setKeyWords(article, fetchFromContent(content, "var akeyworks = \"(.+?)\""));

			String articleContent = fetchFromContent(content, "<td class=content id=zoom>(.+?)</td></tr>");
			articleContent = articleContent.replace("/articleimage/", "/static/upload/articleimage/");
			article.setContent(articleContent);

			this.setImages(article, articleContent);

			articleService.saveArticle(article);

			articleCount++;
		} catch (Exception e) {
			CustomLogger.info("import: " + articleFile.getAbsolutePath() + " to topic: " + topicId + " - " + topicService.readTopic(topicId).getName() + "failed", this);
			CustomLogger.error(e, this);
		}
	}

	private String fetchFromContent(String content, String expression) {
		return PatternUtil.getMatchedContent(content, expression).get(0);
	}

	private void setKeyWords(Article article, String keyWordString) {

		List<KeyWord> list = new ArrayList<KeyWord>();

		for (String keyWordStr : keyWordString.split(",")) {
			KeyWord keyWord = new KeyWord();
			keyWord.setWord(keyWordStr);

			list.add(keyWord);
		}

		article.setKeyWordList(list);
	}

	private void setImages(Article article, String articleContent) {

		articleContent = articleContent.replace("<IMG", "<img");
		List<String> srcList = new ArrayList<String>();

		for (String imgHtml : PatternUtil.getMatchedContent(articleContent, "<img(.+?)>")) {
			List<String> src = PatternUtil.getMatchedContent(imgHtml, "src=\"(.+?)\"");
			srcList.addAll(src);
		}

		String defaultImage = null;
		StringBuffer buffer = new StringBuffer();

		for (String src : srcList) {
			if (defaultImage == null) {
				defaultImage = src;
			}
			buffer.append(src + "|%%|,|%%|");
		}

		article.setTitleImage(defaultImage);
		article.setImages(buffer.toString());
	}

	private String readContent(File articleFile) {
		StringBuffer buffer = new StringBuffer();
		BufferedReader reader = null;
		try {
			reader = new BufferedReader(new FileReader(articleFile));
			String tmpLine = null;
			while ((tmpLine = reader.readLine()) != null) {
				buffer.append(tmpLine);
			}
		} catch (Exception e) {
			CustomLogger.error(e, this);
		} finally {
			if (reader != null) {
				try {
					reader.close();
				} catch (Exception e) {
					CustomLogger.error(e, this);
				}
			}
		}

		return buffer.toString();
	}

	@Override
	public void updateArticleContentImage(String deployName) {
		List<Article> articles = em.createQuery("from Article").getResultList();
		for (Article article : articles) {
			String content = article.getContent();
			content = content.replace("/static/upload/", "/" + deployName + "/static/upload/");
			article.setContent(content);

			em.merge(article);
		}
	}
}
