<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员管理</title>
    <link rel="stylesheet"  href="<c:url value='/static/css/materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>

<body>
	<main>
		<div class="container">
			<div class="section">
                <h2 class="header">会员列表</h2>
                <br>
                <div class="row">
                    <div class="col s12">
                        <table class="bordered">
                            <thead>
                                <tr>
                                    <th>Firstname</th>
                                    <th>Lastname</th>
                                    <th>Email</th>
                                    <th>SSO ID</th>
                                    <sec:authorize access="hasRole('ADMIN')">
                                        <th></th>
                                        <th></th>
                                    </sec:authorize>
                                </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${users}" var="user">
                                <tr>
                                    <td>${user.firstName}</td>
                                    <td>${user.lastName}</td>
                                    <td>${user.email}</td>
                                    <td>${user.ssoId}</td>
                                    <sec:authorize access="hasRole('ADMIN')">
                                        <td>
                                            <a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">修改</a>
                                        </td>
                                        <td>
                                            <a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">删除</a>
                                        </td>
                                    </sec:authorize>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
			</div>

            <div class="section">
                <sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">
                    <div class="well">
                        <a href="<c:url value='/newuser' />">Add New User</a>
                    </div>
                </sec:authorize>
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
		<%--<%@include file="authheader.jsp" %>	--%>
		<%--<div class="panel panel-default">--%>
			  <%--<!-- Default panel contents -->--%>
		  	<%--<div class="panel-heading"><span class="lead">List of Users </span></div>--%>
			<%--<table class="table table-hover">--%>
	    		<%--<thead>--%>
		      		<%--<tr>--%>
				        <%--<th>Firstname</th>--%>
				        <%--<th>Lastname</th>--%>
				        <%--<th>Email</th>--%>
				        <%--<th>SSO ID</th>--%>
				        <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AREA')">--%>
				        	<%--<th width="100"></th>--%>
				        <%--</sec:authorize>--%>
				        <%--<sec:authorize access="hasRole('ADMIN')">--%>
				        	<%--<th width="100"></th>--%>
				        <%--</sec:authorize>--%>
				        <%----%>
					<%--</tr>--%>
		    	<%--</thead>--%>
	    		<%--<tbody>--%>
				<%--<c:forEach items="${users}" var="user">--%>
					<%--<tr>--%>
						<%--<td>${user.firstName}</td>--%>
						<%--<td>${user.lastName}</td>--%>
						<%--<td>${user.email}</td>--%>
						<%--<td>${user.ssoId}</td>--%>
					    <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">--%>
							<%--<td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>--%>
				        <%--</sec:authorize>--%>
				        <%--<sec:authorize access="hasRole('ADMIN')">--%>
							<%--<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>--%>
        				<%--</sec:authorize>--%>
					<%--</tr>--%>
				<%--</c:forEach>--%>
	    		<%--</tbody>--%>
	    	<%--</table>--%>
		<%--</div>--%>
		<%--<sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">--%>
		 	<%--<div class="well">--%>
		 		<%--<a href="<c:url value='/newuser' />">Add New User</a>--%>
		 	<%--</div>--%>
	 	<%--</sec:authorize>--%>
   	<%--</div>--%>
</body>
</html>