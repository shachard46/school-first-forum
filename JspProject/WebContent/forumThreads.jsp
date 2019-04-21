<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.List"%>

<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
%>
<%
	PostDatabase postDatabase = new PostDatabase();
	TopicDatabase topicDatabase = new TopicDatabase();
	UserDatabase userDatabase = new UserDatabase();
	Topic topic = topicDatabase.getEntityById(Integer.parseInt(request.getParameter("topic_id")));
	List<Post> posts = postDatabase.getPostsByTopic(topic.getName());
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
				<td colspan="3" class="header"><%=topic.getName()%></td>
			</tr>
			<tr>
				<%
					if (posts != null) {
						for (Post post : posts) {
							User user = userDatabase.getUserByEmail(post.getEmail());
				%>
				<td class="sub_topic"><a
					href="forumPost.jsp?id=<%=post.getId()%>"><%=post.getPostName()%></a></td>
				<td class="last_post"><a href="oneUser.jsp"><%=user.getUsername()%></a></td>
				<td class="post_amount"><%=post.getPostDate()%></td>
				<%
					}
					}
				%>
			</tr>
		</table>
	</div>
</body>
</html>
