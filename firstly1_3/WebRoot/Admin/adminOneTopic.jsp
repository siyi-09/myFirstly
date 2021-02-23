<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
  <!-- 判断是否登录 -->
<%if(session.getAttribute("loginsession")=="1"){
}
else{
response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");
} %> 
<html>
  <head>
    <title>Firstly所有文章</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
  </head>
<c:forEach items="${listAdmin}" var="s">
<body bgcolor=black>
 <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="8%" style="background-color: #f1f1f1;border-radius: 20px"> 
      <jsp:include page="/bar/admintitile.jsp"/>
   </td>
  </tr>
  <tr>
    <td height="95%" width="20%" style="background-color: #f1f1f1;border-radius: 20px">
    <jsp:include page="/bar/adminbar.jsp"/></td>
    <td align="center" width="80%" class="td1">
        <table width="100%" height="100%" border="0" style="background-color:pink; border-radius: 20px;">
        <tr>
        <td align="center">
      <jsp:include page="/User/userOneTopic.jsp"/>
</td>
  </tr>
  <tr>
    <td align="right" height="20%" style="color: white;">
</td>
  </tr>
</table>
    </td>
  </tr>
</table>
</body>
</c:forEach>
</html>
