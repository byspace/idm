package com.byspace.secutiry.service.impl;

import com.byspace.secutiry.service.UserService;
import com.byspace.secutiry.service.entity.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-17
 * Time: 下午3:14
 */
@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@PersistenceContext
	private EntityManager em;

	@Override
	@Transactional(readOnly = true)
	public User getUserByName(String username) {

		List<User> users = em.createQuery("select u from User u where u.username=:username").setParameter("username", username).getResultList();
		if (users != null && users.size() > 0) {
			return users.get(0);
		}

		return null;
	}
}
