package com.byspace.common.po;

/**
 * Created with IntelliJ IDEA.
 * User: Yangxu
 * Date: 13-6-5
 * Time: 上午10:05
 */
public class JsonResult {

	private boolean result;
	private String message;

	public static JsonResult success(String message) {
		JsonResult jsonResult = new JsonResult();
		jsonResult.setResult(true);
		jsonResult.setMessage(message);

		return jsonResult;
	}

	public static JsonResult fail(String message) {
		JsonResult jsonResult = new JsonResult();
		jsonResult.setResult(false);
		jsonResult.setMessage(message);

		return jsonResult;
	}

	public boolean isResult() {
		return result;
	}

	public void setResult(boolean result) {
		this.result = result;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}
