<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body class="signIn">
	<%@include file="header.jsp"%>

	<div class="s_r_root">
		<div class="first-logo"></div>
		<div class="s_r_container">
			<form action="signIn.jsp" method="post">
				<%
					if (Utils.isEmptyOrNull((String) session.getAttribute("currentUserEmail"))) {
				%>
				<label> שם משתמש</label> <input type='text' name='username'
					placeholder='הכנס שם משתמש' /> <label>סיסמה</label> <input
					type='password' name='password' placeholder='הכנס סיסמה' />

				<%
					} else if (session.getAttribute("currentUserEmail").equals("none")) {
				%>
				<label> שם משתמש - שם משתמש או סיסמא שגויים</label> <input
					type='text' class='wrong' name='username'
					placeholder='הכנס שם משתמש' /> <label>סיסמה - שם משתמש או
					סיסמא שגויים</label> <input type='password' class='wrong' name='password'
					placeholder='הכנס סיסמה' />
				<%
					} else {
						response.sendRedirect("forumBase.jsp");
						return;
					}
				%>
				<input type="submit" value="היכנס" class="button send-button" /> <span
					class="register_s_i">לא רשום? <a href="register.jsp">הירשם!</a></span>
			</form>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>
</html>
<%
	if (request.getMethod().equals("POST")) {
		JSPUtils.signIn(request, response);
	}
%>