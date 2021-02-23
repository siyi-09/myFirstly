<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
 <!-- 判断是否登录 -->
<%
if(session.getAttribute("loginsession")=="1"){
}
else{response.setHeader("Refresh","0;url=/firstly1_3/adminlogin.jsp");} 
%> 

<html lang="en">
  <head>
    <title>修改用户信息</title>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/admincss.css" />
  </head>
<body bgcolor=black>
 <table width="100%" height="100%" border="0" align="center">
  <tr>
    <td colspan="2" height="8%" style="background-color: #f1f1f1"> 
     <jsp:include page="/bar/admintitile.jsp"/>
     
   </td>
  </tr>
  <tr>
    <td height="95%" width="20%" style="background-color: #f1f1f1"><jsp:include page="/bar/adminbar.jsp"/></td>
    <td align="center" width="80%" class="td1">
        <table width="100%" height="100%" border="0" >
        <tr>
        <td align="center">
        <!-- 表单 -->
        <c:forEach items="${listUser}" var="l">
        <form method="post" name="form3">
    <table width="70%" border="0" height="95%" style="color: white;">
    <tr>
      <td width="30%" align="right">ID：<br><br></td>
      <td><input disabled="disabled" style="background-color: transparent;color: white;
      border-radius: 5px;border:none;padding: 10px 30px;font-size: 20px" name="u.uid" 
      id="uid" type="text" value="${l.uid}"/>
      <br><br></td>
      
      <td width="10%">
		<select name="oreason" class="s1">
         <option value=" ">选择修改原因</option>
         <option value="完善信息">完善信息</option>
         <option value="修改违规信息">修改违规信息</option>
         <option value="用户重置密码">用户重置密码</option>
         <option value="其他">其他</option>
        </select>
		</td>
    </tr>
    <tr>
      <td align="right">用户名：<br><br></td>
      <td>
      <c:forEach items="${listAdmin}" var="ad">
      <input name="aid" type="hidden" value="${ad.aid }"/>
      <input name="aname" type="hidden" value="${ad.aname }"/>
      </c:forEach>
      <input style="border-radius: 5px;border:1px solid green;padding: 10px 30px"
       name="u.uname" type="text" value="${l.uname}"/>
      <br><br></td>
    </tr>
    <tr>
      <td align="right">密码：<br><br></td>
      <td>
      <input style="border-radius: 5px;border:1px solid green;padding: 10px 30px" name="u.upwd" type="text" value="${l.upwd}"/>
      <br><br></td>
    </tr>
    <tr>
      <td align="right">性别：<br><br></td>
      <td><input type="radio" name="u.usex" value="男" <c:if test="${l.usex=='男'||l.usex==null}">checked="checked"</c:if>>男
          <input type="radio" name="u.usex" value="女" <c:if test="${l.usex=='女'}">checked="checked"</c:if>>女<br><br></td>
    </tr>
    <tr>
      <td align="right">年龄：<br><br></td>
      <td>
          <select name="u.uage" style="border-radius: 5px;border:1px solid green;padding: 7px 10px" >
          <c:if test="${l.uage!=null}">
          <option value="${l.uage}">${l.uage}</option>
          </c:if>
          <c:if test="${l.uage==null}"><option>---</option></c:if>
          <c:forEach var="i" begin="0" end="100"><!--相当于for(i=0;i<=100;i++) -->
          <option value="${i}">${i}</option><!--取i的值 -->
          </c:forEach>
          </select>
      <br><br></td>
    </tr>
    <tr>
      <td align="right">地址：<br><br></td>
      <td>  <input type="hidden" style="background-color: transparent;color: white;border: none;" value="${l.uaddr}" id="addr-show" name="u.uaddr">

        <!--省份选择-->
            <select name="prov" class="s1" id="prov" onchange="showCity(this)">
                <option>--省</option>
 
            </select>
 
            <!--城市选择-->
            <select name="city" class="s1" id="city" onchange="showCountry(this)">
                <option>--市</option>
            </select>
 
            <!--县区选择-->
            <select name="country" class="s1" id="country" onchange="selecCountry(this)">
                <option>--县</option>
            </select>  <input type="text" disabled="disabled" style="border-radius: 5px; font-size:15px; background-color: yellow;color: red;border: none;width: 40;height: 25" value="*必填"><br><br>
            
            </td>
    </tr>
    <tr>
      <td align="right">个人说明：</td>
      <td><textarea name="u.udesc" id="textarea"  cols="30" rows="4">${l.udesc}</textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="center"><br>
<input type="submit" name="submit" onClick="showAddr()" class="buttonb button1" id="button-show" value="确认修改"> </td>
    </tr>
</table>
</form></c:forEach>
<script type="text/javascript" src="/firstly1_3/js/city.js"></script>
<script type="text/javascript" src="/firstly1_3/js/upusercity.js"></script>
    </td>
  </tr>
</table>
</td></tr>
</table> 
</body>
</html>

