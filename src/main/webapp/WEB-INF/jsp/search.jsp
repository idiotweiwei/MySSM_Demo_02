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
    <title>search</title>
</head>
<body>
<form action="/search/{id}" method="put"></form>
<h1>search</h1>
<table width="60%" border=1px  cellpadding="0" cellspacing="0">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>QQ号</td>
        <td>修真类型</td>
        <td>入学时间</td>
        <td>毕业院校</td>
        <td>学号</td>
        <td>立愿</td>
        <td>辅导师兄</td>
        <td>日报</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>

    <tr>
        <td>${ss.id}</td>
        <td>${ss.stuname}</td>
        <td>${ss.stuqq}</td>
        <td>${ss.stutype}</td>
        <td>${ss.stucreate}</td>
        <td>${ss.stuschool}</td>
        <td>${ss.stuid}</td>
        <td>${ss.stupromise}</td>
        <td>${ss.stusenior}</td>
        <td>${ss.studaily}</td>
        <td><a href="update?id=${ss.id}">编辑</a></td>
        <td><a href="deleteStudent?id=${ss.id}">删除</a></td>
    </tr>
    <%--输入id<input  type="text" name="${ss.id}"/>--%>
    <%--<input type="submit" name="submit" value="搜索"/>--%>



</table>
</body>
</html>
