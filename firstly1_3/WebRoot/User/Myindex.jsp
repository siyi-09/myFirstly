<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%if(session.getAttribute("uloginsession")=="1"){ }
else{
response.setHeader("Refresh","0;url=/firstly1_3/userlogin.jsp");
} %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>个人主页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta charset="UTF-8">
	<jsp:include page="/bar/title.jsp"/>
	<link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/Myindex.css" />
  </head>
  
  <body><center><br>
    	<table width="70%" border="0" class="myintb1" style="background-image: url(/firstly1_3/images/bg9.jpg);border-radius: 20px;">
  <tbody>
  <c:forEach items="${Userone}" var="m">
    <tr>
      <td width="150" height="150" rowspan="2" ><img src="/firstly1_3/userHead/re${m.uhead}" style="border-radius: 20px 0px 0px 0px;" width="100%" height="100%"></img></td>
      <td height="55" class="myintd1"><h1 style="color: blue;">${m.uname}</h1></td>
      <td width="108" class="myintd2" style="text-align: right"><a href="toUp.action?u.uid=${m.uid}"><img src="/firstly1_3/images/bj1.png" width="28" height="28"></img></a></td>
    </tr>
    <tr style="background-color: white;background-size:cover;">
      <td colspan="2" style="text-align: left">&nbsp;&nbsp;${m.udesc}
      <br><br>${m.uage}&nbsp;||&nbsp;${m.usex}||&nbsp;&nbsp;${m.uaddr}</td>
    </tr>
    <tr>
      <td colspan="3" style="text-align: center;background-color: white;background-size:cover;opacity:0.9;">
      ----how many times you ask yourself before----</td>
    </tr>
     <tr style="background-color: white;background-size:cover;opacity:0.9;">
      <td colspan="3" align="right">文章数量：<%out.print(session.getAttribute("topicnum")); %></td>
    </tr></c:forEach>
    <tr>
      <td colspan="3" class="myintd3">
      <!-- 文章 -->
      <jsp:include page="/User/userTopic.jsp" />
      </td>
    </tr>
  </tbody>
</table></center>
  </body>
</html>
