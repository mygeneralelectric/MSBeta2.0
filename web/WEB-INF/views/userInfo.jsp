<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
    <title>UserInfo</title>

    <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
    <link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
</head>
<body>
    <div class="generic-container">
        <%@include file="authheader.jsp" %>
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead">UserInfo</span></div>
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Firstname</th>
                    <th>Lastname</th>
                    <th>Email</th>
                    <th>SSO ID</th>
                    <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                        <th width="100"></th>
                    </sec:authorize>
                    <sec:authorize access="hasRole('ADMIN')">
                        <th width="100"></th>
                    </sec:authorize>

                </tr>
                </thead>
                <tbody>
                    <c:if test="${not empty users}">
                    <tr>
                        <td>${users.firstName}</td>
                        <td>${users.lastName}</td>
                        <td>${users.email}</td>
                        <td>${users.ssoId}</td>
                        <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                            <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                        </sec:authorize>
                        <%--<sec:authorize access="hasRole('ADMIN')">--%>
                            <%--<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>--%>
                        <%--</sec:authorize>--%>
                    </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
        <sec:authorize access="hasRole('ADMIN')">
            <div class="well">
                <a href="<c:url value='/newuser' />">Add New User</a>
            </div>
        </sec:authorize>

        <div class="well">
            <a href="<c:url value='/list' />">UserList</a>
        </div>
    </div>
</body>
</html>
