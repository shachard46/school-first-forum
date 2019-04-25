<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html dir="rtl">
<head>
<title>FirstForum</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body class="signIn">
	<div class="s_r_root">
		<div class="first-logo"></div>
		<div class="s_r_container">
			<form action="dbSignin.jsp" method="post">
				<%
			if(request.getSession().getAttribute("validUser").equals("right") || request.getSession().getAttribute("validUser").equals("disconnected")){
				out.print("\r<label> שם משתמש</label> <input type='text' name='username' placeholder='הכנס שם משתמש'/><label>סיסמה</label> <input type='password' name='password' placeholder='הכנס סיסמה'>");
          
			}else{
				out.print("\r<label> שם משתמש - משתמש לא קיים</label> <input type='text' class='wrong' name='username' placeholder='הכנס שם משתמש' /><label>סיסמה - משתמש לא קיים</label> <input type='password' class='wrong' name='password' placeholder='הכנס סיסמה' />");
			}
          %>
				<input type="submit" value="היכנס" class="button send-button" />
				<span class="register_s_i" >לא רשום? <a href="register.jsp">הירשם!</a></span>
			</form>
		</div>
	</div>
</body>
</html>
