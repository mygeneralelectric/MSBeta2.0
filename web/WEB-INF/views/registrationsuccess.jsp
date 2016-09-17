<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>--%>
<%--<%@ page isELIgnored="false" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>--%>
<%--<html>--%>
<%--<head>--%>
	<%--<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">--%>
	<%--<title>Registration Confirmation Page</title>--%>
	<%--<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />--%>
	<%--<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />--%>
<%--</head>--%>
<%--<body>--%>
		<%--<%@include file="authheader.jsp" %>--%>
		<%----%>
		<%--<div class="alert alert-success lead">--%>
	    	<%--${success}--%>
		<%--</div>--%>
		<%----%>
		<%--&lt;%&ndash;<span class="well floatRight">&ndash;%&gt;--%>
			<%--&lt;%&ndash;Go to <a href="<c:url value='/list' />">Users List</a>&ndash;%&gt;--%>
		<%--&lt;%&ndash;</span>&ndash;%&gt;--%>

		<%--<sec:authorize access="hasRole('AREA') or hasRole('GROUP')">--%>
			<%--<span class="well floatRight">--%>
			<%--Go to <a href="<c:url value='/list' />">Users List</a>--%>
		<%--</span>--%>
		<%--</sec:authorize>--%>

		<%--<sec:authorize access="hasRole('ADMIN')">--%>
			<%--<span class="well floatRight">--%>
			<%--Go to <a href="<c:url value='/all-list' />">Users List</a>--%>
		<%--</span>--%>
		<%--</sec:authorize>--%>

<%--</body>--%>

<%--</html>--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
	<title>完成</title>
	<link rel="stylesheet" href="<c:url value='/static/css/materialize.css' />" media="screen,projection" />
	<link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>
<body>

<main>
	<div class="container">
		<div class="section">

			<div class="row" style="padding-top: 15%;">
				<div class="card" style="margin: 0 auto;max-width: 500px;">
					<div class="card-image">
						<img src="static/image/index/done.png">
					</div>
					<div class="card-content">
						<h5 class="black-text">成功</h5>
						<p class="black-text">${success}</p>
					</div>
                    <div class="card-action">
                        <sec:authorize access="hasRole('AREA') or hasRole('GROUP')">
                            <a href="<c:url value="/list" />">确定，返回用户列表</a>
                        </sec:authorize>

                        <sec:authorize access="hasRole('ADMIN')">
                            <a href="<c:url value="/all-list" />">确定，返回用户列表</a>
                        </sec:authorize>
                    </div>
				</div>
			</div>

		</div>
	</div>
</main>

<script src="static/js/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>
