package com.byspace.secutiry.service;

import com.byspace.secutiry.service.entity.User;

import java.lang.String;

/**
 * description:
 * User: yangxu103016
 * Date: 12-12-17
 * Time: 下午3:13
 */
public interface UserService {

	public User getUserByName(String username);
}
