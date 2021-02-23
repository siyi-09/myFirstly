<%@page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  </head>
  
  <c:forEach items="${listAdmin}" var="s">
<body>
      <table width="100%" border="0" height="100%">
      <tr>
        <td style="color:black;font-size=32" width="15%"><a style="color:black;font-size=32" href="/Firstly/Admin/adminindex.jsp">Firstly管理后台首页</a></td>
       
        <td style="color:black;font-size=32" width="15%" align="center">${s.aprotect} ${s.aname}
        </td>
      
        <td style="color:white;font-size=32" width="15%" align="left">
        <a href="invalidateadmin.action" style="color: blue">退出登录</a></td>
        <td style="color:white;font-size=32" width="55%" align="right">      
     
<!-- 表单1搜索 -->
<form action="selectUserByName.action" method="post" name="f1">
 <table width="100%" border="0" height="40" align="center" class="table1">
   <tr>
     <td align="right">
     <input name="u.uname" type="text" id="rcorners2"  placeholder="搜索.."/></td>
     <td width="20%" align="left">
     <input type="submit" name="ok1" class="button button1" value="搜索"></td>
  </tr>
</table></form>
<!-- 表单1搜索结束 -->

        </td>
    </tr>
    </table>
</body>
</c:forEach>
</html>
