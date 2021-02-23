<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>Firstly用户注册</title>
<script type="text/javascript" charset="utf-8"
	src="//g.alicdn.com/sd/ncpc/nc.js?t=2015052012"></script>
<link rel="stylesheet" type="text/css"
	href="/firstly1_3/Styles/registcss.css" />
</head>
<body>
	<table width="100%" height="100%" border="0">
		<tr>
			<td style="font-size: 40px;color: white"><img
				src="./images/logol2.png"></img>用户注册 <br>
			<img src="./images/b2w.png" width="100%" height="5"></img>
			</td>
		</tr>
		<tr>
			<td align="center">

				<form name="form1" method="post" onsubmit="reg(this)">
					<table width="80%" height="400" border="0" align="center"
						bgcolor="white" style="font-size: 20px;color: black;opacity:0.8;">
						<tr>
							<td align="right" width="43%">用户名&nbsp;</td>
							<td align="left"><input placeholder="1-8位，中英文及数字"
								style="padding: 8px 20px" type="text" name="u.uname" id="username"
								onblur="checkName()" />
								<input value="" type="hidden" class="input button3" id="un"
								name="un" disabled="disabled">
								</td>
						</tr>
						<tr>
							<td align="right">密码&nbsp;</td>
							<td align="left"><s:token></s:token> 
							<input placeholder="6-16位，字母及数字" style="padding: 8px 20px"
								type="password" name="u.upwd" id="upwd" onblur="checkpwd()" />
								<input value="" type="hidden" class="input button3" id="up"
								name="up" disabled="disabled"> 
							</td>
						</tr>
						<tr>
							<td align="right">确认密码&nbsp;</td>
							<td align="left"><input style="padding: 8px 20px"
								type="password" name="aupwd" id="aupwd" onblur="checkapwd()" />
								<input size="20" type="hidden" class="input button3" id="aup"
								name="aup" disabled="disabled">
							</td>
						</tr>
						<tr>
							<td align="right">拖动验证&nbsp;</td>
							<td align="left">
								<div id="your-dom-id" class="nc-container"></div> <!--No-Captcha渲染的位置，其中 class 中必须包含 nc-container-->
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center"><input type="submit"
								name="regist" id="regist" disabled="disabled"
								class="button button1" value="注册"><br>
							<br> <a style="color: blue;font-size: 15"
								href="/firstly1_3/userlogin.jsp">已有账号，去登录>>></a><br>
							<br> <a style="color:#2F4F4F;font-size: 10"
								href="selectTopicAll">点此回到首页</a></td>
						</tr>
					</table>
				</form></td>
		</tr>
		<tr>
			<td align="center" style="color: white">黑龙江省绥化市北林区&nbsp; ©
				2020-现在 Firstly.com 版权所有</td>
		</tr>
	</table>
</body>
<script type="text/javascript" src="/firstly1_3/js/registjs.js"></script>
</html>
