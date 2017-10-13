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
    <title>editStudent</title>
</head>
<body>
    <div style="width: 500px;margin: 0px auto;text-align: center">
        <div style="text-align: center;margin-top: 40px;">
            <form method="post" action="/updateStudent">
                <div>姓名：<br/><input name="stuname" value="${s.stuname}" type="text"></div>
                <div>QQ号：<br/><input name="stuqq" value="${s.stuqq}" type="text"></div>
                <div>修真类型：<br/><input name="stutype" value="${s.stutype}" type="text"></div>
                <div>入学时间：<br/><input name="stucreate" value="${s.stucreate}" type="text"></div>
                <div>毕业院校：<br/><input name="stuschool" value="${s.stuschool}" type="text"></div>
                <div>学号：<br/><input name="stuid" value="${s.stuid}" type="text"></div>
                <div>立愿：<br/><input name="stupromise" value="${s.stupromise}" type="text"></div>
                <div>辅导师兄：<br/><input name="stusenior" value="${s.stusenior}" type="text"></div>
                <div>日报：<br/><input name="studaily" value="${s.studaily}" type="text"></div>
                <%--<div>更新时间：<br/><input name="stutime" value="${s.stutime}" type="text"></div>--%>
                <input type="hidden" value="${s.id}" name="id">
                <%--隐藏id但是一定要写因为需要根据id修改--%>
                <%--name代表属性名，value代表属性值--%>
                <input type="submit" value="修改">
            </form>
        </div>
    </div>
</body>
</html>
