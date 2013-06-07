package com.byspace.ueditor.service.impl;

import com.byspace.ueditor.entity.UploadEntity;
import com.byspace.ueditor.service.UploadService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-7
 * Time: 上午10:34
 */
@Service("uploadService")
@Transactional
public class UploadServiceImpl implements UploadService {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void save(UploadEntity uploadEntity) {
		if (uploadEntity.getId() == 0) {
			em.persist(uploadEntity);
		} else {
			em.merge(uploadEntity);
		}
	}
}
