<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
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
    
    <title>My JSP 'userdeploy.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css">
.bgta{
border-radius: 5px;
background-image:url(./images/bar1.jpg); 
background-origin:content;
background-position:50% 50%;
background-size:cover;
background-color:black; 
}
	</style>
  </head>
  
  <body>
  <!-- 表单2 发表-->
  <c:forEach items="${Userone}" var="s">
   <form action="addTopic" method="get" name="f2">
<table width="800" border="0"  align="center" height="40" class="bgta">
  <tr>
    <td rowspan="2" width="600">
    <textarea name="t.tdesc" style="border-radius: 25px;padding: 10px;border:none;
    outline:none;" cols="80" rows="6" placeholder="写写你的心情吧..."></textarea>
     <input type="hidden" name="t.ttime"
      value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(Calendar.getInstance().getTime())%>">
     <input type="hidden" name="t.ttop" value="小心情">
     <input type="hidden" name="t.tuid" value="${s.uid}">
     <input type="hidden" name="t.tsid" value="0">
     <input type="hidden" name="t.tbg" value="bgt.jpg">
     </td>
    </td>
    <td width="200" height="10">
    <input type="submit" name="ok2" class="button button1" value="发表"></td>
 </tr>
 <tr>
    <td align="center" style="color: white"><img src="images/jt1.png" width="40" height="40"></img><br>配图</td>
 </tr>
</table><s:token></s:token>
</form>
 </c:forEach>
  </body>
</html>
