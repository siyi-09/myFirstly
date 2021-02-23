<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.print(session.getAttribute("loginsession"));
if(session.getAttribute("loginsession")=="1"){
response.setHeader("refresh","0;URL=/firstly1_3/User/message.jsp");
}
else{

}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
  <head>
    <base href="<%=basePath%>">
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/logincss.css" />
    <script type="text/javascript" src="/firstly1_3/js/loginjs.js"></script> 
  </head>
  
  <body><center><br><br><br><br><br>
    <table width="35%" height="40%" border="0">
  <tr>
    <td width="30%" bgcolor="white" style="opacity:0.9;">
    <form name="form1" method="post" onsubmit="reg(this)">
    <table width="400" align="center" border="0" style="font-size: 20px;color: black;">
  <tr>
    <td colspan="2" align="center"><br>
    <a href="selectTopicAll">
    <img src="images/logol1.png"></img></a><br><br>
    <img src="/firstly1_3/images/b2b.png"  width="100%" height="5"></img><br><br>
    </td>
    </tr>
    <tr>
    <td align="center" height="30">
    
<c:set var="message" scope="session" value="${messageerror}"/>
<c:if test="${message!='null'}"/>
<input disabled="disabled" size="20" class="input button2" value="<c:out value="${message}"/>" 
id="message" name="message">
   </td>
  </tr>
  <tr>
  <tr>
    <td align="center">
    <c:set var="uid" scope="session" value="${uiderror}"/>
<%-- <c:if test="${uid!='null'}"/> --%>
<input placeholder="ID" type="text" oninput="value=value.replace(/[^\d]/g,'')" class="input2" 
value="<c:out value="${uid}"/>" type="text" id="uid" name="u.uid" onblur="checkName2()"/>
   </td>
  </tr>
  <tr>
    <td align="center">
    <c:set var="upwd" scope="session" value="${upwderror}"/>
<%-- <c:if test="${upwd!= null and upwd!='null'}"/> --%>
      <input placeholder="密码" onblur="checkpwd2()" value="<c:out value="${upwd}"/>" type="password"
       class="input2" id="upwd" name="u.upwd" />  
    </td>
  </tr>
   <tr>
    <td align="center" height="30">
      <input type="hidden" class="input button2" id="up" name="up" disabled="disabled">
    </td>
  </tr>
  <tr>
    <td align="center">
    <input type="submit" id="loginbut" name="loginbut" class="button button1" value="登录" ></td>
    </tr>
  <tr>
    <td align="right"><br><a style="color: blue;font-size: 15" href="/firstly1_3/userregist.jsp">没有账号，去注册>>></a>
    <br><br><a style="color:#2F4F4F;font-size: 15" href="/firstly1_3/adminlogin.jsp">管理人员登录入口>>></a>
    </td>
    </tr>
</table>
 </form>
</td>
  </tr>
</table>
<center>
   <br> <a style="color: white">黑龙江省绥化市北林区&nbsp; © 2020-现在 Firstly版权所有</a>
</center>
 </center> </body>
</html>
