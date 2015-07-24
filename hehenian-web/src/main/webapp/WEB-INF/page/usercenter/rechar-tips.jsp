<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="/include/taglib.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/css.css" rel="stylesheet" type="text/css" />
<script src="script/jquery-1.7.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="script/jbox/jquery.jBox-2.3.min.js"></script>
<script type="text/javascript" src="script/jbox/jquery.jBox-zh-CN.js"></script>
<script>
	$(function(){
		$('.tabmain').find('li').click(function(){
		$('.tabmain').find('li').removeClass('on');
		$(this).addClass('on');
		$('.lcmain_l').children('div').hide();
	    $('.lcmain_l').children('div').eq($(this).index()).show();
		});
		
		$("#agreebutton").click(function(){
		    var realname = $('#realname').val();
			window.parent.addRechargeoutline(realname);
		});
	})
</script>
<style>
.nymain p{padding: 0;text-indent: 0}</style>
</head>
<body>
<div class="nymain" style="width: 560px;margin: 0 auto;line-height: 22px;text-align: justify;" >


    <h2 style="text-align:center;font-size: 16px;padding-bottom: 10px;padding-top:20px;">委托书 </h2>
    <div class="zw">
    ${paramMap.content}
    </div>
    <div align="center">
    	真实姓名：<input type="text" id="realname" class="inp140" style="float:none;"/>
    </div>
    <br />
    <div align="center">
    	<a id="agreebutton" class="bcbtn">同意委托</a>
    </div>

    

</div>
<!-- 引用底部公共部分 -->     
</body>
</html>