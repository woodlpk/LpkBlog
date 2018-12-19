<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link href="<%=request.getContextPath()%>/assets/css/login.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="login">
    <div class="message">Login to your account</div>
    <div id="darkbannerwrap"></div>

    <form method="post" action="/user/login">
        <input name="action" value="login" type="hidden">
        <input name="userName" placeholder="User Name" required="" type="text">
        <hr class="hr15">
        <input name="userPass" placeholder="Password" required="" type="password">
        <hr class="hr15">
        <input value="Login" style="width:100%;" type="submit">
        <hr class="hr20">
        <P><c:out value="${message }" /></P>
    </form>

</div>


</body>
</html>