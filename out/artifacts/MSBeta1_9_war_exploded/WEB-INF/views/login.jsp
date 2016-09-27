<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
    <title>会员登录</title>
    <link rel="stylesheet" href="<c:url value='/static/css/material-icons.css' />" media="screen,projection" />
    <link rel="stylesheet" href="<c:url value='/static/css/materialize.css' />" media="screen,projection" />
    <link rel="stylesheet"  href="<c:url value='/static/css/style.css' />" media="screen,projection" />
</head>
<body style="background: #e9e9e9;">
    <main>
        <div class="container">

            <div class="section">
                <h2 class="center">泰允升科技</h2>
                <h5 class="center">后台管理系统</h5>
            </div>

            <div class="section" style="margin: 0 auto;max-width: 500px;">
                <c:url var="loginUrl" value="/login" />
                <div class="card" style="border-radius: 5px 5px 0 0;margin: 0 10px 0 10px;height: 10px;"></div>
                <div class="card" style="border-radius: 5px;margin: 0;padding: 0;">
                    <form action="${loginUrl}" method="post" class="form-horizontal">

                        <br>
                        <blockquote class="flow-text">登录</blockquote>
                        <div class="row" style="padding: 20px;">

                            <div class="input-field col s12">
                                <input type="text" id="name" placeholder="请输入工号" path="jobId" name="jobId"  class="validate" required="required" autocomplete="off"  />
                                <label for="name">工号</label>
                            </div>

                            <div class="input-field col s12">
                                <input type="password" id="password" placeholder="请输入密码" path="password" name="password" class="validate" required="required" />
                                <label for="password">密码</label>
                            </div>

                            <div class="col s12">
                                <input type="checkbox" id="rem_me" name="remember-me"/>
                                <label for="rem_me">记住我</label>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                            <div id="embed-captcha"></div>
                            <p id="wait" class="show">正在加载验证码......</p>
                            <p id="notice" class="hide">请先拖动验证码到相应位置</p>

                            <div class="col s12">
                                <c:if test="${param.error != null}">
                                    <div class="card red">
                                        <p class="center white-text">用户名或密码不正确</p>
                                    </div>
                                </c:if>

                                <c:if test="${param.logout != null}">
                                    <div class="red">
                                        <p class="center white-text">你已经成功退出登录</p>
                                    </div>
                                </c:if>
                            </div>

                            <div class="col s12 center" style="padding: 15px 0 0 0;">
                                <button id="embed-submit" type="submit" class="waves-effect waves-light btn-large center">登陆</button>
                            </div>

                        </div>
                    </form>
                </div>
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
    <script src="http://static.geetest.com/static/tools/gt.js"></script>
    <script>
        var handlerEmbed = function (captchaObj) {
            $("#embed-submit").click(function (e) {
                var validate = captchaObj.getValidate();
                if (!validate) {
                    $("#notice")[0].className = "show";
                    setTimeout(function () {
                        $("#notice")[0].className = "hide";
                    }, 2000);
                    e.preventDefault();
                }
            });
            // 将验证码加到id为captcha的元素里，同时会有三个input的值：geetest_challenge, geetest_validate, geetest_seccode
            captchaObj.appendTo("#embed-captcha");
            captchaObj.onReady(function () {
                $("#embed-captcha")[0].className = "hide";
                $("#wait")[0].className = "hide";
            });
            // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
        };
        $.ajax({
            // 获取id，challenge，success（是否启用failback）
            url: "/login?t=" + (new Date()).getTime(), // 加随机数防止缓存
            type: "get",
            dataType: "json",
            success: function (data) {
                // 使用initGeetest接口
                // 参数1：配置参数
                // 参数2：回调，回调的第一个参数验证码对象，之后可以使用它做appendTo之类的事件
                initGeetest({
                    gt: data.gt,
                    challenge: data.challenge,
                    product: "float", // 产品形式，包括：float，embed，popup。注意只对PC版验证码有效
                    offline: !data.success // 表示用户后台检测极验服务器是否宕机，一般不需要关注
                    // 更多配置参数请参见：http://www.geetest.com/install/sections/idx-client-sdk.html#config
                }, handlerEmbed);
            }
        });
    </script>

</body>
</html>