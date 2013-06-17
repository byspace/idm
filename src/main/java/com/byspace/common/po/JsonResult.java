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

	public static JsonResult saveSuccess() {
		return success("保存成功");
	}

	public static JsonResult saveFail() {
		return fail("保存失败");
	}

	public static JsonResult deleteSuccess() {
		return success("删除成功");
	}

	public static JsonResult deleteFail() {
		return fail("删除失败");
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
