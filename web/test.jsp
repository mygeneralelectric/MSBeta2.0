<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>泰允升网络科技有限公司</title>
    <%--<link href="static/css/material-icons.css" rel="stylesheet">--%>
    <%--<link href="static/css/ms-materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>--%>
    <%--<link href="static/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>--%>

    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection">
    <link rel="stylesheet" href="<c:url value='/static/css/ms-materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>
<body>
<header>
    <nav class="top-nav blue lighten-1">
        <div class="container">
            <div class="nav-wrapper"><a class="page-title">泰允升</a></div>
        </div>
    </nav>

    <div class="container">
        <a href="#" data-activates="nav-mobile" class="button-collapse top-nav full hide-on-large-only"><i class="material-icons">menu</i></a>
    </div>

    <ul id="nav-mobile" class="side-nav fixed" style="overflow-x: hidden;overflow-y: hidden;">
        <li>
            <div class="userView">
                <img class="background" src="image/index/office.jpg">
                <a href="#"><img class="circle" src="image/index/office.jpg"></a>
                <a href="#"><span class="white-text name-info">admin01</span></a>
                <a href="#"><span class="white-text type-info">欢迎，你的身份是管理员</span></a>
            </div>
        </li>
        <li>
            <div class="card center" style="margin:5px;">
                <a href="#">退出登录</a>
            </div>
        </li>
        <li class="bold"><a href="about.html" class="waves-effect waves-teal">会员信息</a></li>
        <li class="bold"><a href="about.html" class="waves-effect waves-teal">会员管理</a></li>
    </ul>
</header>

<main>
    <div class="container">

        <input placeholder="Placeholder" id="first_name" type="text" class="validate">
        <label for="first_name">First Name</label>

        <div class="section">
            <h2 class="header">会员信息</h2>
            <c:if test="${not empty users}">
                <p>name : ${users.name}</p>
                <p>lastName : ${users.lastName}</p>
                <p>phone : ${users.phone}</p>
                <p>ssoId : ${users.ssoId}</p>
            </c:if>
            <a  href="<c:url value='/change-passwd-${users.ssoId}' />" class="waves-effect waves-light btn"><i class="material-icons left">edit</i>修改密码</a>
        </div>
    </div>
</main>

<footer>
    <div class="footer-copyright">
        <div class="container center">
            Copyright © Han Cheng Insurance Agent Jiang Men Fen Gong Si All Rights Reserved.
        </div>
    </div>
</footer>

<script src="static/js/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>
