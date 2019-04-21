<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%><!DOCTYPE html>

<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
%>
<%
	UserDatabase userDatabase = new UserDatabase();
	PostDatabase postDatabase = new PostDatabase();
	User user = userDatabase.getUserByEmail((String) request.getSession().getAttribute("currentUserEmail"));
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="users">
	<div class="menuBar">
		<%
			if (request.getSession().getAttribute("validUser").equals("right")) {
		%>
		<a href='oneUser.jsp'><div class='menuBarOption user_link'></div></a>
		<div class='menuBarOption sign_up_in'>
			<a href='dbLogout.jsp'>התנתק</a>
		</div>

		<%
			}

			else {
		%>

		<div class='menuBarOption user_link'></div>
		<div class='menuBarOption sign_up_in'>
			<a href='register.jsp'>הירשם</a>
		</div>
		<%
			}
		%>
		<div class="menuBarOption sign_up_in">
			<a href="signIn.jsp">היכנס</a>
		</div>
		<div class="menuBarOption users_option">
			<a href="quiz.jsp">חידון</a>
		</div>
		<%
			if (request.getSession().getAttribute("validUser").equals("right")) {
		%>
		<div class="menuBarOption post_option">
			<a href="postPost.jsp">פרסם פוסט</a>
		</div>

		<%
			}

			else {
		%>
		<div class="menuBarOption post_option">פרסם פוסט</div>
		<%
			}
		%>
		<div class="menuBarOption in_forum">
			<a href="forumBase.jsp">פורום</a>
		</div>
		<div class="menuBarOption users_option">
			<a href="users.jsp">משתמשים</a>
		</div>
		<div class="first-logo">
			<div class="menuBarOption">
				<a href="https://www.firstisrael.org.il/"><img
					src="img/FIRSTWordMark_Black.gif" class="first-logo-img" /></a>
			</div>
		</div>
	</div>
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
