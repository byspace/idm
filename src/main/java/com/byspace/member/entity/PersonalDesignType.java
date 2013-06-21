package com.byspace.member.entity;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午5:38
 */
public class PersonalDesignType implements Comparable<PersonalDesignType> {

	private int id;
	private String code;
	private String name;

	@Override
	public int compareTo(PersonalDesignType personalDesignType) {

		if (this.id > personalDesignType.getId()) {
			return 1;
		} else if (this.id < personalDesignType.getId()) {
			return -1;
		}

		if (this.id == 0 && personalDesignType.getId() == 0) {
			return 1;
		}

		return 0;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
