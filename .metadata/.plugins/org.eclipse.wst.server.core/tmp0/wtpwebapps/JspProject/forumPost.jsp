<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>

<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
%>
<%
	PostDatabase postDatabase = new PostDatabase();
	TopicDatabase topicDatabase = new TopicDatabase();
	UserDatabase userDatabase = new UserDatabase();
	Post post = postDatabase.getEntityById(Integer.parseInt(request.getParameter("id")));
	User user = userDatabase.getUserByEmail(post.getEmail());
%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body class="forum">
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
			<tr>
				<td colspan="3" class="header"><%=post.getPostTopicName()%></td>
			</tr>
			<tr class="user_row">
				<td class="user_td" colspan="3">
					<div class="profile_photo">
						<img src="img/no-profile-image.jpg" alt="user profile photo" />
					</div>
					<div class="user_info">
						<div class="date"><%=post.getPostDate()%></div>
						<div class="big_font">
							<a href="oneUser.jsp"><%=user.getUsername()%></a>
						</div>
						<div class="small_font">
							קבוצה מספר
							<%=user.getTeamNumber()%></div>
						<div class="small_font">
							צוות
							<%=user.getTeamJob()%></div>
					</div>
				</td>
			</tr>

			<tr>
				<td>
					<div class="post_name"><%=post.getPostName()%></div>
					<hr />
					<div class="post"><%=post.getPostText()%></div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>
