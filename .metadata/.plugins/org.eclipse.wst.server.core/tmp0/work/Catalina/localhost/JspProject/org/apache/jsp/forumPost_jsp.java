/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.93
 * Generated at: 2019-04-25 21:32:55 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.shachar.first.*;
import com.shachar.first.*;
import java.util.List;
import com.shachar.first.*;

public final class forumPost_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/dbMembers.jsp", Long.valueOf(1556222222000L));
    _jspx_dependants.put("/header.jsp", Long.valueOf(1556118928000L));
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}
	PostDatabase postDatabase = new PostDatabase();
	TopicDatabase topicDatabase = new TopicDatabase();
	UserDatabase userDatabase = new UserDatabase();
	PollQuestionDatabase pollQuestionDatabase = new PollQuestionDatabase();
	PollAnswerDatabase pollAnswerDatabase = new PollAnswerDatabase();
	

      out.write('\n');
      out.write('\n');

	Post post = postDatabase.getEntityById(Integer.parseInt(request.getParameter("id")));
	User user = userDatabase.getUserByEmail(post.getEmail());

      out.write("\n");
      out.write("<html dir=\"rtl\">\n");
      out.write("<head>\n");
      out.write("<title>FirstForum</title>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"forum\">\n");
      out.write("\t");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");

	if (request.getSession().getAttribute("validUser") == null) {
		request.getSession().setAttribute("validUser", "disconnected");
	}

      out.write("\n");
      out.write("\n");
      out.write("<div class=\"menuBar\">\n");
      out.write("\t");

		String email = (String) request.getSession().getAttribute("currentUserEmail");
		UserDatabase userDatabase2 = new UserDatabase();
		if (request.getSession().getAttribute("validUser").equals("right") && userDatabase2.getUserByEmail(email).getIsAdmin() == 0) {
	
      out.write("\n");
      out.write("\t<a href='oneUser.jsp?email=");
      out.print(email);
      out.write("'><div\n");
      out.write("\t\t\tclass='menuBarOption user_link'></div></a>\n");
      out.write("\t<div class='menuBarOption sign_up_in'>\n");
      out.write("\t\t<a href='dbLogout.jsp'>התנתק</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption sign_up_in\">\n");
      out.write("\t\t<a href=\"poll.jsp\">סקר</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption users_option\">\n");
      out.write("\t\t<a href=\"quiz.jsp\">חידון</a>\n");
      out.write("\t</div>\n");
      out.write("\t");

		}

		else if (request.getSession().getAttribute("validUser").equals("right") && userDatabase2.getUserByEmail(email).getIsAdmin() == 1) {
	
      out.write("\n");
      out.write("\n");
      out.write("\t<a href='oneUser.jsp?email=");
      out.print(email);
      out.write("'><div\n");
      out.write("\t\t\tclass='menuBarOption user_link'></div></a>\n");
      out.write("\t<div class='menuBarOption sign_up_in'>\n");
      out.write("\t\t<a href='dbLogout.jsp'>התנתק</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption sign_up_in\">\n");
      out.write("\t\t<a href=\"poll.jsp\">אפס סקר</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption users_option\">\n");
      out.write("\t\t<a href=\"quiz.jsp\">אפס חידון</a>\n");
      out.write("\t</div>\n");
      out.write("\t");

		} else {
	
      out.write("\n");
      out.write("\t<a href='signIn.jsp'><div class='menuBarOption user_link'></div></a>\n");
      out.write("\t<div class='menuBarOption sign_up_in'>\n");
      out.write("\t\t<a href='register.jsp'>הירשם</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption sign_up_in\">\n");
      out.write("\t\t<a href=\"signIn.jsp\">היכנס</a>\n");
      out.write("\t</div>\n");
      out.write("\t\t<div class=\"menuBarOption users_option\">\n");
      out.write("\t\t<a href=\"quiz.jsp\">חידון</a>\n");
      out.write("\t</div>\n");
      out.write("\t");

		}
	
      out.write('\n');
      out.write('\n');
      out.write('	');

		if (request.getSession().getAttribute("validUser").equals("right")) {
	
      out.write("\n");
      out.write("\t<div class=\"menuBarOption post_option\">\n");
      out.write("\t\t<a href=\"postPost.jsp\">פרסם פוסט</a>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t");

		}

		else {
	
      out.write("\n");
      out.write("\t<div class=\"menuBarOption post_option\">\n");
      out.write("\t\t<a href=\"signIn.jsp\">פרסם פוסט</a>\n");
      out.write("\t</div>\n");
      out.write("\t");

		}
	
      out.write("\n");
      out.write("\t<div class=\"menuBarOption in_forum\">\n");
      out.write("\t\t<a href=\"forumBase.jsp\">פורום</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"menuBarOption users_option\">\n");
      out.write("\t\t<a href=\"users.jsp\">משתמשים</a>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"first-logo\">\n");
      out.write("\t\t<div class=\"menuBarOption\">\n");
      out.write("\t\t\t<a href=\"https://www.firstisrael.org.il/\"><img\n");
      out.write("\t\t\t\tsrc=\"img/FIRSTWordMark_Black.gif\" class=\"first-logo-img\" /></a>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>");
      out.write("\n");
      out.write("\n");
      out.write("\t<div class=\"big_container\">\n");
      out.write("\t\t<table class=\"container\">\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td colspan=\"3\" class=\"header\">");
      out.print(post.getPostTopicName());
      out.write("</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr class=\"user_row\">\n");
      out.write("\t\t\t\t<td class=\"user_td\" colspan=\"3\">\n");
      out.write("\t\t\t\t\t<div class=\"profile_photo\">\n");
      out.write("\t\t\t\t\t\t<img src=\"img/no-profile-image.jpg\" alt=\"user profile photo\" />\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"user_info\">\n");
      out.write("\t\t\t\t\t\t<div class=\"date\">");
      out.print(post.getPostDate());
      out.write("</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"big_font\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"oneUser.jsp\">");
      out.print(user.getUsername());
      out.write("</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"small_font\">\n");
      out.write("\t\t\t\t\t\t\tקבוצה מספר\n");
      out.write("\t\t\t\t\t\t\t");
      out.print(user.getTeamNumber());
      out.write("</div>\n");
      out.write("\t\t\t\t\t\t<div class=\"small_font\">\n");
      out.write("\t\t\t\t\t\t\tצוות\n");
      out.write("\t\t\t\t\t\t\t");
      out.print(user.getTeamJob());
      out.write("</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td>\n");
      out.write("\t\t\t\t\t<div class=\"post_name\">");
      out.print(post.getPostName());
      out.write("</div>\n");
      out.write("\t\t\t\t\t<hr class=\"hr\"/>\n");
      out.write("\t\t\t\t\t<div class=\"post\">");
      out.print(post.getPostText());
      out.write("</div>\n");
      out.write("\t\t\t\t</td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t</table>\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
