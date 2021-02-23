<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%if(session.getAttribute("loginsession")=="1"){ }
else{
response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");
} %>   <!-- 判断是否登录 -->
<html>
  <head>
    <title>添加管理账号</title>
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
  form2.action="addadmin.action";
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
    <td align="center" width="80%" class="td1">
    
     <form name="form2" onsubmit="reg()" method="post">
    <table width="50%" border="0" align="center">
  <tr>
    <td align="center"><br>
    <input placeholder="管理人员名称" style="border-radius: 5px;border: none;padding: 12px 30px"
     name="a.aname" id="aname" type="text"/><br><br></td>
  </tr>
  <tr>
    <td align="center">
    <input placeholder="密码" style="border-radius: 5px;border: none;padding: 12px 30px"
     name="a.apwd" id="apwd" type="text"/><br><br></td>
  </tr>
  <tr>
    <td align="center" style="color: white;">
权限：<select name="a.aprotect" style="padding: 10px 28px;border-radius: 5px;border: none;">
    <option value="管理员" selected="selected">管理员</option>
    <option value="高级管理员" >高级管理员</option>
    </select>
    <s:token></s:token>
    <br><br><br></td>
  </tr>
  <tr>
    <td align="center">
    <input name="okadda" class="buttonb button1" type="submit" value="确认添加"/><br><br></td>
  </tr> 
</table>
   </form>
    </td>
  </tr>
</table>
</body>
</html>
