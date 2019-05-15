
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="com.shachar.first.*"%>
<%@ page import="java.util.*"%>
<%@include file="dbMembers.jsp"%>
<%if(curUser != null){%>
<!DOCTYPE html>
<%
	User user = userDatabase.getUserByUsername(request.getParameter("username"));
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
          action="dbEdit.jsp?old=<%=request.getParameter("username")%>"
          onsubmit="return checkAll();"
          method="post"
        >
          <label> שם משתמש</label>
          <input type="text" name="username" value="<%=user.getUsername()%>" />
          <label>סיסמה</label>
          <input type="password" name="password" value="<%=user.getPassword()%>" />
          <label> אשר סיסמה</label>
          <input
            type="password"
            name="password_confirm"
            value="<%=user.getPassword()%>"
          />
          <label>כתובת דואר</label>
          <input type="text" name="email" value="<%=user.getEmail()%>" />
          <label>אשר כתובת דואר</label>
          <input
            type="text"
            name="email_confirm"
            value="<%=user.getEmail()%>"
          />
          <label>סוג תחרות</label>
          <select name="compType">
            <option value="FRC">FRC</option>
            <option value="FTC">FTC</option>
            <option value="FLL">FLL</option>
          </select>
          <label>מספר קבוצה</label>
          <input type="text" name="teamNumber" value="<%=user.getTeamNumber()%>" />
          <label>מדינה</label>
          <%@include file="countries.jsp" %>
          <label>תפקיד בקבוצה</label>
          <input type="text" name="teamJob" value="<%=user.getTeamJob()%>" />
          <label>תאריך הצטרפות לקבוצה</label>
          <input
            type="date"
            name="rookieTime"
            value="<%=user.getRookieTime()%>"
          />
          <input type="reset" value="נקה" class="button clear-button" />
          <input type="submit" value="ערוך" class="button send-button" />
        </form>
      </div>
    </div>
  </body>
</html>
<%}else{
	response.sendRedirect("signIn.jsp");
}
%>