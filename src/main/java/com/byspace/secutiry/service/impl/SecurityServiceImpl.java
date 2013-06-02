package com.byspace.secutiry.service.impl;

import com.byspace.secutiry.service.SecurityService;
import com.byspace.secutiry.service.UserService;
import com.byspace.secutiry.service.entity.User;
import com.byspace.util.CustomLogger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-17
 * Time: 下午2:08
 */
@Service("securityService")
@Transactional
public class SecurityServiceImpl implements SecurityService, UserDetailsService {

	@PersistenceContext
	private EntityManager em;
	@Autowired
	private UserService userService;

	@Override
	@Transactional(readOnly = true)
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		UserDetails userDetails = null;

		List<User> users = em.createQuery("select u from User u where u.username=:username").setParameter("username", username).getResultList();
		if (users != null && users.size() > 0) {
			userDetails = users.get(0);
		}

		if (userDetails != null) {
			String authorities = "";
			for (GrantedAuthority grantedAuthority : userDetails.getAuthorities()) {
				authorities += grantedAuthority.getAuthority() + ",";
			}
			CustomLogger.info("user : " + userDetails.getUsername() + " accessed at " + "" + " with roles :" + userDetails.getAuthorities(), this);
		} else {
			CustomLogger.info("can't find user : " + username, this);
		}



		return userDetails;
	}

	@Override
	@Transactional(readOnly = true)
	public User getCurrintUser() {

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		String username;
		if (principal instanceof UserDetails) {
			username = ((UserDetails)principal).getUsername();
		} else {
			username = principal.toString();
		}

		return userService.getUserByName(username);
	}
}
