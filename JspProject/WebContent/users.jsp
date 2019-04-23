<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.*"%>
<%@include file="dbMembers.jsp"%>

<%
	List<User> users = userDatabase.getAllEntities();
%>
<!DOCTYPE html>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="users">
	<%@include file="header.jsp"%>
	
	<div class="big_container">
		<table class="container">
			<tr>
				<td class="header big_td">שם משתמש</td>
				<td class="header small_td">פוסטים</td>
				<td class="header med_td">תחרות</td>
				<td class="header med_td">קבוצה</td>
				<td class="header big_td">תפקיד בקבוצה</td>
				<td class="header med_td">שנת הצטרפות</td>
			</tr>
			<%
				for (User user : users) {
			%><tr>
				<td class='big_td'><a
					href='oneUser.jsp?email=<%=user.getEmail()%>'><%=user.getUsername()%></a></td>
				<td class='small_td'><%=postDatabase.getUserPostsByEmail(user.getEmail()).size()%></td>
				<td class='med_td'><%=user.getCompType()%></td>
				<td class='med_td'><%=user.getTeamNumber()%></td>
				<td class='big_td'><%=user.getTeamJob()%></td>
				<td class='med_td'><%=user.getRookieTime()%></td>
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
