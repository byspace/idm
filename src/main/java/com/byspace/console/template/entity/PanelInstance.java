package com.byspace.console.template.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-17
 * Time: 上午10:26
 */
@Entity
@Table(name = "tpl_panel_instance")
public class PanelInstance {

	@Id
	@GeneratedValue
	private int id;
	@Column(name = "code")
	private String code;
	@Column(name = "title")
	private String title;
	@Column(name = "more_link")
	private String moreLink;

	@ManyToOne(cascade = CascadeType.REFRESH)
	private PanelTemplate panelTemplate;
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<ViewItemFilter> viewItemFilterList = new ArrayList<ViewItemFilter>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMoreLink() {
		return moreLink;
	}

	public void setMoreLink(String moreLink) {
		this.moreLink = moreLink;
	}

	public PanelTemplate getPanelTemplate() {
		return panelTemplate;
	}

	public void setPanelTemplate(PanelTemplate panelTemplate) {
		this.panelTemplate = panelTemplate;
	}

	public List<ViewItemFilter> getViewItemFilterList() {
		return viewItemFilterList;
	}

	public void setViewItemFilterList(List<ViewItemFilter> viewItemFilterList) {
		this.viewItemFilterList = viewItemFilterList;
	}
}
