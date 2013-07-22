package com.byspace.member.service;

import com.byspace.member.entity.Member;
import com.byspace.member.entity.PersonalPost;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-18
 * Time: 下午3:54
 */
public interface PersonalPostService {

	public List<PersonalPost> getPersonalPostList(Member member);

	public PersonalPost readPersonalPost(int id);

	public void savePersonalPost(PersonalPost personalPost);

}
