<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%if(session.getAttribute("loginsession")=="1"){ }
else{
response.sendRedirect("/firstly1_3/adminlogin.jsp");
} %> 
<html>
  <head>
    <title>Firstly管理组</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
  </head>
  <!-- 判断是否登录 -->
<c:forEach items="${listAdmin}" var="s">
<body bgcolor=black>
 <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="8%" style="background-color: #f1f1f1" > 
<jsp:include page="/bar/admintitile.jsp"/>
   </td>
  </tr>
  <tr>
    <td height="95%" width="20%" style="background-color: #f1f1f1"><jsp:include page="/bar/adminbar.jsp"/></td>
    <td align="center" width="80%" class="td1">
     <table width="100%" height="100%" border="0" style="background-color:pink; border-radius: 20px;">
  <tr>
    <td align="center">
    <c:if test="${s.aprotect=='高级管理员'}">
    <a style="color: yellow;font-size: 20" href="/firstly1_3/Admin/adminadd.jsp">添加新的管理账号>>></a>
    </c:if><br><br><br>
      <table width="90%"  border="0" style="background-color:pink; border-radius: 20px;">
      <tr align="center" height="10">
        <td bgcolor="#33FFCC" width="10%">ID</td>
        <td width="20%" bgcolor="#99FF99">管理员</td>
        <c:if test="${s.aprotect=='高级管理员'}"><td width="20%" bgcolor="#99FF99">密码</td></c:if>
        <td width="20%" bgcolor="#99FF99">权限</td>
       <c:if test="${s.aprotect=='高级管理员'}"><td colspan="10" width="30%" bgcolor="#33FFCC">操作</td></c:if>
      </tr>
  
 <s:iterator value="list" status="status">
     <tr bgcolor="white" height="10" align="center">
       <td><s:property value="aid"/></td>
       <td><s:property value="aname"/></td>
       <c:if test="${s.aprotect=='高级管理员'}"><td><s:property value="apwd"/></td></c:if>
       <td><s:property value="aprotect"/></td>
      <c:if test="${s.aprotect=='高级管理员'}">
       <td width="10%">
       <a href="toupadmin.action?a.aid=<s:property value="aid"/>">修改</a></td>
       <td width="10%">
       <a href="deladmin.action?a.aid=<s:property value="aid"/>&thid=${s.aid}">删除</a>
       </td></c:if>
    </tr>
  </s:iterator>
</table>
    </td>
  </tr>
</table>
</table>
</body></c:forEach>
</html>
