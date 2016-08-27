<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>User Registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet" />
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet" />
</head>

<body>
 	<div class="generic-container">
		<%@include file="authheader.jsp" %>

		<div class="well lead">User Registration Form</div>
	 	<form:form method="POST" modelAttribute="user" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
			
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="firstName">First Name</label>
					<div class="col-md-7">
						<form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="firstName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="lastName">Last Name</label>
					<div class="col-md-7">
						<form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="lastName" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="ssoId">SSO ID</label>
					<div class="col-md-7">
						<c:choose>
							<c:when test="${edit}">
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
							</c:when>
							<c:otherwise>
								<form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
								<div class="has-error">
									<form:errors path="ssoId" class="help-inline"/>
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="password">Password</label>
					<div class="col-md-7">
						<form:input type="password" path="password" id="password" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="password" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="email">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="email" id="email" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="email" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>

            <div class="row">
                <div class="form-group col-md-12">
                    <label class="col-md-3 control-lable" for="upBossId">upBossId</label>
                    <div class="col-md-7">
                        <form:input type="text"  path="upBossId" id="upBossId" class="form-control input-sm" />
                        <div class="has-error">
                            <form:errors path="upBossId" class="help-inline"/>
                        </div>

                            <%--<c:choose>--%>
                                <%--<c:when test="${edit}">--%>
                                    <%--<form:input type="text" path="upBossId" id="upBossId" class="form-control input-sm" disabled="true"/>--%>
                                <%--</c:when>--%>
                                <%--<c:otherwise>--%>
                                    <%--<form:input type="text" path="upBossId"  id="upBossId" class="form-control input-sm" />--%>
                                    <%--<div class="has-error">--%>
                                        <%--<form:errors path="ssoId" class="help-inline"/>--%>
                                    <%--</div>--%>
                                <%--</c:otherwise>--%>
                            <%--</c:choose>--%>

                    </div>
                </div>
            </div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="userProfiles">Roles</label>
					<div class="col-md-7">
						<form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />
						<div class="has-error">
							<form:errors path="userProfiles" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<%--<div class="row">--%>
				<%--<div class="form-group col-md-12">--%>
					<%--<label class="col-md-3 control-lable" for="userProfiles">Roles</label>--%>
					<%--<div class="col-md-7">--%>
                        <%--<sec:authorize access="hasRole('ADMIN') or hasRole('AREA') or hasRole('GROUP')">--%>
                            <%--<form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm" />--%>
                        <%--</sec:authorize>--%>
                        <%--&lt;%&ndash;<sec:authorize access="hasRole('AREA')">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<form:select path="userProfiles" multiple="false" itemValue="id" itemLabel="type" class="form-control input-sm">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:forEach var="role" items="${roles}.remove('1')">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<c:if test="${role.type == 'GROUP' or role.type == 'REGULAR'}">&ndash;%&gt;--%>
                                        <%--&lt;%&ndash;<form:option value="${role}" id="${role.id}" label="${role.type}"></form:option>&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</form:select>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<sec:authorize access="hasRole('GROUP')">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;<c:forEach var="role" items="${roles}">&ndash;%&gt;--%>
                                <%--&lt;%&ndash;<c:if test="${role.type == 'REGULAR'}">&ndash;%&gt;--%>
                                    <%--&lt;%&ndash;<option item="${role}" itemValue="id" itemLabel="type">${role.type}</option>&ndash;%&gt;--%>
                                <%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
                            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
                        <%--&lt;%&ndash;</sec:authorize>&ndash;%&gt;--%>
						<%--<div class="has-error">--%>
							<%--<form:errors path="userProfiles" class="help-inline"/>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>
	
			<div class="row">
				<div class="form-actions floatRight">
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
		</form:form>
	</div>
</body>
</html>