<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/10
  Time: 上午10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>regist</title>
</head>
<body>
<h1>添加信息</h1>
<form id="form2" action="/registInto" method="post">
    <div class="form-group">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" placeholder="请输入用户名"/>
    </div>
    <div class="form-group">
        <label for="password">密码 :</label>
        <input type="text" id="password" name="password" placeholder="请输入密码" />
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-sm btn-success">注册</button>
    </div>
</form>
</body>
</html>




<%--注册窗口，和登录界面有点相似--%>