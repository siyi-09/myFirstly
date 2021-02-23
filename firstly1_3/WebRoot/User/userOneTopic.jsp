<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/"; %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>文章</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="/firstly1_3/Styles/Myindex.css" />
</head>

<body>
	<center>
		<c:forEach items="${TopicOne}" var="t">
			<table width="70%" border="0" class="myintb1"
				style="background-image:url(/firstly1_3/bgimages/${t.tbg});border-radius: 20px;">
				<tbody>
					<tr>
						<td class="myintd5"><br>
							<h1 style="color: white;">${t.ttop}</h1></td>
						<td colspan="2" class="myintd6"><a
							href="selectTopicById?t.tid=${t.tid}&&t.tuid=${t.tuid}"> <img
								src="./images/bjw.png" width="23" height="23"></img>
						</a>
						</td>
					</tr>
					<tr>

						<td class="myintd4">
							<%-- 版块ID：${t.tsid} --%>&nbsp;&nbsp;${t.uname}</td>
						<td colspan="2" width="20%" class="myintd6"><fmt:formatDate
								value="${t.ttime}" pattern="yyyy/MM/dd HH:mm:ss" /></td>
					</tr>
					<tr>
						<td colspan="3" style="background-color: white;opacity:0.8;"><textarea
								name="t.tdesc" id="textarea" cols="100%" rows="10"
								style="border-radius: 25px;font-family:sans-serif;padding: 10px;
								border:none;outline:none;font-size: 15px;">${t.tdesc}</textarea>
						</td>
					</tr>
					<tr>
						<td colspan="3"><s:iterator value="clist" status="status">
								<table width="100%" border="0" class="myintd7">
									<tbody>
										<tr>
											<td width="15%" style="background-color: 49f6ab;opacity:0.9;border-radius: 20px;">
												评论者ID：<s:property value="cuid" /></td>
											<td width="77%" style="text-align: left" class="myintd1">
											<s:property value="content" /></td>
											<td width="8%" style="text-align: right" class="myintd1">
												<c:set var="cuid" scope="session" value='<s:property value="cuid"/>' />
													 <c:set var="tuid" scope="session" value="${t.tuid}" /> 
													 <c:forEach items="${Userone}" var="s">
													 <c:set var="uid" scope="session" value="${s.uid}" />
													 <c:if test="${cuid==uid or tuid==uid}">
														<a href="delComment.action?c.cid=<s:property value="cid"/>&&c.ctid=<s:property value="ctid"/>">
														<img src="/firstly1_3/images/sc21.png" width="20" height="20"></img> </a>
													</c:if>
												</c:forEach>
											</td>
										</tr>
										<tr><td colspan="3"><hr color="pink">
										</td></tr>
									</tbody>
								</table>
							</s:iterator>
						</td>
					</tr>
				</tbody>
			</table>
		</c:forEach>
	</center>
</body>
</html>