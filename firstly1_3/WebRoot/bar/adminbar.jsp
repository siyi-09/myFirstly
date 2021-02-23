<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String s=session.getAttribute("current").toString();
int cur=Integer.parseInt(s);
System.out.print(cur);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'adminbar.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <style type="text/css">
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    top: 0;
    overflow: hidden;
    width: 100%;
    background-color: #f1f1f1;
}

li a {
    display: block;
    color: #000;
    padding: 40px 40px 20px 30px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>
<body>
<ul>
  <li><a style="border-radius: 20px;" class="<%if(cur==1){out.print("active");}else{} %>" href="oper.action">主页</a></li>
  <li><a style="border-radius: 20px;" class="<%if(cur==2){out.print("active");}else{} %>" href="/firstly1_3/useroper.action">管理用户</a></li>
<%--   <li><a style="border-radius: 20px;" class="<%if(cur==3){out.print("active");}else{} %>" href="oper.action">管理论坛分类(未完成不可用)</a></li> --%>
  <li><a style="border-radius: 20px;" class="<%if(cur==4){out.print("active");}else{} %>" href="/firstly1_3/aselectTopicAll">管理帖子</a></li>
  <li><a style="border-radius: 20px;" class="<%if(cur==5){out.print("active");}else{} %>" href="/firstly1_3/seladmin.action">管理员</a></li>
</ul>
</body>
</html>
