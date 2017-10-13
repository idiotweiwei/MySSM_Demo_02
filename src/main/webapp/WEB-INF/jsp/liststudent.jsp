<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/10
  Time: 上午11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="u" %>
<html>
<head>
    <title>liststudent</title>
</head>
<body>
<div style="width:500px;margin:0px auto;text-align:center">
    <table align='center' border='1' cellspacing='0' width='150%'>
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
            <%--<td>更新时间</td>--%>
            <td>编辑</td>
            <td>删除</td>
        </tr>
        <u:forEach items="${cs}" var="s" varStatus="st">
            <tr>
                <td>${s.id}</td>
                <td>${s.stuname}</td>
                <td>${s.stuqq}</td>
                <td>${s.stutype}</td>
                <td>${s.stucreate}</td>
                <td>${s.stuschool}</td>
                <td>${s.stuid}</td>
                <td>${s.stupromise}</td>
                <td>${s.stusenior}</td>
                <td>${s.studaily}</td>
                <%--<td>${s.stutime}</td>--%>
                <td><a href="update?id=${s.id}">编辑</a></td>
                <td><a href="deleteStudent?id=${s.id}">删除</a></td>
            </tr>
        </u:forEach>
    </table>
    <div style="text-align:center">
        <a href="?start=0">首  页</a>
        <a href="?start=${page.start-page.count}">上一页</a>
        <a href="?start=${page.start+page.count}">下一页</a>
        <a href="?start=${page.last}">末  页</a>
    </div>


    <div style="text-align:center;margin-top:40px">

        <form method="get" action="addone">
            <input type="submit" value="增加">
        </form>
    </div>
    <div style="text-align:center;margin-top:40px">

        <form method="get" action="/search/{id}">
            <input type="submit" value="搜索">
        </form>
    </div>
</div>
</body>
</html>