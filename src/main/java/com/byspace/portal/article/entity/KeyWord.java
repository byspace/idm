package com.byspace.portal.article.entity;

import javax.persistence.*;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 下午4:56
 */
@Entity
@Table(name = "ptl_article_keyword")
public class KeyWord {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "word")
	private String word;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getWord() {
		return word;
	}

	public void setWord(String word) {
		this.word = word;
	}
}
