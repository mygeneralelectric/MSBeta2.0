<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>江门瀚诚</title>

  <!-- CSS  -->
  <link href="static/css/material-icons.css" rel="stylesheet">
  <link href="static/css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="static/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
</head>

<body>
<head>
  <nav class="blue lighten-1" role="navigation">
    <div class="nav-wrapper container">
      <a id="logo-container" href="#" class="brand-logo white-text">江门瀚诚</a>

      <ul class="right hide-on-med-and-down">
        <li class="active"><a href="index.html" class="white-text">首页</a></li>
        <li><a href="#insurance_product" class="white-text">保险产品</a></li>
        <li><a href="#about_us" class="white-text">关于我们</a></li>
        <li><a href="#connect_us" class="white-text">联系我们</a></li>
        <li><a href="/login" class="waves-effect waves-light btn" style="border-radius:1.5em;">登录</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li class="active"><a href="index.html">首页</a></li>
        <li class="no-padding">
          <ul class="collapsible collapsible-accordion">
            <li>
              <a class="collapsible-header">保险产品<i class="material-icons right">arrow_drop_down</i></a>
              <div class="collapsible-body">
                <ul>
                  <li><a href="./page/life3.html">寿险</a></li>
                  <li><a href="./page/car3.html">车险</a></li>
                  <li><a href="./page/property3.html">财产险</a></li>
                </ul>
              </div>
            </li>
            <li><a href="index.html#about_us">关于我们</a></li>
            <li><a href="index.html#connect_us">联系我们</a></li>
          </ul>
        </li>
      </ul>

      <a href="#" data-activates="nav-mobile" class="button-collapse white-text"><i class="material-icons">menu</i></a>
    </div>
  </nav>
</head>

<main>
  <div id="index-banner" class="parallax-container valign-wrapper">
    <div class="section no-pad-bot">
      <div class="container">
        <br><br>
        <h1 class="header center blue-text">Insurance Agent</h1>
        <div class="row center">
          <h5 class="header col s12 light">一个专业的保险代理公司</h5>
        </div>
        <div class="row center">
          <a href="#about_us" id="download-button" class="btn-large waves-effect waves-light blue">了解更多关于我们</a>
        </div>
        <br><br>

      </div>
    </div>
    <div class="parallax"><img src="static/image/index/sea.jpg" alt="Unsplashed background img 1"></div>
  </div>

  <div class="container">
    <div class="section">

      <!--   Icon Section   -->
      <div id="insurance_product" class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-text text-lighten-1"><i class="material-icons">group</i></h2>
            <h5 class="center">寿险</h5>
            <p class="light">寿险即人寿保险，是一种以人的生死为保险对象的保险，是被保险人在保险责任期内生存或死亡，由保险人根据契约规定给付保险金的一种保险。</p>
            <div class="row center">
              <a href="static/page/life3.html" class="btn waves-effect waves-light blue lighten-1">了解更多</a>
            </div>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-text text-lighten-1"><i class="material-icons">drive_eta</i></h2>
            <h5 class="center">车险</h5>

            <p class="light">汽车保险，是财产保险的一种，主要保障因车祸导致的损失。机动车辆保险也是以机动车辆本身及其第三者责任等为保险标的的一种运输工具保险。</p>
            <div class="row center">
              <a href="static/page/car3.html" class="btn waves-effect waves-light blue lighten-1">了解更多</a>
            </div>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h2 class="center blue-text text-lighten-1"><i class="material-icons">polymer</i></h2>
            <h5 class="center">财产险</h5>

            <p class="light">财产保险是指投保人根据合同约定，向保险人交付保险费，保险人按保险合同的约定对所承保的财产及其有关利益因自然灾害或意外事故造成的损失承担赔偿责任的保险。</p>
            <div class="row center">
              <a href="static/page/property3.html" class="btn waves-effect waves-light blue lighten-1">了解更多</a>
            </div>
          </div>
        </div>
      </div>

    </div>
    <br><br>

    <div class="section">
      <div id="about_us" class="row">
        <div class="col l6 s12">
          <img class="responsive-img" src="static/image/index/office.jpg">
        </div>
        <div class="col l6 s12">
          <h5 class="center">公司理念</h5>
          <div class="divider" style="clear:both;"></div>
          <p class="light">用户要怎样才能购买到自己心仪的保险服务呢？关于这一点，我们听取了很多用户提出的建议，并从用户的切身利益出发，打造方便快捷的专业服务。到目前为止，我们已经和中国人保、中国平安、紫金财产、鼎和财产、国泰财产、大都会人寿、恒安标准等公司建立了合作关系，真正地做到了让用户买的放心，买的开心，买的舒心。</p>
        </div>
      </div>

      <div class="row">
        <div class="col l6 s12">
          <h5 class="center">合作公司</h5>
          <table class="highlight centered">
            <thead>
            <tr>
            </tr>
            </thead>

            <tbody>
            <tr>
              <td>中国人保</td>
              <td>中国平安</td>
            </tr>
            <tr>
              <td>紫金财产</td>
              <td>鼎和财产</td>
            </tr>
            <tr>
              <td>国泰财产</td>
              <td>大都会人寿</td>
            </tr>
            <tr>
              <td>恒安标准</td>
              <td></td>
            </tr>
            </tbody>
          </table>
        </div>
        <div class="col l6 s12">
          <img class="responsive-img" src="static/image/index/cooperate.jpg">
        </div>
      </div>
    </div>
  </div>
</main>

<footer class="page-footer blue lighten-1">
  <div class="container">
    <div class="row">
      <div id="connect_us" class="col l6 s12 white-text">
        <h3><i class="mdi-content-send"></i></h3>
        <h4>联系我们</h4>
        <p class="left-align light"><i class="material-icons left">location_on</i>地址：广东省江门市新会区</p>
        <p class="left-align light"><i class="material-icons left">call</i>电话：0668-7720-823</p>
        <p class="left-align light"><i class="material-icons left">dialpad</i>邮编：529020</p>
      </div>
      <div class="col l6 s12">
        <h4 class="white-text">关注我们</h4>
        <img class="responsive-img center" style="width:125px; height:125px;" src="static/image/index/qrcode.jpg">
      </div>
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container center">
      Copyright © Han Cheng Insurance Agent Jiang Men Fen Gong Si All Rights Reserved.
    </div>
  </div>
</footer>


<!--  Scripts-->
<script src="static/js/jquery-2.1.1.min.js"></script>
<script src="static/js/materialize.js"></script>
<script src="static/js/init.js"></script>

</body>
</html>

