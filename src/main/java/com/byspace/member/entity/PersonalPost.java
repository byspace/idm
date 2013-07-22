package com.byspace.member.entity;

import org.springframework.web.bind.annotation.RequestMapping;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-18
 * Time: 下午3:36
 */
@Entity
@Table(name = "mem_personal_post")
public class PersonalPost {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "title")
	private String title;
	@Column(name = "summary")
	@Lob
	private String summary;
	@Column(name = "content")
	@Lob
	private String content;
	@Column(name = "crate_date")
	private Date createDate;
	@OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Member author;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Member getAuthor() {
		return author;
	}

	public void setAuthor(Member author) {
		this.author = author;
	}
}
