<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/10
  Time: 上午10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>login</title>
</head>
<body>
<br/><br/>
<form name="form1" action="loginI" method="post">
    <table width="300" border="1" align="center">
        <tr>
            <td colspan="2">登入窗口</td>
        </tr>
        <tr>
            <td>用户名:</td>
            <td><input type="text" name="username"/>
                <%--name 与方法里面的形参名一致.--%>
            </td>
        </tr>
        <tr>
            <td>密码:</td>
            <td><input  type="password" name="password"/>
                <%--这里的type使用password,输入的字符就不会显示出来--%>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="submit" value="登录"/>
            </td>
        </tr>
    </table>
</form>

<form action="regist" method="post">
    <table width="300" border="1" align="center">
        <td colspan="2"><input type="submit" name="submit" value="注册"></td>
    </table>
</form>
</body>
</html>
