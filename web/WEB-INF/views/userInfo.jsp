<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员信息</title>
    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection">
    <link rel="stylesheet"  href="<c:url value='/static/css/materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>
<body>
    <main>
        <div class="container">
            <div class="section">
                <h2 class="header">会员信息</h2>
                <c:if test="${not empty users}">
                    <p>firstName : ${users.firstName}</p>
                    <p>lastName : ${users.lastName}</p>
                    <p>email : ${users.email}</p>
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


    <%--<div class="generic-container">--%>
        <%--<%@include file="authheader.jsp" %>--%>
        <%--<div class="panel panel-default">--%>
            <%--<!-- Default panel contents -->--%>
            <%--<div class="panel-heading"><span class="lead">UserInfo</span></div>--%>
            <%--<table class="table table-hover">--%>
                <%--<thead>--%>
                <%--<tr>--%>
                    <%--<th>Firstname</th>--%>
                    <%--<th>Lastname</th>--%>
                    <%--<th>Email</th>--%>
                    <%--<th>SSO ID</th>--%>
                    <%--&lt;%&ndash;<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th width="100"></th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<th width="100"></th>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>

                <%--</tr>--%>
                <%--</thead>--%>
                <%--<tbody>--%>
                    <%--<c:if test="${not empty users}">--%>
                    <%--<tr>--%>
                        <%--<td>${users.firstName}</td>--%>
                        <%--<td>${users.lastName}</td>--%>
                        <%--<td>${users.email}</td>--%>
                        <%--<td>${users.ssoId}</td>--%>
                        <%--&lt;%&ndash;<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><a href="<c:url value='/edit-user-${users.ssoId}' />" class="btn btn-success custom-width">edit</a></td>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
                        <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">--%>
                            <%--<td><a href="<c:url value='/edit-user-${users.ssoId}' />" class="btn btn-success custom-width">edit</a></td>--%>
                        <%--</sec:authorize>--%>
                        <%--&lt;%&ndash;<sec:authorize access="hasRole('ADMIN')">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
                    <%--</tr>--%>
                    <%--</c:if>--%>
                <%--</tbody>--%>
            <%--</table>--%>
        <%--</div>--%>

        <%--<div class="well">--%>
            <%--<a href="<c:url value='/change-passwd-${users.ssoId}' />" class="btn btn-success custom-width">edit</a>--%>
        <%--</div>--%>

        <%--<sec:authorize access="hasRole('AREA') or hasRole('GROUP')">--%>
            <%--<div class="well">--%>
                <%--<a href="<c:url value='/list' />">UserList</a>--%>
            <%--</div>--%>
        <%--</sec:authorize>--%>

        <%--<sec:authorize access="hasRole('ADMIN')">--%>
            <%--<div class="well">--%>
                <%--<a href="<c:url value='/all-list' />">UserList</a>--%>
            <%--</div>--%>
        <%--</sec:authorize>--%>


    </div>
</body>
</html>
