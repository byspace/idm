package com.byspace.member.po;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-21
 * Time: 下午3:45
 */
public class SecurityCode {

	private String code;
	private Date createDate;
	private double timeoutSeconds;

	public boolean isTimeOut() {
		long create = createDate.getTime();
		long now = new Date().getTime();

		return (now - create) > timeoutSeconds * 1000;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public double getTimeoutSeconds() {
		return timeoutSeconds;
	}

	public void setTimeoutSeconds(double timeoutSeconds) {
		this.timeoutSeconds = timeoutSeconds;
	}
}
