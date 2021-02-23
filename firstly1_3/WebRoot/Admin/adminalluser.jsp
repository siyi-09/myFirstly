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
    <title>Firstly所有用户</title>
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
       <!--  <a href="" style="color: white">查看被封号用户</a> -->
     <table width="90%"  border="0">
      <tr align="center" height="10">
        <td bgcolor="#33FFCC" width="15%">ID</td>
        <td width="30%" bgcolor="#99FF99">用户名</td>
        <td width="25%" bgcolor="#99FF99">密码</td>
        <td colspan="10" width="30%" bgcolor="#33FFCC">操作</td>
      </tr>
  
     <s:iterator value="ulist" status="status">
     <tr bgcolor="white" height="10">
       <td><s:property value="uid"/></td>
       <td><s:property value="uname"/></td>
       <td><s:property value="upwd"/></td>
       <td width="10%">
       <a href="lookuser.action?u.uid=<s:property value="uid"/>">查看</a></td>
       <td width="10%">
       <a href="deluser.action?u.uid=<s:property value="uid"/>&&uname=<s:property value="uname"/>">删除</a>
       </td>
    </tr>
    </s:iterator>
  </table>
</td>
  </tr>
  <tr>
    <td align="right" height="20%" style="color: white;">
  <!--   <form action="useroper.action">
    <input placeholder="输入页数" style="border-radius: 5px;border: none;height:30; width: 60" name="showPage" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')" onpaste="value=value.replace(/[^0-9]/g,'')" oncontextmenu ="value=value.replace(/[^0-9]/g,'')"/>
    <input type="submit" name="tz" style="border-radius: 5px;height:30; width: 50;
    border:none; background-color: yellow; " value="跳转">
    </form>
    <br> -->
 <%-- 数据库中有<% out.print(session.getAttribute("recordcount")); %>条数据，
 共<% out.print(session.getAttribute("pagecount")); %>页，
 当前第<% out.print(session.getAttribute("showpage")); %>页。<br><br> --%>
</td>
  </tr>
</table>
    </td>
  </tr>
</table>
</body>
</c:forEach>
</html>
