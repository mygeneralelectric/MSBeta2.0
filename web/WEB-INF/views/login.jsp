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
    <style>
        #embed-captcha {
            width: 300px;
            margin: 0 auto;
        }
        .show {
            display: block;
        }
        .hide {
            display: none;
        }
        #notice {
            color: red;
        }
        /* 以下遮罩层为demo.用户可自行设计实现 */
        #mask {
            display: none;
            position: fixed;
            text-align: center;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            overflow: auto;
        }
        /* 可自行设计实现captcha的位置大小 */
        .popup-mobile {
            position: relative;
        }
        #popup-captcha-mobile {
            position: fixed;
            display: none;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            z-index: 9999;
        }
    </style>
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
                                <%--<input type="checkbox" id="rem_me" name="remember-me"/>--%>
                                <%--<label for="rem_me">记住我</label>--%>
                                    <%--<p><i class="material-icons">touch_app</i>滑动完成验证</p>--%>
                                    <p>
                                        <input class="with-gap" name="group3" type="radio" id="test5" checked />
                                        <label for="test5">滑动完成验证</label>
                                    </p>
                            </div>

                            <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />

                            <div class="col s12">
                                <div class="popup">
                                    <p id="wait" class="show">正在加载验证码......</p>
                                    <div id="embed-captcha" style="padding-top: 20px;"></div>

                                    <div id="notice" class="hide">
                                        <div class="card red">
                                            <p class="center white-text">请先拖动验证码到相应位置</p>
                                        </div></div>
                                </div>
                            </div>




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

            <%--<div class="section">--%>
                <%--<div class="exp-demo">--%>
                    <%--<form class="exp-embed-form">--%>
                        <%--<div class="box">--%>
                            <%--<div class="box-label">用户名</div>--%>
                            <%--<input disabled="disabled" placeholder="geetest" />--%>
                        <%--</div>--%>
                        <%--<div class="box">--%>
                            <%--<div class="box-label">密码</div>--%>
                            <%--<input disabled="disabled" placeholder="******" />--%>
                        <%--</div>--%>
                        <%--<div class="box">--%>
                            <%--<div class="box-label">滑动完成验证</div>--%>
                            <%--<span id="wait" class="show">正在加载验证码......</span>--%>
                            <%--<div class="box-captcha" id="float-captcha"></div>--%>
                        <%--</div>--%>
                    <%--</form>--%>
                    <%--<div id="taste">--%>
                        <%--<div class="fields">--%>
                            <%--<div id="login" class="btn t-center active clickbtn font-15">--%>
                                <%--<a href="/mobile-pc">点击体验移动端验证</a>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>

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
                $("#embed-captcha")[0].className = "show";
                $("#wait")[0].className = "hide";
            });
            // 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
        };
        $.ajax({
            // 获取id，challenge，success（是否启用failback）
//            url: "/geetValidate?t=" + (new Date()).getTime(), // 加随机数防止缓存
            url: "/geetValidate",
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