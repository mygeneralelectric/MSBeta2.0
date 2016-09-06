<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html  lang="zh">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
	<title>会员管理</title>
	<link rel="stylesheet"  href="<c:url value='/static/css/ghpages-materialize.css' />" media="screen,projection" />
	<link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>

<body>

<%@include file="header.jsp"%>

<main>
	<div class="container">

        <div class="input-field">
            <select>

                <option value="1">Option 1</option>
                <option value="2">Option 2</option>
                <option value="3">Option 3</option>
            </select>
            <label>Materialize Select</label>
        </div>

		<div class="section">
			<h2 class="header">会员信息</h2>
			<form:form method="POST" modelAttribute="user">

				<div class="input-field">
                    <form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="firstName" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="lastName" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="ssoId" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:input type="password" path="password" id="password" class="validate" />
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="password" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:input type="text" path="email" id="email" class="form-control input-sm" />
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="email" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:input type="text"  path="upBossId" id="upBossId" class="form-control input-sm" />
                    <label for="password">First Name</label>
                    <div class="has-error">
                        <form:errors path="upBossId" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field">
                    <form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />
                    <label for="password">select</label>
                    <div class="has-error">
                        <form:errors path="userProfiles" class="help-inline"/>
                    </div>
                </div>

                <div class="input-field col s12">
                    <select>
                        <option value="" disabled selected>Choose your option</option>
                        <option value="1">Option 1</option>
                        <option value="2">Option 2</option>
                        <option value="3">Option 3</option>
                    </select>
                    <label>Materialize Select</label>
                </div>

			</form:form>

            <div class="input-field col s12">
                <select>
                    <option value="" disabled selected>Choose your option</option>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                </select>
                <label>Materialize Select</label>
            </div>

			<%--<div class="row">--%>

				<%--<c:choose>--%>
					<%--<c:when test="${edit}">--%>
						<%--<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>--%>
					<%--</c:when>--%>
					<%--<c:otherwise>--%>
						<%--<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>--%>
					<%--</c:otherwise>--%>
				<%--</c:choose>--%>
			<%--</div>--%>

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

		<%--<div class="well lead">User Registration Form</div>--%>
	 	<%--<form:form method="POST" modelAttribute="user" class="form-horizontal">--%>
			<%--<form:input type="hidden" path="id" id="id"/>--%>

			<%--<div class="row">--%>
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="firstName">First Name</label>--%>
					<%--<div class="col-md-7">--%>
						<%--<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>--%>
						<%--<div class="has-error">--%>
							<%--<form:errors path="firstName" class="help-inline"/>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--<div class="row">--%>
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="lastName">Last Name</label>--%>
					<%--<div class="col-md-7">--%>
						<%--<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />--%>
						<%--<div class="has-error">--%>
							<%--<form:errors path="lastName" class="help-inline"/>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--<div class="row">--%>
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="ssoId">SSO ID</label>--%>
					<%--<div class="col-md-7">--%>
						<%--<c:choose>--%>
							<%--<c:when test="${edit}">--%>
								<%--<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>--%>
							<%--</c:when>--%>
							<%--<c:otherwise>--%>
								<%--<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />--%>
								<%--<div class="has-error">--%>
									<%--<form:errors path="ssoId" class="help-inline"/>--%>
								<%--</div>--%>
							<%--</c:otherwise>--%>
						<%--</c:choose>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

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
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="email">Email</label>--%>
					<%--<div class="col-md-7">--%>
						<%--<form:input type="text" path="email" id="email" class="form-control input-sm" />--%>
						<%--<div class="has-error">--%>
							<%--<form:errors path="email" class="help-inline"/>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

            <%--<div class="row">--%>
                <%--<div class="form-group col-md-12">--%>
                    <%--<label class="col-md-3 control-lable" for="upBossId">upBossId</label>--%>
                    <%--<div class="col-md-7">--%>
                        <%--<c:choose>--%>
                            <%--<c:when test="${edit}">--%>
                                <%--<form:input type="text"  path="upBossId" id="upBossId" class="form-control input-sm" disabled="true"/>--%>
                            <%--</c:when>--%>
                            <%--<c:otherwise>--%>
                                <%--<form:input type="text"  path="upBossId" id="upBossId" class="form-control input-sm" />--%>
                                <%--<div class="has-error">--%>
                                    <%--<form:errors path="upBossId" class="help-inline"/>--%>
                                <%--</div>--%>
                            <%--</c:otherwise>--%>
                        <%--</c:choose>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

			<%--<div class="row">--%>
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="userProfiles">Roles</label>--%>
					<%--<div class="col-md-7">--%>

						<%--<c:choose>--%>
							<%--<c:when test="${edit}">--%>
								<%--<form:select path="userProfiles" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" disabled="true"/>--%>
							<%--</c:when>--%>
							<%--<c:otherwise>--%>
								<%--<form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />--%>
								<%--<div class="has-error">--%>
									<%--<form:errors path="userProfiles" class="help-inline"/>--%>
								<%--</div>--%>
							<%--</c:otherwise>--%>
						<%--</c:choose>--%>

						<%--&lt;%&ndash;<form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />&ndash;%&gt;--%>
						<%--&lt;%&ndash;<div class="has-error">&ndash;%&gt;--%>
							<%--&lt;%&ndash;<form:errors path="userProfiles" class="help-inline"/>&ndash;%&gt;--%>
						<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--&lt;%&ndash;<div class="row">&ndash;%&gt;--%>
				<%--&lt;%&ndash;<div class="form-group col-md-12">&ndash;%&gt;--%>
					<%--&lt;%&ndash;<label class="col-md-3 control-lable" for="userProfiles">Roles</label>&ndash;%&gt;--%>
					<%--&lt;%&ndash;<div class="col-md-7">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
						<%--&lt;%&ndash;<div class="has-error">&ndash;%&gt;--%>
							<%--&lt;%&ndash;<form:errors path="userProfiles" class="help-inline"/>&ndash;%&gt;--%>
						<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
					<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
				<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
			<%--&lt;%&ndash;</div>&ndash;%&gt;--%>

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
</html>