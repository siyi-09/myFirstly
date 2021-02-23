<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%if(session.getAttribute("loginsession")=="1"){ }
else{
response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");
} %> 
<html>
  <head>
   <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
  </head>
  
<c:forEach items="${listAdmin}" var="s">
<body bgcolor=black>
  <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="6%" style="background-color: #f1f1f1;border-radius: 20px" > 
  <jsp:include page="/bar/admintitile.jsp"/>
   </td>
  </tr>
  <tr>
   <td height="95%" width="20%" style="background-color: #f1f1f1;border-radius: 20px">
   <jsp:include page="/bar/adminbar.jsp"/></td>
   <td width="80%" align="center" class="td1">
    <embed src="/firstly1_3/images/wzry1.swf" width="100%" height="100%" type="application/x-shockwave-flash" wmode="transparent"></embed>
 <%--   <table width="100%" border="0" align="center" style="background-color:pink; border-radius: 20px;">
  <tbody>
    <tr align="center">
      <td colspan="5" bgcolor="#99FF99" style="border-radius: 20px;">最近操作</td>
    </tr>
    <tr align="center" bgcolor="#33FFCC">
      <td width="10%">管理员ID</td>
      <td width="10%">管理员</td>
      <td width="30%">操作</td>
      <td width="30%">原因</td>
      <td width="20%">时间</td>
    </tr>
    <s:iterator value="olist" status="status">
    <tr bgcolor="white">
      <td><s:property value="oaid"/></td>
      <td><s:property value="oaname"/></td>
      <td align="left"><s:property value="oper"/></td>
      <td align="left"><s:property value="oreason"/></td>
      <td align="left"><s:property value="otime"/></td>
    </tr>
      </s:iterator>
    <tr align="right">
      <td colspan="5" style="color: black">
 <form action="oper.action">
    <input placeholder="输入页数" style="border-radius: 5px;border: none;height:30;
     width: 60" name="showPage" type="text" onkeyup="value=value.replace(/[^0-9]/g,'')"
     onpaste="value=value.replace(/[^0-9]/g,'')" oncontextmenu ="value=value.replace(/[^0-9]/g,'')"/>
    <input type="submit" name="tz" style="border-radius: 5px;height:30; width: 50;
    border:none; background-color: yellow; " value="跳转">
    </form>
总计有<% out.print(session.getAttribute("recordcount")); %>条操作，
 共<% out.print(session.getAttribute("pagecount")); %>页，
 当前第<% out.print(session.getAttribute("showpage")); %>页。
      </td>
    </tr>
  </tbody>
</table> --%>
   </td>
 </tr>
</table>
</body>
</c:forEach>
</html>
