package com.byspace.member.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-7-19
 * Time: 上午10:52
 */
@Entity
@Table(name = "ptl_comment")
public class Comment {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "message")
	@Lob
	private String message;
	@Column(name = "date")
	private Date date;
	@OneToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)
	private Member author;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Comment> relaySet = new ArrayList<Comment>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Member getAuthor() {
		return author;
	}

	public void setAuthor(Member author) {
		this.author = author;
	}

	public List<Comment> getRelaySet() {
		return relaySet;
	}

	public void setRelaySet(List<Comment> relaySet) {
		this.relaySet = relaySet;
	}
}
