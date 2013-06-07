package com.byspace.ueditor.entity;

import com.byspace.ueditor.po.Uploader;
import net.sf.json.JSONObject;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-7
 * Time: 上午10:26
 */
@Entity
@Table(name = "ueditor_upload_entity")
public class UploadEntity {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "url")
	private String url;
	@Column(name = "file_type")
	private String fileType;
	@Column(name = "state")
	private String state;
	@Column(name = "original")
	private String original;
	@Column(name = "realPath")
	private String realPath;
	@Column(name = "size")
	private double size;

	@Column(name = "upload_type")
	private String uploadType;

	public static UploadEntity buildFormUploader(Uploader uploader) {
		UploadEntity uploadEntity = new UploadEntity();
		uploadEntity.setUrl(uploader.getUrl());
		uploadEntity.setFileType(uploadEntity.getFileType());
		uploadEntity.setState(uploadEntity.getState());
		uploadEntity.setOriginal(uploadEntity.getOriginal());
		uploadEntity.setRealPath(uploadEntity.getRealPath());
		uploadEntity.setSize(uploadEntity.getSize());

		return uploadEntity;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getFileType() {
		return fileType;
	}

	public void setFileType(String fileType) {
		this.fileType = fileType;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getOriginal() {
		return original;
	}

	public void setOriginal(String original) {
		this.original = original;
	}

	public String getRealPath() {
		return realPath;
	}

	public void setRealPath(String realPath) {
		this.realPath = realPath;
	}

	public double getSize() {
		return size;
	}

	public void setSize(double size) {
		this.size = size;
	}

	public String getUploadType() {
		return uploadType;
	}

	public void setUploadType(String uploadType) {
		this.uploadType = uploadType;
	}
}
