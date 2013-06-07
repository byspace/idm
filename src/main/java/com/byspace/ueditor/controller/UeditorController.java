package com.byspace.ueditor.controller;

import com.byspace.ueditor.entity.UploadEntity;
import com.byspace.ueditor.po.Uploader;
import com.byspace.ueditor.service.UploadService;
import com.byspace.util.CustomLogger;
import com.byspace.util.DirectoryUtil;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.*;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-7
 * Time: 上午9:54
 */
@Controller
@RequestMapping("ueditor")
public class UeditorController {

	@Autowired
	private UploadService uploadService;

	@RequestMapping("fileUp")
	public void fileUp(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {

			Uploader up = new Uploader(request);
			up.setSavePath("upload"); //保存路径
			String[] fileType = {".rar" , ".doc" , ".docx" , ".zip" , ".pdf" , ".txt" , ".swf", ".wmv"};  //允许的文件类型
			up.setAllowFiles(fileType);
			up.setMaxSize(10000);        //允许的文件最大尺寸，单位KB
			up.upload();

			UploadEntity uploadEntity = UploadEntity.buildFormUploader(up);
			uploadEntity.setUploadType("attachment");
			uploadService.save(uploadEntity);

			response.getWriter().print("{'url':'"+up.getUrl()+"','fileType':'"+up.getType()+"','state':'"+up.getState()+"','original':'"+up.getOriginalName()+"'}");

		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	@RequestMapping("imageUp")
	public void imageUp(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {

			Uploader up = new Uploader(request);
			up.setSavePath("upload");
			String[] fileType = {".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp"};
			up.setAllowFiles(fileType);
			up.setMaxSize(10000); //单位KB
			up.upload();

			UploadEntity uploadEntity = UploadEntity.buildFormUploader(up);
			uploadEntity.setUploadType("image");
			uploadService.save(uploadEntity);

			response.getWriter().print("{'original':'"+up.getOriginalName()+"','url':'"+up.getUrl()+"','title':'"+up.getTitle()+"','state':'"+up.getState()+"'}");

		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	@RequestMapping("scrawlUp")
	public void scrawlUp(HttpServletRequest request, HttpServletResponse response) {
		try {
			String param = request.getParameter("action");
			Uploader up = new Uploader(request);
			String path = "upload";
			up.setSavePath(path);
			String[] fileType = {".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp"};
			up.setAllowFiles(fileType);
			up.setMaxSize(10000); //单位KB

			if(param!=null && param.equals("tmpImg")){
				up.upload();
				UploadEntity uploadEntity = UploadEntity.buildFormUploader(up);
				uploadEntity.setUploadType("image");
				uploadService.save(uploadEntity);
				response.getWriter().print("<script>parent.ue_callback('" + up.getUrl() + "','" + up.getState() + "')</script>");
			}else{
				up.uploadBase64("content");
				UploadEntity uploadEntity = UploadEntity.buildFormUploader(up);
				uploadEntity.setUploadType("image");
				uploadService.save(uploadEntity);
				response.getWriter().print("{'url':'" + up.getUrl()+"',state:'"+up.getState()+"'}");
			}

		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	@RequestMapping("getRemoteImage")
	public void getRemoteImage(HttpServletRequest request, HttpServletResponse response) {

		try {
			String url = request.getParameter("upfile");
			String state = "远程图片抓取成功！";

			String filePath = "upload";
			String[] arr = url.split("ue_separate_ue");
			String[] outSrc = new String[arr.length];
			for(int i=0;i<arr.length;i++){

				//保存文件路径
				String savePath = DirectoryUtil.getStaticDir() + "/" + filePath;
				//格式验证
				String type = getFileType(arr[i]);
				if(type.equals("")){
					state = "图片类型不正确！";
					continue;
				}
				String saveName = Long.toString(new Date().getTime())+type;
				//大小验证
				HttpURLConnection.setFollowRedirects(false);
				HttpURLConnection   conn   = (HttpURLConnection) new URL(arr[i]).openConnection();
				if(conn.getContentType().indexOf("image")==-1){
					state = "请求地址头不正确";
					continue;
				}
				if(conn.getResponseCode() != 200){
					state = "请求地址不存在！";
					continue;
				}
				File dir = new File(savePath);
				if (!dir.exists()) {
					dir.mkdirs();
				}
				File savetoFile = new File(savePath +"/"+ saveName);
				outSrc[i]=filePath +"/"+ saveName;
				try {
					InputStream is = conn.getInputStream();
					OutputStream os = new FileOutputStream(savetoFile);
					int b;
					while ((b = is.read()) != -1) {
						os.write(b);
					}
					os.close();
					is.close();
					// 这里处理 inputStream
				} catch (Exception e) {
					e.printStackTrace();
					System.err.println("页面无法访问");
				}
			}
			String outstr = "";
			for(int i=0;i<outSrc.length;i++){
				outstr+=outSrc[i]+"ue_separate_ue";
			}
			outstr = outstr.substring(0,outstr.lastIndexOf("ue_separate_ue"));
			response.getWriter().print("{'url':'" + outstr + "','tip':'"+state+"','srcUrl':'" + url + "'}" );
		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	@RequestMapping("imageManager")
	public void imageManager(HttpServletResponse response) {
		try {

			String path = "upload";
			String imgStr = "";
			String realpath = DirectoryUtil.getStaticDir() + "/" + path;
			List<File> files = getFiles(realpath,new ArrayList());
			for(File file :files ){
				String filePath = file.getPath().replace("\\", "/");
				filePath = filePath.substring(filePath.indexOf("/upload/"));

				//imgStr += file.getPath().replace("\\", "/").replace(DirectoryUtil.getStaticDir(), "") + "ue_separate_ue";
				imgStr += filePath + "ue_separate_ue";
			}
			if(imgStr != ""){
				imgStr = imgStr.substring(0,imgStr.lastIndexOf("ue_separate_ue")).replace(File.separator, "/").trim();
			}
			response.getWriter().print(imgStr);
		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	@RequestMapping("getMovie")
	public void getMovie(HttpServletRequest request, HttpServletResponse response) {
		try {
			StringBuffer readOneLineBuff = new StringBuffer();
			String content ="";
			String searchkey = request.getParameter("searchKey");
			String videotype = request.getParameter("videoType");
			try {
				searchkey = URLEncoder.encode(searchkey, "utf-8");
				URL url = new URL("http://api.tudou.com/v3/gw?method=item.search&appKey=myKey&format=json&kw="+ searchkey+"&pageNo=1&pageSize=20&channelId="+videotype+"&inDays=7&media=v&sort=s");
				URLConnection conn = url.openConnection();
				BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(),"utf-8"));
				String line = "";
				while ((line = reader.readLine()) != null) {
					readOneLineBuff.append(line);
				}
				content = readOneLineBuff.toString();
				reader.close();
			} catch (MalformedURLException e) {
				e.printStackTrace();
			} catch (IOException e2) {
				e2.printStackTrace();
			}
			response.getWriter().print(content);
		} catch (Exception e) {
			CustomLogger.error(e, this);
		}
	}

	private List getFiles(String realpath, List files) {

		File realFile = new File(realpath);
		if (realFile.isDirectory()) {
			File[] subfiles = realFile.listFiles();
			for(File file :subfiles ){
				if(file.isDirectory()){
					getFiles(file.getAbsolutePath(),files);
				}else{
					if(!getFileType(file.getName()).equals("")) {
						files.add(file);
					}
				}
			}
		}
		return files;
	}

	private String getFileType(String fileName){
		String[] fileType = {".gif" , ".png" , ".jpg" , ".jpeg" , ".bmp"};
		Iterator<String> type = Arrays.asList(fileType).iterator();
		while(type.hasNext()){
			String t = type.next();
			if(fileName.endsWith(t)){
				return t;
			}
		}
		return "";
	}
}
