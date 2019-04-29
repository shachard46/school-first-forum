<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<!DOCTYPE html>

<%
	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
%>

<div class="menuBar">
	<%
		String email = (String) request.getSession().getAttribute("currentUserEmail");
		UserDatabase userDatabase2 = new UserDatabase();
		if (request.getSession().getAttribute("validUser").equals("right")
				&& userDatabase2.getUserByEmail(email).getIsAdmin() == 0) {
	%>
	<a href='oneUser.jsp?email=<%=email%>'><div
			class='menuBarOption user_link'></div></a>
	<div class='menuBarOption sign_up_in'>
		<a href='dbLogout.jsp'>התנתק</a>
	</div>
	<div class="menuBarOption sign_up_in">
		<a href="poll.jsp">סקר</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="quiz.jsp">חידון</a>
	</div>
	<%
		}

		else if (request.getSession().getAttribute("validUser").equals("right")
				&& userDatabase2.getUserByEmail(email).getIsAdmin() == 1) {
	%>

	<a href='oneUser.jsp?email=<%=email%>'><div
			class='menuBarOption user_link'></div></a>
	<div class='menuBarOption sign_up_in'>
		<a href='dbLogout.jsp'>התנתק</a>
	</div>
	<div class="menuBarOption sign_up_in">
		<a href="dbClearPoll.jsp">אפס סקר</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="quiz.jsp">אפס חידון</a>
	</div>
	<%
		} else {
	%>
	<a href='signIn.jsp'><div class='menuBarOption user_link'></div></a>
	<div class='menuBarOption sign_up_in'>
		<a href='register.jsp'>הירשם</a>
	</div>
	<div class="menuBarOption sign_up_in">
		<a href="signIn.jsp">היכנס</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="quiz.jsp">חידון</a>
	</div>
	<%
		}
	%>

	<%
		if (request.getSession().getAttribute("validUser").equals("right")) {
	%>
	<div class="menuBarOption post_option">
		<a href="postPost.jsp">פרסם פוסט</a>
	</div>

	<div class="menuBarOption in_forum">
		<a href="forumBase.jsp">פורום</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="users.jsp">משתמשים</a>
	</div>

	<%
		}

		else {
	%>
	<div class="menuBarOption post_option">
		<a href="signIn.jsp">פרסם פוסט</a>
	</div>

	<div class="menuBarOption in_forum">
		<a href="forumBase.jsp">פורום</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="signIn.jsp">משתמשים</a>
	</div>
	<%
		}
	%>
	<div class="first-logo">
		<div class="menuBarOption">
			<a href="https://www.firstisrael.org.il/"><img
				src="img/FIRSTWordMark_Black.gif" class="first-logo-img" /></a>
		</div>
	</div>
</div>