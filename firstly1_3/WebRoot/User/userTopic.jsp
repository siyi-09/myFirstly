<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'userTopic.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css"
	href="/firstly1_3/Styles/topic.css" />
</head>
<body>
	<s:iterator value="tlist" status="status">
		<form action="commentpoly.action" method="get">
			<table width="100%" border="0"
				style="background-image:url(./bgimages/<s:property value="tbg" />);
				background-color: black;
				background-repeat: no-repeat;
				background-position: center;
				border-radius: 25px;
				background-size:100%;">
				<tbody>
					<tr>
						<td height="30" colspan="2" style="text-align: left">
								<a style="color: white;font-size:20px;font-style: inherit;" href="SeCommentByTid.action?c.ctid=<s:property value="tid"/>">
								&nbsp;&nbsp;
								<s:property value="ttop" />
								</a>
							</td>
						<td width="100px" style="text-align: right;color: white;font-size: 10px;">
								<s:date name="ttime" format="yyyy-MM-dd"/>&nbsp;&nbsp;&nbsp;<br>
							
						</td>
					</tr>
					<tr>
						<td width="60" height="29" colspan="4" style="text-align: left">
							<textarea name="u.udesc" disabled="disabled" id="textarea"
								style="border-radius: 25px;color: white; font-family:sans-serif; padding: 10px;
								border:none;outline:none;background-color: transparent;
								font-size: 13px;"
								cols="100%" rows="4"> <s:property value="tdesc" />
							</textarea></td>
					</tr>
					<tr>
						<c:forEach items="${Userone}" var="m">      
							<td width="799" height="29" colspan="3" style="text-align: right">
							<!-- 评论 --> 
							 <input type="hidden" name="c.ctid" value="<s:property value="tid"/>"> 
								<input type="hidden" name="c.cuid" value="${m.uid }">
								<input name="c.content" class="develop">&nbsp;&nbsp;
							    <c:set var="tuid" scope="session" value='<s:property value="tid"/>' />
								<c:set var="uid" scope="session" value="${m.uid }" />
								<!-- 删除、编辑按钮 -->
								<c:if test='${tuid==uid}'>
								<a href="selectTopicById?t.tid=<s:property value="tid"/>&&t.tuid=<s:property value="tuid"/>">
								   <img src="./images/shezw.png" width="23" height="23"></img>
								</a>&nbsp;
								<a href="selectTopicById?t.tid=<s:property value="tid"/>&&t.tuid=<s:property value="tuid"/>">
								   <img src="./images/bjw.png" width="23" height="23"></img>
								</a>
								<a href="delTopic.action?t.tid=<s:property value="tid"/>">
									<img src="./images/scw.png" width="23" height="23"></img>
								</a>&nbsp;</c:if>
							</td>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			<s:token></s:token>
		</form>

	</s:iterator>

</body>
</html>
