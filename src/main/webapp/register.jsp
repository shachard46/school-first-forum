<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
          action="dbRegister.jsp"
          onsubmit="return checkAll();"
          method="post"
        >
          <label> שם משתמש</label>
          <input type="text" name="username" placeholder="הכנס שם משתמש" />
          <label>סיסמה</label>
          <input type="password" name="password" placeholder="הכנס סיסמה" />
          <label> אשר סיסמה</label>
          <input
            type="password"
            name="password_confirm"
            placeholder="אשר סיסמה"
          />
          <label>כתובת דואר</label>
          <input type="text" name="email" placeholder="הכנס כתובת דואר" />
          <label>אשר כתובת דואר</label>
          <input
            type="text"
            name="email_confirm"
            placeholder="הכנס כתובת דואר"
          />
          <label>סוג תחרות</label>
          <select name="compType">
            <option value="FRC">FRC</option>
            <option value="FTC">FTC</option>
            <option value="FLL">FLL</option>
          </select>
          <label>מספר קבוצה</label>
          <input type="text" name="teamNumber" placeholder="הכנס מספר קבוצה" />
          <label>מדינה</label>
          <%@include file="countries.jsp" %>
          <label>תפקיד בקבוצה</label>
          <input type="text" name="teamJob" placeholder="הכנס תפקיד בקבוצה" />
          <label>תאריך הצטרפות לקבוצה</label>
          <input
            type="date"
            name="rookieTime"
            placeholder="הכנס תאריך הצטרפות לקבוצה"
          />
          <input type="reset" value="נקה" class="button clear-button" />
          <input type="submit" value="היכנס" class="button send-button" />
        </form>
      </div>
    </div>
  </body>
</html>
