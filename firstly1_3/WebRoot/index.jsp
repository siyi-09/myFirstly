<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<!-- 头部及css -->
  <head>
    <jsp:include page="/bar/title.jsp"/>
    <base href="<%=basePath%>">
    <title>Firstly首页</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/index.css" />
  </head>
  
  <body><center>
 <table width="90%" height="300" border="0" align="center" class="indextb1"><tr><td>

<!-- 表单1搜索 -->
<form action="selectTopicByTop" method="post" name="f1">
 <table width="800" border="0" height="40" align="center" class="indextb">
   <tr>
   <td align="right">
<c:set var="messSeach" scope="session" value="${messSeach}"/>
<c:if test="${messSeach!='null'}"/>
   <input name="t.ttop" type="text" height="100" id="rcorners2" value="<c:out value="${messSeach}"/>"  placeholder="搜索文章.."/></td>
   <td width="200" align="left"><input type="submit" name="ok1" class="button button1" value="搜索"></td>
   </tr>
</table>

<!-- 分割条 -->
<table width="800" border="0" height="20" align="center" >
   <tr><td><img src="images/b1.png"></img></td></tr>
</table>
</form>
<jsp:include page="/User/userdeploy.jsp"></jsp:include>
</td></tr></table>
<br>
<table width="800" border="0" height="20" align="center" >
   <tr><td><jsp:include page="/User/userTopic.jsp" /></td></tr>
</table>
 </center>
 <center>
    <a style="color: white">黑龙江省绥化市北林区&nbsp; © 2020-现在 Firstly.com 版权所有</a>
</center>
 </body>
</html>
