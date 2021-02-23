<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>
  <head>
    <base href="<%=basePath%>">
    <title>用户登录</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/logincss.css" />
    <script type="text/javascript">
    function checkId(){
var up1=document.getElementById("aid").value;
if(up1 == ""){return false;  }
else{return true;}
}

function checkpwd3(){
var up2=document.getElementById("apwd").value;
if(up2 == ""){  
              return false;  
}else{

return true;
}  
 }
 
function reg(form1){  
                    var aid=checkId();
                    var apwd=checkpwd3();
                if(aid&&apwd){
                   form1.action="adminLogin";                   
                }else{
                   alert("填完了?");
                   window.location.reload();
                   return false;
             }               
}
    </script> 
  </head>
  
  <body>
    <table width="100%" height="95%" border="0">
  <tr>
    <td>
<embed src="/firstly1_3/images/logindh.swf" width="100%" height="100%" type="application/x-shockwave-flash" wmode="transparent"></embed>
</td>
    <td width="30%" bgcolor="white" style="opacity:0.9;">
    <form name="form1" method="post" onsubmit="reg(this)">
    <table width="400" align="center" border="0" style="font-size: 20px;color: black;">
  <tr>
    <td colspan="2" align="center">
    <a href="selectTopicAll">
    <img src="images/logol1.png"></img></a><br><br>
    <img src="/firstly1_3/images/b2b.png"  width="100%" height="5"></img><br><br>
    </td>
    </tr>
    <tr>
    <td align="center" height="30">
    
<c:set var="message" scope="session" value="${amerror}"/>
<c:if test="${message!= null and message!='null'}"/>
<input disabled="disabled" size="20" class="input button2" value="<c:out value="${message}"/>" id="message" name="message">
   </td>
  </tr>
  <tr>
  <tr>
    <td align="center">
    <c:set var="aid" scope="session" value="${aiderror}"/>
<%--  <c:if test="${aid!= null and aid!='null'}"/>  --%>
<input placeholder="ID" type="text" oninput="value=value.replace(/[^\d]/g,'')" class="input2" value="<c:out value="${aid}"/>" type="text" id="aid" name="a.aid" onblur="checkId()"/>
   </td>
  </tr>
  <tr>
    <td align="center">
<c:set var="apwd" scope="session" value="${apwderror}"/>
<c:if test="${apwd!= null and apwd!='null'}"/>
      <input placeholder="密码" onblur="checkpwd3()" value="<c:out value="${apwd}"/>" type="password" class="input2" id="apwd" name="a.apwd" />  
    </td>
  </tr>
   <tr>
    <td align="center" height="30">
      
    </td>
  </tr>
  <tr>
    <td align="center">
    <input type="submit" id="loginbut" name="loginbut" class="button button1" value="登录" ></td>
    </tr>
  <tr>
    <td align="right">
   <br><br><a style="color:#2F4F4F;font-size: 15" href="/firstly1_3/userlogin.jsp">用户登录入口>>></a>
    </td>
    </tr>
</table>
 </form>
</td>
  </tr>
</table>
<center>
    <a style="color: white">黑龙江省绥化市北林区&nbsp; © 2020-现在 Firstly版权所有</a>
</center>
  </body>
</html>
