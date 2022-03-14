<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--
  Created by IntelliJ IDEA.
  User: t-bli
  Date: 2022/03/13
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<% String path = request.getContextPath(); %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>

<html>
<head>
    <title>ユーザー登録</title>
</head>
<body>
<h1>ユーザー登録</h1>
<c:if test="${messages != ''}">
    <p style="color: red">${messages}</p>
</c:if>
<form id="user-form" action="<%=path%>/loginServlet" method="get">
    <input id="userid" type="text" name="userid" value="${userid}" placeholder="IDを入力してください。"><br>
    <input id="password" type="password" name="password" placeholder="パスワードを入力してください。"><br>
    <button id="btn" type="button" onclick="loginBtnOnclick();">Login</button>
</form>
<script>
    function loginBtnOnclick() {
        let userid = document.getElementById('userid').value;
        let password = document.getElementById('password').value;
        if (userid == '') {
            alert("ユーザーIDを入力してください。");
            return;
        }
        if (password == '') {
            alert("ユーザーパスワードを入力してください。");
            return;
        }
        document.getElementById('user-form').submit();
    }
</script>
</body>
</html>


