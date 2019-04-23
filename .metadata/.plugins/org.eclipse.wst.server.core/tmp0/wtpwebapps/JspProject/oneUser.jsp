<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="dbMembers.jsp"%>

<%
	User user = userDatabase.getUserByEmail((String) request.getParameter("email"));
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="users">
	<%@include file="header.jsp"%>

	<div class="big_container">
		<table class="container">
			<tr class="user_row">
				<td class="user_td" colspan="6">
					<div class="profile_photo">
						<img src="img/no-profile-image.jpg" alt="user profile photo" />
					</div>
					<div class="user_info">
						<div class="big_font"><%=user.getUsername()%></div>
						<div class="small_font">
							קבוצה מספר
							<%=user.getTeamNumber()%></div>
						<div class="small_font">
							צוות
							<%=user.getTeamJob()%></div>
						<div class="date">
							נראה לאחרונה ב:
							<%=user.getLastSeen()%></div>

					</div>
				</td>
			</tr>
			<tr class="spacer"></tr>
			<tr class="info_head">
				<td colspan="3"><div class="panel_header header">פרטים
						בפורום</div></td>
			</tr>
			<tr class="info_head">
				<td colspan="3">
					<div class="panel">
						<div class="small_font">הצטרף בתאריך: *תאריך*</div>
						<div class="small_font">
							פוסטים:
							<%=postDatabase.getUserPostsByEmail(user.getEmail()).size()%></div>
					</div>
				</td>
			</tr>
			<tr class="spacer"></tr>
			<tr class="info_head">
				<td colspan="3"><div class="panel_header header">מידע
						נוסף</div></td>
			</tr>
			<tr class="info_head">
				<td colspan="3">
					<div class="panel">
						<div class="small_font">
							מיקום:
							<%=user.getCountry()%></div>
						<div class="small_font">
							מספר קבוצה:
							<%=user.getTeamNumber()%></div>
						<div class="small_font">
							תחרות:
							<%=user.getCompType()%></div>
						<div class="small_font">
							תפקיד בקבוצה:
							<%=user.getTeamJob()%></div>
						<div class="small_font">
							שנת הצטרפות:
							<%=user.getRookieTime()%></div>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
