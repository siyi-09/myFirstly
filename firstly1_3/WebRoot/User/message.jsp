<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <style type="text/css">
  body{
background-image:url(/firstly1_3/images/bg2.jpg);
background-size:100% 100%;  
background-position: center center;
background-color:#60C6EC}
a{ 
color:#4CAF50;
text-transform:none;
text-decoration:none;}
a:hover{text-decoration:underline}

.input{
	border-radius: 10px;
	background: #4CAF50;
	padding: 10px 30px;
	color: #4CAF50;
	text-align: center;
	
	
}
.button3 {
	background-color: #FFF;
	color: black;
	border: 2px solid #4CAF50;
}
</style>
<body>
<table width="100%" height="100%" border="0">
  <tr>
    <td style="font-size: 40px;color: white"><img src="/firstly1_3/images/logol2.png"></img>
    <br><img src="/firstly1_3/images/b2w.png"  width="100%" height="5"></img>
    </td>
  </tr>
  <tr>
    <td align="center"> 
   <table width="60%" border="0" height="100%" style="background-image:url(/firstly1_3/images/bg3.jpg); border-radius: 10px;opacity:0.8;">
  <tr>
   <c:forEach items="${reId}" var="r">
    <td align="left" style="color: white"><h2>Dear ${r.uname},</h2>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;您好。</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;恭喜您注册Firstly成功。</h3>
    <h3 style="color: white;font-size: 30">&nbsp;&nbsp;您的登录ID为：${r.uid}</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;此为您登录网站的唯一用户ID，请务必记录。</h3>
    <h3>&nbsp;&nbsp;&nbsp;&nbsp;真挚的友谊来自于我们源源不断的问候。</h3>
    <h5>&nbsp;&nbsp;&nbsp;&nbsp;祝您永远单身。</h5>
    <h3 align="right">From Firstly</h3></c:forEach>
    </td>
  </tr>
  <tr>
    <td align="center"><a href="/firstly1_3/userlogin.jsp" class="input button3">去登录</a></td>
  </tr>
</table>

</td>
  </tr>
  <tr>
    <td align="center" style="color: white">黑龙江省绥化市北林区&nbsp; © 2020-现在 Firstly.com 版权所有</td>
  </tr>
</table>   
</body>
