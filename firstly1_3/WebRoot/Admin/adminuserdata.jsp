<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html lang="en">
  <head>
    <title>Firstly用户信息</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
  </head>
  <!-- 判断是否登录 -->
<%if(session.getAttribute("loginsession")=="1"){

 }
else{
response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");
} %> 
<body bgcolor=black>
 <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="8%" style="background-color: #f1f1f1"> 
     <jsp:include page="/bar/admintitile.jsp"/>
   </td>
  </tr>
  <tr>
    <td height="95%" width="20%" style="background-color: #f1f1f1"><jsp:include page="/bar/adminbar.jsp"/></td>
    <td align="center" width="80%">
        <table width="100%" height="100%" border="0" style="background-image:url(/firstly1_3/images/bg8.jpg);
        background-size:cover;
 background-repeat:no-repeat;">
        <tr>
        <td align="center">
        <c:forEach items="${listUser}" var="lu">
    <table width="70%" border="0" height="95%" style="color:white;">
    <tr>
      <td align="right"><a href="lookuser.action?u.uid=${lu.uid}">
         <img src="/firstly1_3/images/refreshlv.png" width="30" height="30"></img></a><br></td>
           <td align="left" style="font-size: 20px;color:white;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 用户信息<br></td>
    </tr>
    <tr>
      <td width="30%" align="right">ID：</td>
      <td><input disabled="disabled" class="read" name="u.uid" type="text" value="${lu.uid}"/></td>
    </tr>
    <tr>
      <td align="right">用户名：</td>
      <td>
      <input disabled="disabled" class="read" name="u.uname" type="text" value="${lu.uname}"/>
      </td>
    </tr>
    <tr>
      <td align="right">密码：</td>
      <td>
      <input disabled="disabled" class="read" name="u.upwd" type="text" value="${lu.upwd}"/>
      </td>
    </tr>
    <tr>
      <td align="right">性别：</td>
      <td><input disabled="disabled" class="read" name="u.uname" type="text" value="${lu.usex}"/></td>
    </tr>
    <tr>
      <td align="right">年龄：</td>
      <td>
          <input disabled="disabled" class="read" name="u.uname" type="text" value="${lu.uage}"/></td>
    </tr>
    <tr>
      <td align="right">地址：</td>
      <td><input disabled="disabled" class="read" name="u.uname" type="text" value="${lu.uaddr}"/>
</td>
    </tr>
    <tr>
      <td align="right">个人说明：</td>
      <td><textarea disabled="disabled" class="read" name="u.uname">${lu.udesc} </textarea></td>
    </tr>
    <tr>
      <td colspan="2" align="right">
      <a href="toupuser.action?u.uid=${lu.uid }" class="button4">去修改</a>
      </td>
    </tr>
</table></c:forEach>
    </td>
  </tr>
</table>
</table>
</body>
</html>
