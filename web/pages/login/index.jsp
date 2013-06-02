<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../common/head.jsp" %>

<div id="loginPanel" class="easyui-panel" title="Login" style="width:500px;height:200px;padding:10px;">
    <form id="loginForm" name="loginForm">
        <table>
            <tr>
                <td>用户名：</td>
                <td>
                    <input class="easyui-validatebox" type="text" name="userName" data-options="required:true" />
                </td>
            </tr>
            <tr>
                <td>密码：</td>
                <td>
                    <input  type="password" name="password" />
                </td>
            </tr>
        </table>
    </form>

    <div style="text-align:center;padding:5px">
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
    </div>

</div>
</body>
</html>