package com.byspace.ueditor.service;

import com.byspace.ueditor.entity.UploadEntity;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-7
 * Time: 上午10:33
 */
public interface UploadService {

	/**
	 * save upload file info
	 * @param uploadEntity
	 */
	public void save(UploadEntity uploadEntity);
}
