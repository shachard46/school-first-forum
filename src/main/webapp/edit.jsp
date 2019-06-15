<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.*"%>
<%
	if(JSPUtils.logoutUser(request, response) || JSPUtils.requiresLogin(request, response)){
		return;
  	}
	if(request.getMethod().equals("POST")){
		JSPUtils.editUser(request);
		response.sendRedirect("users.jsp");
    return;
	}
%>
<!DOCTYPE html>
<%
	User user = DatabaseManager.get().getUserDatabase().getUserByUsername(request.getParameter("username"));
%>
<html dir="rtl">

<head>
	<title>FirstForum</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript" src="functions.js"></script>
</head>

<body>
	<%@include file="header.jsp"%>

	<div class="s_r_root">
		<div class="first-logo"></div>
		<!-- <h3>הרשמה</h3> -->
		<div class="s_r_container">
			<form name="register" action="edit.jsp?old=<%=request.getParameter("username")%>"
				onsubmit="return checkAll();" method="post">
				<label name="שם משתמש"> שם משתמש</label>
				<input type="text" name="username" value="<%=user.getUsername()%>" onkeyup="checkUsername()" />
				<label name="סיסמה">סיסמה</label>
				<input type="password" name="password" value="<%=user.getPassword()%>" onkeyup="checkPassword()" />
				<label name="אשר סיסמה"> אשר סיסמה</label>
				<input type="password" name="password_confirm" value="<%=user.getPassword()%>"
					onkeyup="checkPassword()" />
				<label name="כתובת דואר">כתובת דואר</label>
				<input type="text" name="email" value="<%=user.getEmail()%>" onkeyup="checkEmail()" />
				<label name="אשר כתובת דואר">אשר כתובת דואר</label>
				<input type="text" name="email_confirm" value="<%=user.getEmail()%>" onkeyup="checkEmail()" />
				<label name="סוג תחרות">סוג תחרות</label>
				<select name="compType">
					<option value="FRC" <%=user.getCompType().equals("FRC") ?"selected=selected":""%>>FRC</option>
					<option value="FTC" <%=user.getCompType().equals("FTC") ?"selected=selected":""%>>FTC</option>
					<option value="FLL" <%=user.getCompType().equals("FLL") ?"selected=selected":""%>>FLL</option>
				</select>
				<label name="מספר קבוצה">מספר קבוצה</label>
				<input type="text" name="teamNumber" value="<%=user.getTeamNumber()%>" onkeyup="checkTeamNumber()" />
				<label name="מדינה">מדינה</label>
				<select name="country">
					<option value="ארצות הברית" <%=user.getCountry().equals("ארצות הברית") ?"selected=selected":""%>>
						ארצות הברית</option>
					<option value="ברזיל" <%=user.getCountry().equals("ברזיל") ?"selected=selected":""%>>ברזיל</option>
					<option value="קנדה" <%=user.getCountry().equals("קנדה") ?"selected=selected":""%>>קנדה</option>
					<option value="מקסיקו" <%=user.getCountry().equals("מקסיקו") ?"selected=selected":""%>>מקסיקו
					</option>
					<option value="פרו" <%=user.getCountry().equals("פרו") ?"selected=selected":""%>>פרו</option>
					<option value="צ'ילי" <%=user.getCountry().equals("צ'ילי") ?"selected=selected":""%>>צ'ילי</option>
					<option value="אוסטריה" <%=user.getCountry().equals("אוסטריה") ?"selected=selected":""%>>אוסטריה
					</option>
					<option value="דנמרק" <%=user.getCountry().equals("דנמרק") ?"selected=selected":""%>>דנמרק</option>
					<option value="צרפת" <%=user.getCountry().equals("צרפת") ?"selected=selected":""%>>צרפת</option>
					<option value="גרמניה" <%=user.getCountry().equals("גרמניה") ?"selected=selected":""%>>גרמניה
					</option>
					<option value="הממלכה המאוחדת"
						<%=user.getCountry().equals("הממלכה המאוחדת") ?"selected=selected":""%>>הממלכה המאוחדת</option>
					<option value="בנלוקס" <%=user.getCountry().equals("בנלוקס") ?"selected=selected":""%>>בנלוקס
					</option>
					<option value="טורקיה" <%=user.getCountry().equals("טורקיה") ?"selected=selected":""%>>טורקיה
					</option>
					<option value="שבדיה" <%=user.getCountry().equals("שבדיה") ?"selected=selected":""%>>שבדיה</option>
					<option value="נורווגיה" <%=user.getCountry().equals("נורווגיה") ?"selected=selected":""%>>נורווגיה
					</option>
					<option value="שוויץ" <%=user.getCountry().equals("שוויץ") ?"selected=selected":""%>>שוויץ</option>
					<option value="ספרד" <%=user.getCountry().equals("ספרד") ?"selected=selected":""%>>ספרד</option>
					<option value="איסלנד" <%=user.getCountry().equals("איסלנד") ?"selected=selected":""%>>איסלנד
					</option>
					<option value="פורטוגל" <%=user.getCountry().equals("פורטוגל") ?"selected=selected":""%>>פורטוגל
					</option>
					<option value="ליטא" <%=user.getCountry().equals("ליטא") ?"selected=selected":""%>>ליטא</option>
					<option value="הונגריה" <%=user.getCountry().equals("הונגריה") ?"selected=selected":""%>>הונגריה
					</option>
					<option value="אוסטרליה" <%=user.getCountry().equals("אוסטרליה") ?"selected=selected":""%>>אוסטרליה
					</option>
					<option value="סין" <%=user.getCountry().equals("סין") ?"selected=selected":""%>>סין</option>
					<option value="יפן" <%=user.getCountry().equals("יפן") ?"selected=selected":""%>>יפן</option>
					<option value="הונג קונג" <%=user.getCountry().equals("הונג קונג") ?"selected=selected":""%>>הונג
						קונג</option>
					<option value="ישראל" <%=user.getCountry().equals("ישראל") ?"selected=selected":""%>>ישראל</option>
					<option value="יפן" <%=user.getCountry().equals("יפן") ?"selected=selected":""%>>יפן</option>
					<option value="קוריאה" <%=user.getCountry().equals("קוריאה") ?"selected=selected":""%>>קוריאה
					</option>
					<option value="ירדן" <%=user.getCountry().equals("ירדן") ?"selected=selected":""%>>ירדן</option>
					<option value="סינגפור" <%=user.getCountry().equals("סינגפור") ?"selected=selected":""%>>סינגפור
					</option>
					<option value="ערב הסעודית" <%=user.getCountry().equals("ערב הסעודית") ?"selected=selected":""%>>ערב
						הסעודית</option>
					<option value="טייוואן" <%=user.getCountry().equals("טייוואן") ?"selected=selected":""%>>טייוואן
					</option>
					<option value="מצרים" <%=user.getCountry().equals("מצרים") ?"selected=selected":""%>>מצרים</option>
					<option value="דרום אפריקה" <%=user.getCountry().equals("דרום אפריקה") ?"selected=selected":""%>>
						דרום אפריקה</option>
					<option value="הולנד" <%=user.getCountry().equals("הולנד") ?"selected=selected":""%>>הולנד</option>
				</select>
				<label name="תפקיד בקבוצה">תפקיד בקבוצה</label>
				<input type="text" name="teamJob" value="<%=user.getTeamJob()%>" onkeyup="checkTeamJob()" />
				<label name="תאריך הצטרפות לקבוצה">תאריך הצטרפות לקבוצה</label>
				<input type="date" name="rookieTime" value="<%=user.getRookieTime()%>" />
				<input type="reset" value="נקה" class="button clear-button" />
				<input type="submit" value="ערוך" class="button send-button" onclick="checkAll()" />
			</form>
		</div>
	</div>
	<%@include file="footer.jsp"%>
</body>

</html>