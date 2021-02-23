<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%if(session.getAttribute("loginsession")=="1"){ }
else{
response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");
} %>   <!-- 判断是否登录 -->
<html>
  <head>
    <title>修改管理信息</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
    <script type="text/javascript">
    function reg(){
    var name=document.getElementById("aname").value.trim();
    var pwd=document.getElementById("apwd").value.trim();
       if(name==""){  
                        alert("名称不能为空！");  
                        return false;  
                    }  
                    if(pwd==""){  
                        alert("密码不能为空！");  
                        return false;  
                    }else{
  form3.action="updateadmin.action";
  return true;}
 }
    </script>
  </head>
<body bgcolor=black>
 <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="8%" style="background-color: #f1f1f1" > 
     <jsp:include page="/bar/admintitile.jsp"/>
   </td>
  </tr>
  <tr>
    <td height="95%" width="20%" style="background-color: #f1f1f1"><jsp:include page="/bar/adminbar.jsp"/></td>
    <td align="center" width="80%" class="td1" style="background-image:url(/firstly1_3/images/bg8.jpg);background-size:cover;
 background-repeat:no-repeat;">
    <c:forEach items="${Adminone}" var="a">
     <form name="form3" onsubmit="reg()" method="post" action="updateadmin.action?a.aid=${a.aid}">
    <table width="50%" border="0" align="center">
     <tr>
    <td align="center"><br>
    <input disabled="disabled" style="border-radius: 5px;border: none;padding: 12px 30px"
     name="a.aid" type="text" value="ID：${a.aid}"/><br><br></td>
  </tr>
  <tr>
    <td align="center"><br>
    <input placeholder="管理人员名称" style="border-radius: 5px;border: none;padding: 12px 30px"
     name="a.aname" type="text" value="${a.aname}"/><br><br></td>
  </tr>
  <tr>
    <td align="center">
    <input placeholder="密码" style="border-radius: 5px;border: none;padding: 12px 30px"
     name="a.apwd" value="${a.apwd}" type="text"/><br><br></td>
  </tr>
  <tr>
    <td align="center" style="color: white;">
权限：<select name="a.aprotect" style="padding: 10px 28px;border-radius: 5px;border: none;">
    <option value="管理员" <c:if test="${a.aprotect=='管理员'}">selected="selected"</c:if>>管理员</option>
    <option value="高级管理员" <c:if test="${a.aprotect=='高级管理员'}">selected="selected"</c:if>>高级管理员</option>
    </select>
    <s:token></s:token>
    <br><br><br></td>
  </tr>
  <tr>
    <td align="center">
    <input name="update" class="buttonb button1" type="submit" value="确认修改"/><br><br></td>
  </tr> 
</table>
   </form></c:forEach>  
    </td>
  </tr>
</table>
</body>
</html>
