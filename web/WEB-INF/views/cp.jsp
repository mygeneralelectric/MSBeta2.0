<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员信息</title>
    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection">
    <link rel="stylesheet"  href="<c:url value='/static/css/ghpages-materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
    </head>
</head>
<body>
    <%@include file="header.jsp"%>

    <main>
        <div class="container">
            <div class="section">
                <h2 class="header">会员信息</h2>
                <form:form method="POST" modelAttribute="user">
                    <div class="input-field">
                        <%--<input placeholder="********" id="first_name" type="password" class="validate">--%>
                        <%--<label for="first_name">First Name</label>--%>
                        <form:input type="password" path="password" id="password" class="validate" />
                        <label for="password">First Name</label>
                        <div class="has-error">
                            <form:errors path="password" class="help-inline"/>
                        </div>
                    </div>
                </form:form>

                <div class="row">

                        <c:choose>
                            <c:when test="${edit}">
                                <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                            </c:otherwise>
                        </c:choose>
                    </div>

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


    <%--<div class="generic-container">--%>
        <%--<%@include file="authheader.jsp" %>--%>

        <%--<div class="well lead">chang passwd</div>--%>
        <%--<form:form method="POST" modelAttribute="user" class="form-horizontal">--%>
            <%--<div class="row">--%>
                <%--<div class="form-group col-md-12">--%>
                    <%--<label class="col-md-3 control-lable" for="password">Password</label>--%>
                    <%--<div class="col-md-7">--%>
                        <%--<form:input type="password" path="password" id="password" class="form-control input-sm" />--%>
                        <%--<div class="has-error">--%>
                            <%--<form:errors path="password" class="help-inline"/>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="row">--%>
                <%--<div class="form-actions floatRight">--%>
                    <%--<c:choose>--%>
                        <%--<c:when test="${edit}">--%>
                            <%--<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>--%>
                        <%--</c:when>--%>
                        <%--<c:otherwise>--%>
                            <%--<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>--%>
                        <%--</c:otherwise>--%>
                    <%--</c:choose>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</form:form>--%>
    <%--</div>--%>
</body>
</body>
</html>
