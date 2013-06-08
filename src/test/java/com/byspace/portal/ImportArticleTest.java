package com.byspace.portal;

import com.byspace.portal.article.service.ImportService;
import com.byspace.util.ContextHelper;
import com.byspace.util.CustomLogger;
import com.byspace.util.PatternUtil;
import org.junit.Test;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-8
 * Time: 上午11:52
 */
public class ImportArticleTest {


	private static final Map<Integer, String> nameMap = new HashMap<Integer, String>();
	static {
		//nameMap.put(1, "infocenter");
		nameMap.put(9, "infocenter/newsinfo");
		nameMap.put(10, "infocenter/iactivitybulletin");
		nameMap.put(11, "infocenter/designfront");
		nameMap.put(12, "infocenter/itraininfo");
		nameMap.put(13, "infocenter/newsdbroadcast");
		nameMap.put(14, "infocenter/ibrandvisit");
		nameMap.put(15, "infocenter/iindudynamic");
		nameMap.put(16, "infocenter/designspectopic");
		nameMap.put(17, "infocenter/iownershouse");
		nameMap.put(18, "infocenter/worksjudge");

		//nameMap.put(2, "buildingdesign");
		nameMap.put(19, "buildingdesign/buildinginfo");
		nameMap.put(20, "buildingdesign/wonderfulvideo");
		nameMap.put(21, "buildingdesign/businessbuilding");
		nameMap.put(22, "buildingdesign/citybuilding");
		nameMap.put(23, "buildingdesign/hisbuilding");
		nameMap.put(24, "buildingdesign/resbuilding");
		nameMap.put(25, "buildingdesign/cityplan");
		nameMap.put(26, "buildingdesign/offbuilding");
		nameMap.put(27, "buildingdesign/buildingstruct");
		nameMap.put(28, "buildingdesign/indubuilding");
		nameMap.put(29, "buildingdesign/plot");
		nameMap.put(30, "buildingdesign/btrain");
		nameMap.put(31, "buildingdesign/btrainvideo");
		nameMap.put(32, "buildingdesign/btrainspectopic");

		//nameMap.put(3, "landscapedesign");
		nameMap.put(33, "landscapedesign/landscapeinfo");
		nameMap.put(34, "landscapedesign/landscapevideo");
		nameMap.put(35, "landscapedesign/businesswork");
		nameMap.put(36, "landscapedesign/waterstate");
		nameMap.put(37, "landscapedesign/housecourtyard");
		nameMap.put(38, "landscapedesign/plandesign");
		nameMap.put(39, "landscapedesign/squarespace");
		nameMap.put(40, "landscapedesign/touristspot");
		nameMap.put(41, "landscapedesign/lrecreation");
		nameMap.put(42, "landscapedesign/traffic");
		nameMap.put(43, "landscapedesign/ldesignthesis");
		nameMap.put(44, "landscapedesign/buildingphoto");

		//nameMap.put(4, "roomdesign");
		nameMap.put(45, "roomdesign/buildingsaveenergy");
		nameMap.put(46, "roomdesign/rdesignthesis");
		nameMap.put(47, "roomdesign/acousticdesign");
		nameMap.put(48, "roomdesign/modeldownload");
		nameMap.put(49, "roomdesign/designpaper");
		nameMap.put(50, "roomdesign/designcourse");
		nameMap.put(51, "roomdesign/rtrainvideo");
		nameMap.put(52, "roomdesign/roomphoto");
		nameMap.put(53, "roomdesign/roomdesigninfo");
		nameMap.put(54, "roomdesign/housevillas");
		nameMap.put(55, "roomdesign/businessspace");
		nameMap.put(56, "roomdesign/rrecreation");
		nameMap.put(57, "roomdesign/exhibitiondisplay");

		//nameMap.put(5, "effectmodel");
		nameMap.put(58, "effectmodel/edesignfront");
		nameMap.put(59, "effectmodel/epersonvisiting");
		nameMap.put(60, "effectmodel/eindudynamic");
		nameMap.put(61, "effectmodel/ebrandvisit");
		nameMap.put(62, "effectmodel/eactivitybulletin");
		nameMap.put(63, "effectmodel/etraininfo");
		nameMap.put(64, "effectmodel/eownershouse");

		//nameMap.put(6, "developer");
		nameMap.put(65, "developer/ddesignfront");
		nameMap.put(66, "developer/dpersonvisiting");
		nameMap.put(67, "developer/dindudynamic");
		nameMap.put(68, "developer/dbrandvisit");
		nameMap.put(69, "developer/dactivitybulletin");
		nameMap.put(70, "developer/dtraininfo");
		nameMap.put(71, "developer/downershouse");
	}

	public void importOldArticles() {
		ImportService importService = (ImportService)ContextHelper.getBean("importService");
		String rootDir = "/E:/article/";

		for (int topicId : nameMap.keySet()) {
			String path = rootDir + nameMap.get(topicId);
			importService.importOldArticles(topicId, path);
		}

	}

	@Test
	public void updateContent() {
		ImportService importService = (ImportService)ContextHelper.getBean("importService");
		importService.updateArticleContentImage("idm");
	}


	public void patternTest() {
		String str = "<IMG alt=\"\" hspace=0 src=\"http://preview.93idm.com/contentimage/Jun4,2013100524AM.jpg\" align=baseline border=0><img src=\"http://preview.93idm.com/contentimage/Jun4,2013100524AM.jpg\" align=baseline border=0>";
		str = str.replace("<IMG", "<img");
		List<String> srcList = PatternUtil.getMatchedContent(str, "<img(.+?)>");

		for (String img : srcList) {
			System.out.println(PatternUtil.getMatchedContent(img, "src=\"(.+?)\"").get(0));
		}

	}

}
