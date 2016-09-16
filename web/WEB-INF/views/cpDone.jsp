<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <meta http-equiv="refresh" content="5; url='/logout' " />
    <title>修改密码成功</title>
    <link rel="stylesheet" href="<c:url value='/static/css/materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/reset.css' />" />
    <link rel="stylesheet"  href="<c:url value='/static/css/loginStyle.css' />" />
</head>
<body>

    <main>
        <div class="container">
            <div class="section">

                <div class="row">
                    <div class="card col s6">
                        <div class="card-image">
                            <img src="static/image/index/done.png">
                        </div>
                        <div class="card-content">
                            <h5 class="black-text">修改成功</h5>
                            <p class="black-text">${success}</p>
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
