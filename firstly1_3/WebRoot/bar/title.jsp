<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/title.css" />
  </head>
  
  <body>
  <div id="do">
   <ul>
    <img src="/firstly1_3/images/logol2.png" width="150" height="35"></img>
    <a href="selectTopicAll" class="dropbtn">首页</a>
    <div class="dropdown">
    <a href="#" class="dropbtn">论坛&nbsp;∨</a>
    <div class="dropdown-content">
      <a href="#">链接 1</a>
      <a href="#">链接 2</a>
      <a href="#">链接 3</a>
    </div>
    </div>
    <div class="dropdown">
    <a href="#" class="dropbtn">资讯&nbsp;∨</a>
    <div class="dropdown-content">
      <a href="#">链接 1</a>
      <a href="#">链接 2</a>
      <a href="#">链接 3</a>
    </div>
    </div>
   <% if(session.getAttribute("uloginsession")=="1"){%>
   <c:forEach items="${Userone}" var="s">
   <li><a href="invalidateuser" class="dropbtn">退出</a></li>
   <li><a href="selectUserById?u.uid=${s.uid}" class="dropbtn">${s.uname}</a></li>
   <li>
   <div class="dropheaddown">
   <a href="" class="dropbtn2"><img src="./userHead/${s.uhead}" width="40" height="40"></img></a>
     <div class="dropdown-content">
      <a href="updateUhead">更换头像</a>
      <a href="#">头像另存</a>
    </div>
    </div>
   </li>
   </c:forEach>
   <% }
   else{ %>
  <li><a href="/firstly1_3/userregist.jsp" class="dropbtn">注册</a></li>
  <li> <a href="/firstly1_3/userlogin.jsp" class="dropbtn">登录</a></li><% } %>
  </ul>
  </div>
  </body>
  <br><br>
</html>
