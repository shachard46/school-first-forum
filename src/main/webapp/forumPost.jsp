<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page import="com.shachar.first.*"%> <%@ page
import="static com.shachar.first.Utils.*"%> <%@include file="dbMembers.jsp"%> <%
Post post =
postDatabase.getEntityById(Integer.parseInt(request.getParameter("id"))); User
user = userDatabase.getUserByEmail(post.getEmail()); %>
<html dir="rtl">
  <head>
    <title>FirstForum</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>

  <body class="forum">
    <%@include file="header.jsp"%>

    <div class="big_container">
      <table class="container">
        <tr>
          <td colspan="3" class="header"><%=post.getPostTopicName()%></td>
        </tr>
        <tr class="user_row">
          <td class="user_td" colspan="3">
            <div class="profile_photo">
              <img src="img/no-profile-image.jpg" alt="user profile photo" />
            </div>
            <div class="user_info">
              <div class="date" dir="ltr">
                <%=formatDate(post.getPostDate())%>
              </div>
              <div class="big_font">
                <a href="oneUser.jsp"><%=user.getUsername()%></a>
              </div>
              <div class="small_font">
                קבוצה מספר <%=user.getTeamNumber()%>
              </div>
              <div class="small_font">
                צוות <%=user.getTeamJob()%>
              </div>
            </div>
          </td>
        </tr>

        <tr>
          <td>
            <div class="post_name"><%=post.getPostName()%></div>
            <hr class="hr" />
            <div class="post"><%=post.getPostText()%></div>
          </td>
        </tr>
      </table>
    </div>
  </body>
</html>
