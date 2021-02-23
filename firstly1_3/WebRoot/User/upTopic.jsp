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
    
    <title>My JSP 'upTopic.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="/bar/title.jsp"/>
	<link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/upUser.css" />
  </head>
  
  <body><center>
  <c:forEach items="${TopicOne}" var="l">
  <form method="post" name="updatetopic" action="updateTopic">
   <table width="70%" height="80%" border="0" class="myintb1" style="background-image:url(/firstly1_3/bgimages/${l.tbg});border-radius: 20px;">
  <tbody>
    <tr>
      <td height="48" style="text-align: center"><br>
      <input style="border-radius: 5px;border:1px solid green;text-align:center; padding: 10px 30px;"
       name="t.ttop" type="text" value="${l.ttop}"/>
       <input name="t.tid" type="hidden" value="${l.tid}"/><br>
      </td>
    </tr>
    <tr>
      <td style="text-align: left;background-color: white;opacity:0.8;border-radius: 20px;">
      <textarea name="t.tdesc" id="textarea" style="border-radius: 25px;padding: 10px;border:none;outline:none;"  cols="100%" rows="17">${l.tdesc}</textarea>
      </td>
    </tr>
    <tr>
      <td height="5%" style="text-align: right">
      <input type="submit" name="submit" onClick="showAddr()" class="buttonb button1" id="button-show" value="UPDATE">
      <br>
       <a href="updateTbg?t.tid=${l.tid}" style="text-align: right;">更改背景图片</a><br>
      <a href="javascript:history.go(-1)">back>>></a>&nbsp;&nbsp;<br><br>
      </td>
    </tr>
  </tbody>
</table></form></c:forEach>
 </center> </body>
</html>
