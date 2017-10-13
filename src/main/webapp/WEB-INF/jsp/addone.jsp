<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <title>addone</title>
</head>
<body>

<div class="from-group">
    <h1>添加信息</h1>
    <hr/>
    <%--id：作为标签的唯一标识。--%>
    <%--name：作为可与服务器交互数据的标示。--%>
    <form:form action="/addInto" method="post" reole="form">
        <div class="from-group">
            <label for="stuname">姓名</label>
            <input type="text" id="stuname" name="stuname" placeholder="请输入姓名：">
        </div>
        <div class="from-group">
            <label for="stuqq">QQ号</label>
            <input type="text" id="stuqq" name="stuqq" placeholder="请输入QQ号：">
        </div>
        <div class="from-group">
            <label for="stutype">修真类型</label>
            <input type="text" id="stutype" name="stutype" placeholder="请输入修真类型：">
        </div>
        <div class="from-group">
            <label for="stucreate">入学时间</label>
            <input type="text" id="stucreate" name="stucreate" placeholder="请输入入学时间：">
        </div>
        <div class="from-group">
            <label for="stuschool">毕业院校</label>
            <input type="text" id="stuschool" name="stuschool" placeholder="请输入毕业院校：">
        </div>
        <div class="from-group">
            <label for="stuid">学号</label>
            <input type="text" id="stuid" name="stuid" placeholder="请输入学号：">
        </div>
        <div class="from-group">
            <label for="stupromise">立愿</label>
            <input type="text" id="stupromise" name="stupromise" placeholder="请输入立愿：">
        </div>
        <div class="from-group">
            <label for="stusenior">辅导师兄</label>
            <input type="text" id="stusenior" name="stusenior" placeholder="请输入辅导师兄：">
        </div>
        <div class="from-group">
            <label for="studaily">日报</label>
            <input type="text" id="studaily" name="studaily" placeholder="请输入日报：">
        </div>
        <%--<div class="from-group">--%>
            <%--<label for="stutime">更新时间</label>--%>
            <%--<input type="text" id="stutime" name="stutime" placeholder="请输入更新时间：">--%>
        <%--</div>--%>
        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">增加</button>
        </div>
    </form:form>
</div>
</body>
</html>