<%@page import="java.util.Date"%> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@page
import="com.shachar.first.*" %>
<% String errorMessage = null;
	if(request.getMethod().equals("POST")){ 
		if(JSPUtils.registerUser(request, response)){
			return; 
		} else {
			errorMessage = "אימייל או שם משתמש כבר קיימים במערכת..."; 
		}
	}
%>
<!DOCTYPE html>

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
        <form
          name="register"
          action="register.jsp"
          onsubmit="return checkAll();"
          method="post"
        >
          <%if(!Utils.isEmptyOrNull(errorMessage)){%> <%= errorMessage %><br />
          <%} %>
          <label name="שם משתמש">שם משתמש</label>
          <input
            type="text"
            name="username"
            placeholder="הכנס שם משתמש"
            onkeyup="checkUsername()"
          />
          <label name="סיסמה">סיסמה</label>
          <input
            type="password"
            name="password"
            placeholder="הכנס סיסמה"
            onkeyup="checkPassword()"
          />
          <label name="אשר סיסמה"> אשר סיסמה</label>
          <input
            type="password"
            name="password_confirm"
            placeholder="אשר סיסמה"
            onkeyup="checkPassword()"
          />
          <label name="כתובת דואר">כתובת דואר</label>
          <input
            type="text"
            name="email"
            placeholder="הכנס כתובת דואר"
            onkeyup="checkEmail()"
          />
          <label name="אשר כתובת דואר">אשר כתובת דואר</label>
          <input
            type="text"
            name="email_confirm"
            placeholder="הכנס כתובת דואר"
            onkeyup="checkEmail()"
          />
          <label name="סוג תחרות">סוג תחרות</label>
          <select name="compType">
            <option value="FRC">FRC</option>
            <option value="FTC">FTC</option>
            <option value="FLL">FLL</option>
          </select>
          <label name="מספר קבוצה">מספר קבוצה</label>
          <input
            type="text"
            name="teamNumber"
            placeholder="הכנס מספר קבוצה"
            onkeyup="checkTeamNumber()"
          />
          <label name="מדינה">מדינה</label>
          <%@include file="countries.jsp" %>
          <label name="תפקיד בקבוצה">תפקיד בקבוצה</label>
          <input
            type="text"
            name="teamJob"
            placeholder="הכנס תפקיד בקבוצה"
            onkeyup="checkTeamJob()"
          />
          <label name="תאריך הצטרפות לקבוצה">תאריך הצטרפות לקבוצה</label>
          <input
            type="date"
            name="rookieTime"
            placeholder="הכנס תאריך הצטרפות לקבוצה"
            value="<%=Utils.formatDateForRegister(new Date())%>"
          />
          <input type="reset" value="נקה" class="button clear-button" />
          <input
            type="submit"
            value="היכנס"
            class="button send-button"
            onclick="checkAll()"
          />
        </form>
      </div>
    </div>
    <%@include file="footer.jsp"%>
  </body>
</html>
