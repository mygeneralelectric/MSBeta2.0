<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>修改密码</title>
    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection">
    <link rel="stylesheet" href="<c:url value='/static/css/ms-materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
    </head>
</head>
<body>
    <%@include file="header.jsp"%>

    <main>
        <div class="container">
            <div class="section">

                <h5>会员信息</h5>
                <form:form method="POST" modelAttribute="user">

                    <div class="row">
                        <div class="input-field col s12 m6">
                            <form:input placeholder="请输入原来的密码" type="password" path="oldPassword" id="oldPassword" class="validate" />
                            <label for="oldPassword">旧密码</label>
                        </div>

                        <div class="col s12 m6">
                            <form:errors path="oldPassword" class="help-inline"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12 m6">
                            <form:input placeholder="请输入新密码" type="password" path="password" id="password" class="validate" />
                            <label for="password">新密码</label>
                        </div>

                        <div class="col s12 m6">
                            <form:errors path="password" class="help-inline"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col s12 m6">
                            <form:input placeholder="请再次输入你的新密码" type="password" path="retypePassword" id="retypePassword" class="validate" />
                            <label for="retypePassword">确认密码</label>
                        </div>

                        <div class="col s12 m6">
                            <form:errors path="retypePassword" class="help-inline"/>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col s12 m12">
                            <button  type="submit" class="waves-effect waves-light btn"><i class="material-icons left">edit</i>更新密码</button> or <a href="<c:url value='/info' />">取消</a>
                        </div>
                    </div>

                    </div>

                </form:form>

            </div>
        </div>
    </main>

    <footer>
        <div class="footer-copyright">
            <div class="container center">
                版权所有 © 泰允升网络科技有限公司
            </div>
        </div>
    </footer>

    <script src="static/js/jquery-2.1.1.min.js"></script>
    <script src="static/js/materialize.js"></script>
    <script src="static/js/init.js"></script>

</body>
</body>
</html>
