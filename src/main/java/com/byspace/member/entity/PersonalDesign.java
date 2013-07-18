package com.byspace.member.entity;

import javax.persistence.*;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-17
 * Time: 上午9:34
 */
@Entity
@Table(name = "mem_personal_design")
public class PersonalDesign {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "title")
	private String title;
	@Column(name = "summary")
	@Lob
	private String summary;
	@Column(name = "type")
	private String type;
	@Column(name = "content")
	@Lob
	private String content;
	@Column(name = "title_image")
	private String titleImage;
	@Column(name = "create_date")
	private Date createDate;
	@OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Member author;
	@Column(name = "best_work")
	private String bestWork;

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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitleImage() {
		return titleImage;
	}

	public void setTitleImage(String titleImage) {
		this.titleImage = titleImage;
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

	public String getBestWork() {
		return bestWork;
	}

	public void setBestWork(String bestWork) {
		this.bestWork = bestWork;
	}
}
