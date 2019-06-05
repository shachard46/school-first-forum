
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
        <form
          name="register"
          action="edit.jsp?old=<%=request.getParameter("username")%>"
          onsubmit="return checkAll();"
          method="post"
        >
          <label name="שם משתמש"> שם משתמש</label>
          <input type="text" name="username" value="<%=user.getUsername()%>" onkeyup="checkUsername()"/>
          <label name="סיסמה">סיסמה</label>
          <input type="password" name="password" value="<%=user.getPassword()%>" onkeyup="checkPassword()"/>
          <label name="אשר סיסמה"> אשר סיסמה</label>
          <input
            type="password"
            name="password_confirm"
            value="<%=user.getPassword()%>"
            onkeyup="checkPassword()"
          />
          <label name="כתובת דואר">כתובת דואר</label>
          <input type="text" name="email" value="<%=user.getEmail()%>" onkeyup="checkEmail()"
/>
          <label name="אשר כתובת דואר">אשר כתובת דואר</label>
          <input
            type="text"
            name="email_confirm"
            value="<%=user.getEmail()%>"
            onkeyup="checkEmail()"
          />
          <label name="סוג תחרות">סוג תחרות</label>
          <select name="compType">
            <option value="FRC">FRC</option>
            <option value="FTC">FTC</option>
            <option value="FLL">FLL</option>
          </select>
          <label name="מספר קבוצה">מספר קבוצה</label>
          <input type="text" name="teamNumber" value="<%=user.getTeamNumber()%>" onkeyup="checkTeamNumber()"/>
          <label name="מדינה">מדינה</label>
          <%@include file="countries.jsp" %>
          <label name="תפקיד בקבוצה">תפקיד בקבוצה</label>
          <input type="text" name="teamJob" value="<%=user.getTeamJob()%>" onkeyup="checkTeamJob()"/>
          <label name="תאריך הצטרפות לקבוצה">תאריך הצטרפות לקבוצה</label>
          <input
            type="date"
            name="rookieTime"
            value="<%=user.getRookieTime()%>"
          />
          <input type="reset" value="נקה" class="button clear-button" />
          <input type="submit" value="ערוך" class="button send-button" onclick="checkAll()"/>
        </form>
      </div>
    </div>
    <%@include file="footer.jsp"%>
  </body>
</html>