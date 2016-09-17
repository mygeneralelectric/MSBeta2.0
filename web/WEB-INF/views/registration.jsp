<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员管理</title>
    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection" />
    <link rel="stylesheet" href="<c:url value='/static/css/ms-materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>
<body>
    <%@include file="header.jsp"%>

    <main>
        <div class="container">
            <div class="section">

                    <h2 class="header">新增会员</h2>
                    <form:form method="POST" modelAttribute="user">
                        <form:input type="hidden" path="id" id="id"/>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="text" path="ssoId" id="ssoId" class="validate" />
                                <label for="ssoId">ssoId</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="ssoId" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="password" path="password" id="password" class="validate" />
                                <label for="password">password</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="password" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="password" path="retypePassword" id="retypePassword" class="validate" />
                                <label for="retypePassword">retypePassword</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="retypePassword" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="text" path="name" id="name" class="validate"/>
                                <label for="name">Name</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="name" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="text" path="phone" id="phone" class="validate" />
                                <label for="phone">phone</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="phone" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s12 m6">
                                <form:input placeholder="请输入内容" type="text"  path="upBossId" id="upBossId" class="validate" />
                                <label for="upBossId">upBossId</label>
                            </div>
                            <div class="col s12 m6">
                                <form:errors path="upBossId" class="help-inline"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col s12 m6">
                                <label>profile</label>
                                <form:select path="userProfiles" items="${profile}" multiple="false" itemValue="id" itemLabel="type" class="browser-default" />
                            </div>

                            <div class="col s12 m6">
                                <form:errors path="userProfiles" class="help-inline"/>
                            </div>
                        </div>

                        <br>
                        <button class="btn waves-effect waves-light" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                        </button>
                        or <a href="<c:url value='/list' />">Cancel</a>
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
</html>