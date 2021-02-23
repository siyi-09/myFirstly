<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%if(session.getAttribute("uloginsession")=="1"){ }
else{
response.setHeader("Refresh","0;url=/firstly1_3/userlogin.jsp");
} %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'upUser.jsp' starting page</title>
    <jsp:include page="/bar/title.jsp"/>
    <link rel="stylesheet" type="text/css" href="/firstly1_3/Styles/upUser.css" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <body>
  <center>
   	<c:forEach items="${listUser}" var="l">
        <form method="post" name="updateuser" action="updateUser">
    <table width="70%" border="0" height="80%" style="background-image:url(/firstly1_3/images/t1.jpg);
    color:black;background-color: pink;border-radius: 25px;">
    <tr>
      <td align="right">用户名：<br></td>
      <td>
      <input style="border-radius: 5px;border:1px solid green;padding: 10px 30px"
       name="u.uname" type="text" value="${l.uname}"/>
       <input type="hidden" style="background-color: transparent;color: white;
      border-radius: 5px;border:none;padding: 10px 30px;font-size: 20px" name="u.uid" 
      id="uid" type="text" value="${l.uid}"/>
      <br></td>
    </tr>
    <tr>
      <td align="right">密码：<br></td>
      <td>
      <input style="border-radius: 5px;border:1px solid green;padding: 10px 30px" name="u.upwd" type="text" value="${l.upwd}"/>
      <br></td>
    </tr>
    <tr>
      <td align="right">性别：<br></td>
      <td><input type="radio" name="u.usex" value="男" 
          <c:if test="${l.usex=='男'||l.usex==null}">checked="checked"</c:if>>男
          <input type="radio" name="u.usex" value="女" 
          <c:if test="${l.usex=='女'}">checked="checked"</c:if>>女<br></td>
    </tr>
    <tr>
      <td align="right">年龄：<br></td>
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
      <br></td>
    </tr>
    <tr>
      <td align="right">地址：<br></td>
      <td>  <input type="hidden" style="background-color: transparent;color: white;
      border: none;" value="${l.uaddr}" id="addr-show" name="u.uaddr">

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
            </select>  <input type="text" disabled="disabled" style="border-radius: 5px;
             font-size:15px; background-color:yellow;color:green;border: none;width: 40;
             height: 25" value="*必填"><br>
            
            </td>
    </tr>
    <tr>
      <td align="right">个人说明：</td>
      <td><textarea name="u.udesc" id="textarea"  cols="30" rows="4">${l.udesc}</textarea>
      </td>
    </tr>
    <tr>
      <td colspan="2" align="right">
<input type="submit" name="submit" onClick="showAddr()" class="buttonb button1" id="button-show" value="确认修改"> </td>
    </tr>
</table>
</form>
</c:forEach>
</center>
<script type="text/javascript" src="/firstly1_3/js/city.js"></script>
<script type="text/javascript" src="/firstly1_3/js/upusercity.js"></script>
  </body>
</html>
