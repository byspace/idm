package com.byspace.member.service.impl;

import com.byspace.member.entity.Comment;
import com.byspace.member.entity.Member;
import com.byspace.member.service.CommentService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-22
 * Time: 上午10:53
 */
@Service("commentService")
@Transactional
public class CommentServiceImpl implements CommentService {

	@PersistenceContext
	private EntityManager em;

	@Override
	public void saveComment(Comment comment) {
		if (comment.getId() == 0) {
			em.persist(comment);
		} else {
			em.merge(comment);
		}
	}
}
