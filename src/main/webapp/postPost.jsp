<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ page import="com.shachar.first.*"%> <%@include
file="dbMembers.jsp"%>
<%
	if(JSPUtils.logoutUser(request, response) || JSPUtils.requiresLogin(request, response)){
		return;
	}
	if(request.getMethod().equals("POST")){
		JSPUtils.postPost(request);
		response.sendRedirect("forumBase.jsp");
	}
%>
<!DOCTYPE html>
<html dir="rtl">
  <head>
    <meta charset="UTF-8" />
    <title>FirstForum</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <script type="text/javascript" src="functions.js"></script>
  </head>
  <body>
    <%@include file="header.jsp"%>

    <form
      name="postPost"
      action="postPost.jsp"
      method="post"
      onsubmit="return checkPostPost()"
    >
      <table class="container post_container">
        <tr>
          <td class="textareaTd" colspan="2">
            <label class="post_name_label">שם הפוסט:</label> <br />
            <input name="postName" class="post_post_name" />
          </td>
        </tr>
        <tr>
          <td class="textareaTd" colspan="2">
            <label class="post_name_label">תוכן הפוסט:</label><br />
            <textarea
              rows="10"
              cols="100"
              name="postText"
              class="textarea"
            ></textarea>
          </td>
        </tr>
        <tr>
          <td>
            <select class="post_select" name="postTopicName">
              <% for (Topic topic : DatabaseManager.get().getTopicDatabase().getAllSubTopics()) { %>
              <option value="<%=topic.getName()%>"><%=topic.getName()%></option>
              <% } %>
            </select>
          </td>
          <td><input type="submit" class="post_button" value="פרסם" /></td>
        </tr>
      </table>
    </form>
    <%@include file="footer.jsp"%>
  </body>
</html>