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
                    <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">--%>
                        <%--<th width="100"></th>--%>
                    <%--</sec:authorize>--%>
                    <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">--%>
                        <%--<th width="100"></th>--%>
                    <%--</sec:authorize>--%>

                </tr>
                </thead>
                <tbody>
                    <c:if test="${not empty users}">
                    <tr>
                        <td>${users.firstName}</td>
                        <td>${users.lastName}</td>
                        <td>${users.email}</td>
                        <td>${users.ssoId}</td>
                        <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AERA') or hasRole('GROUP') or hasRole('REGULAR')">--%>
                            <%--<td><a href="<c:url value='/edit-user-${users.ssoId}' />" class="btn btn-success custom-width">edit</a></td>--%>
                            <%--</sec:authorize>--%>
                        <sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">
                            <td><a href="<c:url value='/edit-user-${users.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                        </sec:authorize>
                        <%--<sec:authorize access="hasRole('ADMIN')">--%>
                            <%--<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>--%>
                        <%--</sec:authorize>--%>
                    </tr>
                    </c:if>
                </tbody>
            </table>
        </div>

        <%--<div class="well">--%>
            <%--<a href="<c:url value='/change-passwd' />">change-passwd</a>--%>
        <%--</div>--%>

        <sec:authorize access="hasRole('AREA') or hasRole('GROUP')">
            <div class="well">
                <a href="<c:url value='/list' />">UserList</a>
            </div>
        </sec:authorize>

        <sec:authorize access="hasRole('ADMIN')">
            <div class="well">
                <a href="<c:url value='/all-list' />">UserList</a>
            </div>
        </sec:authorize>


    </div>
</body>
</html>
