<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	boolean error = false;
	if (request.getMethod().equals("POST")) {
		if(JSPUtils.signIn(request, response)){
			return;
		}else{
			error = true;
		}
	}
%>

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
					if (!error) {
				%>
				<label> שם משתמש</label> <input type='text' name='username'
					placeholder='הכנס שם משתמש' /> <label>סיסמה</label> <input
					type='password' name='password' placeholder='הכנס סיסמה' />

				<%
					} else {
				%>
				<label> שם משתמש - שם משתמש או סיסמא שגויים</label> <input
					type='text' class='wrong' name='username'
					placeholder='הכנס שם משתמש' /> <label>סיסמה - שם משתמש או
					סיסמא שגויים</label> <input type='password' class='wrong' name='password'
					placeholder='הכנס סיסמה' />
				<% 
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
