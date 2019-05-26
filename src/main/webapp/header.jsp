<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<!DOCTYPE html>

<div class="menuBar">
<script type="text/javascript" src="functions.js"></script>
	<%
		String email = (String) request.getSession().getAttribute("currentUserEmail");
		if (JSPUtils.getCurrentUser(session) != null
				&& !JSPUtils.getCurrentUser(session).getIsAdmin()) {
	%>
	<a href='oneUser.jsp?email=<%=email%>' class='menuBarOption user_link'></a>
	<div class='menuBarOption sign_up_in'>
		<a href='<%=request.getContextPath()%>?logout=true'>התנתק</a>
	</div>
	<div class="menuBarOption sign_up_in">
		<a href="poll.jsp">סקר</a>
	</div>
	<%
		}

		else if (JSPUtils.getCurrentUser(session) != null
				&& JSPUtils.getCurrentUser(session).getIsAdmin()) {
	%>

	<a href='oneUser.jsp?email=<%=email%>'><div
			class='menuBarOption user_link'></div></a>
	<div class='menuBarOption sign_up_in'>
		<a href='<%=request.getContextPath()%>?logout=true'>התנתק</a>
	</div>
	<div class="menuBarOption sign_up_in">
		<a href="clearPoll.jsp">אפס סקר</a>
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
	<%
		}
	%>
	<div class="menuBarOption users_option">
		<a href="quiz.jsp">חידון</a>
	</div>
	<div class="menuBarOption post_option">
		<a href="postPost.jsp">פרסם פוסט</a>
	</div>

	<div class="menuBarOption in_forum">
		<a href="forumBase.jsp">פורום</a>
	</div>
	<div class="menuBarOption users_option">
		<a href="users.jsp">משתמשים</a>
	</div>

	<div class="first-logo">
		<div class="menuBarOption">
			<a onclick="openFirstPage()"><img
				src="img/FIRSTWordMark_Black.gif" class="first-logo-img" /></a>
		</div>
	</div>
</div>