<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员登录</title>
    <link rel="stylesheet"  href="<c:url value='/static/css/reset.css' />" />
    <link rel="stylesheet"  href="<c:url value='/static/css/loginStyle.css' />" />
</head>

<body>
<div class="container">
    <div class="card"></div>
    <div class="card">
        <h1 class="title">登录</h1>
        <c:url var="loginUrl" value="/login" />
        <form action="${loginUrl}" method="post">
            <div class="input-container">
                <input type="text" id="username" name="ssoId" required="required"/>
                <label for="Username">用户名</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="password" name="password" required="required"/>
                <label for="Password">密码</label>
                <div class="bar"></div>
            </div>
            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
            <div class="button-container">
                <button type="submit"><span>登陆</span></button>
            </div>
            <div class="footer"><a href="#">Forgot your password?</a></div>
        </form>
    </div>
    <div class="card alt">
        <div class="toggle"></div>
        <h1 class="title">Register
            <div class="close"></div>
        </h1>
        <form>
            <div class="input-container">
                <input type="text" id="Username" required="required"/>
                <label for="Username">Username</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="Password" required="required"/>
                <label for="Password">Password</label>
                <div class="bar"></div>
            </div>
            <div class="input-container">
                <input type="password" id="Repeat Password" required="required"/>
                <label for="Repeat Password">Repeat Password</label>
                <div class="bar"></div>
            </div>
            <div class="button-container">
                <button><span>Next</span></button>
            </div>
        </form>
    </div>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="js/login.js"></script>

<%--<div id="mainWrapper">--%>
    <%--<div class="login-container">--%>
        <%--<div class="login-card">--%>
            <%--<div class="login-form">--%>
                <%--<c:url var="loginUrl" value="/login" />--%>
                <%--<form action="${loginUrl}" method="post" class="form-horizontal">--%>
                    <%--<c:if test="${param.error != null}">--%>
                        <%--<div class="alert alert-danger">--%>
                            <%--<p>Invalid username and password.</p>--%>
                        <%--</div>--%>
                    <%--</c:if>--%>
                    <%--<c:if test="${param.logout != null}">--%>
                        <%--<div class="alert alert-success">--%>
                            <%--<p>You have been logged out successfully.</p>--%>
                        <%--</div>--%>
                    <%--</c:if>--%>
                    <%--<div class="input-group input-sm">--%>
                        <%--<label class="input-group-addon" for="username"><i class="fa fa-user"></i></label>--%>
                        <%--<input type="text" class="form-control" id="username" name="ssoId" placeholder="Enter Username" required>--%>
                    <%--</div>--%>
                    <%--<div class="input-group input-sm">--%>
                        <%--<label class="input-group-addon" for="password"><i class="fa fa-lock"></i></label>--%>
                        <%--<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>--%>
                    <%--</div>--%>
                    <%--<div class="input-group input-sm">--%>
                        <%--<div class="checkbox">--%>
                            <%--<label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />--%>

                    <%--<div class="form-actions">--%>
                        <%--<input type="submit"--%>
                               <%--class="btn btn-block btn-primary btn-default" value="Log in">--%>
                    <%--</div>--%>
                <%--</form>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</div>--%>
<%--</div>--%>

</body>
</html>