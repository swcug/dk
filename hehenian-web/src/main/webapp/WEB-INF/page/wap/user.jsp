﻿<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/include/taglib.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>个人信息</title>
<jsp:include page="/include/wap-head.jsp"></jsp:include>
</head>
<body>
<div id="preloader">
  <div id="status">
    <p class="center-text"> 正在加载... </p>
  </div>
</div>
<div class="all-elements">
  <div id="sidebar" class="page-sidebar">
    <div class="page-sidebar-scroll">
      <div class="sidebar-section">
        <p>目录</p>
        <a href="#" class="sidebar-close"></a> </div>
      <div class="navigation-items">
        <div class="nav-item"> <a href="index.html" class="home-nav">首页<em class="unselected-nav"></em></a> </div>
        <div class="nav-item"> <a href="#" class="features-nav submenu-deploy">个人中心<em class="dropdown-nav"></em></a>
          <div class="nav-item-submenu"> <a href="user.html">个人信息<em class="selected-sub-nav"></em></a> <a href="investment.html">理财投资<em class="unselected-sub-nav"></em></a> <a href="capital.html">资金管理<em class="unselected-sub-nav"></em></a> </div>
        </div>
        <div class="nav-item"> <a href="tp-list.html" class="contact-nav">投标列表<em class="unselected-nav"></em></a> </div>
        <div class="sidebar-decoration"></div>
      </div>
    </div>
  </div>
  <div id="content" class="page-content">
    <div class="page-header"> <a href="#" class="deploy-sidebar"></a>
      <p class="bread-crumb">个人信息</p>
      <a href="contact.html" class="deploy-contact"></a> </div>
    <div class="content">
      <div class="container no-bottom">
        <div class="section-title" style=" padding-bottom:10px;">
          <h4>个人信息</h4>
         </div>
      </div>
      <div class="container no-bottom">
        <table cellspacing='0' class="table">
        <tr class='even'>
            <td class="table-sub-title">用户名</td>
            <td colspan="2">jkasdfh</td>
          </tr>
          <tr >
            <td class="table-sub-title">推广ID</td>
            <td colspan="2">108339</td>
          </tr>
          <tr class='even'>
            <td class="table-sub-title"> 姓名</td>
            <td colspan="2">张三</td>
          </tr>
          <tr>
            <td class="table-sub-title"> 身份证号</td>
            <td colspan="2">430*************88</td>
          </tr>
          <tr class='even'>
            <td class="table-sub-title">电子邮箱</td>
            <td colspan="2">lsadkfjaslkdfjalksdj@163.com</td>
          </tr>
          <tr>
            <td class="table-sub-title"> 汇付账号</td>
            <td style=" border-right:0px;display:none">6065860001845414</td>
            <td style="display:none"><a href="#" class="button button-yellow" style=" float:right">登陆汇付</a></td>
            <td style=" border-right:0px; ">您还不是汇付会员</td>
            <td><a href="#" class="button button-yellow" style=" float:right">注册汇付</a></td>
          </tr>
        </table>
      </div>
              <div class="decoration"></div>
      <div class="container no-bottom">

        <div class="section-title">
          <h4>修改登陆密码</h4>
         </div>
        <div class="formFieldWrap">
          <label class="field-title contactNameField" for="contactNameField">原密码:</label>
          <input type="text" name="contactNameField" value="" class="contactField requiredField" id="contactNameField"/>
        </div>
        <div class="formFieldWrap">
          <label class="field-title contactEmailField" for="contactEmailField">新密码: </label>
          <input type="text" name="contactEmailField" value="" class="contactField requiredField requiredEmailField" id="contactEmailField"/>
        </div>
        <div class="formFieldWrap">
          <label class="field-title contactEmailField" for="contactEmailField">再次输入新密码：</label>
          <input type="text" name="contactEmailField" value="" class="contactField requiredField requiredEmailField" id="contactEmailField"/>
        </div>
        <div class="formSubmitButtonErrorsWrap">
          <input type="submit" class="buttonWrap button button-green contactSubmitButton" id="contactSubmitButton" value="修改" data-formId="contactForm"/>
        </div>
      </div>
      <div class="container no-bottom">
      <div class="decoration" style="margin-top:15px;"></div>
        <div class="section-title">
          <h4>修改交易密码</h4>
          </div>
        <div class="formFieldWrap">
          <label class="field-title contactNameField" for="contactNameField">原密码:</label>
          <input type="text" name="contactNameField" value="" class="contactField requiredField" id="contactNameField"/>
        </div>
        <div class="formFieldWrap">
          <label class="field-title contactEmailField" for="contactEmailField">新密码: </label>
          <input type="text" name="contactEmailField" value="" class="contactField requiredField requiredEmailField" id="contactEmailField"/>
        </div>
        <div class="formFieldWrap">
          <label class="field-title contactEmailField" for="contactEmailField">再次输入新密码：</label>
          <input type="text" name="contactEmailField" value="" class="contactField requiredField requiredEmailField" id="contactEmailField"/>
        </div>
        <div class="formSubmitButtonErrorsWrap">
          <input type="submit" class="buttonWrap button button-green contactSubmitButton" id="contactSubmitButton" value="修改" data-formId="contactForm"/></div>
      </div>
        <div class="decoration" style="margin-top:15px;"></div>
      <div class="container no-bottom">

        
        
        <div class="clear"></div>
      </div>
      <div class="content-footer" style=" text-align:center;margin-bottom:10px; font-size:10px;"> 爱生活、爱理财、就上合和年<br>
        花样年集团成员 （香港联交所上市企业HK1777） </div>
    </div>
  </div>
</div>
</body>
</html>
