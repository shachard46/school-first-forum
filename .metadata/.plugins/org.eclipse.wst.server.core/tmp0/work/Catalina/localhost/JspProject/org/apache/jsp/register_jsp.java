/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.93
 * Generated at: 2019-04-24 16:51:01 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.shachar.first.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html dir=\"rtl\">\n");
      out.write("<head>\n");
      out.write("<title>FirstForum</title>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\" />\n");
      out.write("<script type=\"text/javascript\" src=\"functions.js\">\n");
      out.write("\t\n");
      out.write("</script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
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
      out.write("\t<div class=\"s_r_root\">\n");
      out.write("\t\t<div class=\"first-logo\"></div>\n");
      out.write("\t\t<!-- <h3>הרשמה</h3> -->\n");
      out.write("\t\t<div class=\"s_r_container\">\n");
      out.write("\t\t\t<form name=\"register\" action=\"dbRegister.jsp\"\n");
      out.write("\t\t\t\tonsubmit=\"checkAll();\" method=\"post\">\n");
      out.write("\t\t\t\t<label> שם משתמש</label> <input type=\"text\" name=\"username\"\n");
      out.write("\t\t\t\t\tplaceholder=\"הכנס שם משתמש\" /> <label>סיסמה</label> <input\n");
      out.write("\t\t\t\t\ttype=\"password\" name=\"password\" placeholder=\"הכנס סיסמה\" /> <label>\n");
      out.write("\t\t\t\t\tאשר סיסמה</label> <input type=\"password\" name=\"password_confirm\"\n");
      out.write("\t\t\t\t\tplaceholder=\"אשר סיסמה\" /> <label>כתובת דואר</label> <input\n");
      out.write("\t\t\t\t\ttype=\"email\" name=\"email\" placeholder=\"הכנס כתובת דואר\" /> <label>אשר\n");
      out.write("\t\t\t\t\tכתובת דואר</label> <input type=\"email\" name=\"email_confirm\"\n");
      out.write("\t\t\t\t\tplaceholder=\"הכנס כתובת דואר\" /> <label>סוג תחרות</label> <select\n");
      out.write("\t\t\t\t\tname=\"compType\">\n");
      out.write("\t\t\t\t\t<option value=\"FRC\">FRC</option>\n");
      out.write("\t\t\t\t\t<option value=\"FTC\">FTC</option>\n");
      out.write("\t\t\t\t\t<option value=\"FLL\">FLL</option>\n");
      out.write("\t\t\t\t</select> <label>מספר קבוצה</label> <input type=\"text\" name=\"teamNumber\"\n");
      out.write("\t\t\t\t\tplaceholder=\"הכנס מספר קבוצה\" /> <label>מדינה</label> <select\n");
      out.write("\t\t\t\t\tname=\"country\">\n");
      out.write("\t\t\t\t\t<option value=\"בחר מיקום\">בחר מיקום</option>\n");
      out.write("\t\t\t\t\t<option value=\"אוגנדה\">אוגנדה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אוזבקיסטן\">אוזבקיסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"אוסטריה\">אוסטריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אוסטרליה\">אוסטרליה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אוקראינה\">אוקראינה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אורוגווי\">אורוגווי</option>\n");
      out.write("\t\t\t\t\t<option value=\"אזרבייג'ן\">אזרבייג'ן</option>\n");
      out.write("\t\t\t\t\t<option value=\"איחוד האמירויות הערביות\">איחוד האמירויות\n");
      out.write("\t\t\t\t\t\tהערביות</option>\n");
      out.write("\t\t\t\t\t<option value=\"איטליה\">איטליה</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי הבהאמה\">איי הבהאמה</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי הבתולה (האמריקניים)\">איי הבתולה\n");
      out.write("\t\t\t\t\t\t(האמריקניים)</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי הבתולה (הבריטיים)\">איי הבתולה\n");
      out.write("\t\t\t\t\t\t(הבריטיים)</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי התעלה\">איי התעלה</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי טורקס וקאיקוס\">איי טורקס וקאיקוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי מרשל\">איי מרשל</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי פארו\">איי פארו</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי פוקלנד\">איי פוקלנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי קומורו\">איי קומורו</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי קוק\">איי קוק</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי קיימן\">איי קיימן</option>\n");
      out.write("\t\t\t\t\t<option value=\"איי שלמה\">איי שלמה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אינדונזיה\">אינדונזיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"איסלנד\">איסלנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"איראן (הרפובליקה האיסלאמית של)\">איראן\n");
      out.write("\t\t\t\t\t\t(הרפובליקה האיסלאמית של)</option>\n");
      out.write("\t\t\t\t\t<option value=\"אירלנד, הרפובליקה של\">אירלנד, הרפובליקה של</option>\n");
      out.write("\t\t\t\t\t<option value=\"אלבניה\">אלבניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אל סלבדור\">אל סלבדור</option>\n");
      out.write("\t\t\t\t\t<option value=\"אנגווילה\">אנגווילה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אנגולה\">אנגולה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אנדורה\">אנדורה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אנטיגואה וברבודה\">אנטיגואה וברבודה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אסטוניה\">אסטוניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אפגניסטן\">אפגניסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"אקוודור\">אקוודור</option>\n");
      out.write("\t\t\t\t\t<option value=\"ארובה\">ארובה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אריתריאה\">אריתריאה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ארמניה\">ארמניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ארצות הברית של אמריקה\">ארצות הברית של\n");
      out.write("\t\t\t\t\t\tאמריקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"אתיופיה\">אתיופיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בהוטן\">בהוטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"בוטסוואנה\">בוטסוואנה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בולגריה\">בולגריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בוליביה\">בוליביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בונייר\">בונייר</option>\n");
      out.write("\t\t\t\t\t<option value=\"בוסניה והרצגובינה\">בוסניה והרצגובינה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בורונדי\">בורונדי</option>\n");
      out.write("\t\t\t\t\t<option value=\"בורקינה פאסו\">בורקינה פאסו</option>\n");
      out.write("\t\t\t\t\t<option value=\"בחריין\">בחריין</option>\n");
      out.write("\t\t\t\t\t<option value=\"בלגיה\">בלגיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"בליז\">בליז</option>\n");
      out.write("\t\t\t\t\t<option value=\"בלרוס\">בלרוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"בנגלדש\">בנגלדש</option>\n");
      out.write("\t\t\t\t\t<option value=\"בנין\">בנין</option>\n");
      out.write("\t\t\t\t\t<option value=\"ברבדוס\">ברבדוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"ברוניי\">ברוניי</option>\n");
      out.write("\t\t\t\t\t<option value=\"ברזיל\">ברזיל</option>\n");
      out.write("\t\t\t\t\t<option value=\"בריטניה\">בריטניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ברמודה\">ברמודה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ג'יבוטי\">ג'יבוטי</option>\n");
      out.write("\t\t\t\t\t<option value=\"ג'מייקה\">ג'מייקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ג'רזי\">ג'רזי</option>\n");
      out.write("\t\t\t\t\t<option value=\"גאורגיה\">גאורגיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גאנה\">גאנה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גבון\">גבון</option>\n");
      out.write("\t\t\t\t\t<option value=\"גואדלופ\">גואדלופ</option>\n");
      out.write("\t\t\t\t\t<option value=\"גואטמלה\">גואטמלה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גואם\">גואם</option>\n");
      out.write("\t\t\t\t\t<option value=\"גיאנה (הבריטית)\">גיאנה (הבריטית)</option>\n");
      out.write("\t\t\t\t\t<option value=\"גיאנה (הצרפתית)\">גיאנה (הצרפתית)</option>\n");
      out.write("\t\t\t\t\t<option value=\"גיברלטר\">גיברלטר</option>\n");
      out.write("\t\t\t\t\t<option value=\"גינאה ביסאו\">גינאה ביסאו</option>\n");
      out.write("\t\t\t\t\t<option value=\"גינאה המשוונית\">גינאה המשוונית</option>\n");
      out.write("\t\t\t\t\t<option value=\"גמביה\">גמביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גרינלנד\">גרינלנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"גרמניה\">גרמניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גרנדה\">גרנדה</option>\n");
      out.write("\t\t\t\t\t<option value=\"גרנזי\">גרנזי</option>\n");
      out.write("\t\t\t\t\t<option value=\"דומיניקה\">דומיניקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"דנמרק\">דנמרק</option>\n");
      out.write("\t\t\t\t\t<option value=\"דרום אפריקה\">דרום אפריקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"דרום סודאן\">דרום סודאן</option>\n");
      out.write("\t\t\t\t\t<option value=\"האיטי\">האיטי</option>\n");
      out.write("\t\t\t\t\t<option value=\"האיים המלדיביים\">האיים המלדיביים</option>\n");
      out.write("\t\t\t\t\t<option value=\"הודו\">הודו</option>\n");
      out.write("\t\t\t\t\t<option value=\"הולנד\">הולנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"הונג קונג\">הונג קונג</option>\n");
      out.write("\t\t\t\t\t<option value=\"הונגריה\">הונגריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"הונדורס\">הונדורס</option>\n");
      out.write("\t\t\t\t\t<option value=\"הפיליפינים\">הפיליפינים</option>\n");
      out.write("\t\t\t\t\t<option value=\"הרפובליקה הדומיניקנית\">הרפובליקה\n");
      out.write("\t\t\t\t\t\tהדומיניקנית</option>\n");
      out.write("\t\t\t\t\t<option value=\"הרפובליקה המרכז אפריקאית\">הרפובליקה המרכז\n");
      out.write("\t\t\t\t\t\tאפריקאית</option>\n");
      out.write("\t\t\t\t\t<option value=\"וייטנאם\">וייטנאם</option>\n");
      out.write("\t\t\t\t\t<option value=\"ונואטו\">ונואטו</option>\n");
      out.write("\t\t\t\t\t<option value=\"ונצואלה\">ונצואלה</option>\n");
      out.write("\t\t\t\t\t<option value=\"זימבבואה\">זימבבואה</option>\n");
      out.write("\t\t\t\t\t<option value=\"זמביה\">זמביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"חוף השנהב\">חוף השנהב</option>\n");
      out.write("\t\t\t\t\t<option value=\"טג'יקיסטן\">טג'יקיסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"טהיטי\">טהיטי</option>\n");
      out.write("\t\t\t\t\t<option value=\"טובלו\">טובלו</option>\n");
      out.write("\t\t\t\t\t<option value=\"טוגו\">טוגו</option>\n");
      out.write("\t\t\t\t\t<option value=\"טונגה\">טונגה</option>\n");
      out.write("\t\t\t\t\t<option value=\"טוניסיה\">טוניסיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"טורטולה\">טורטולה</option>\n");
      out.write("\t\t\t\t\t<option value=\"טורקיה\">טורקיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"טורקמניסטן\">טורקמניסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"טיוואן\">טיוואן</option>\n");
      out.write("\t\t\t\t\t<option value=\"טנזניה\">טנזניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"טרינידד וטובגו\">טרינידד וטובגו</option>\n");
      out.write("\t\t\t\t\t<option value=\"יוון\">יוון</option>\n");
      out.write("\t\t\t\t\t<option value=\"יפן\">יפן</option>\n");
      out.write("\t\t\t\t\t<option value=\"ירדן\">ירדן</option>\n");
      out.write("\t\t\t\t\t<option value=\"ישראל\">ישראל</option>\n");
      out.write("\t\t\t\t\t<option value=\"כווית\">כווית</option>\n");
      out.write("\t\t\t\t\t<option value=\"לאוס\">לאוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"לבנון\">לבנון</option>\n");
      out.write("\t\t\t\t\t<option value=\"לוב \">לוב</option>\n");
      out.write("\t\t\t\t\t<option value=\"לוקסמבורג\">לוקסמבורג</option>\n");
      out.write("\t\t\t\t\t<option value=\"לטביה\">לטביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ליבריה\">ליבריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ליטא\">ליטא</option>\n");
      out.write("\t\t\t\t\t<option value=\"ליכטנשטיין\">ליכטנשטיין</option>\n");
      out.write("\t\t\t\t\t<option value=\"לסותו\">לסותו</option>\n");
      out.write("\t\t\t\t\t<option value=\"מאוריטניה\">מאוריטניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"מאוריציוס\">מאוריציוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"מאלי\">מאלי</option>\n");
      out.write("\t\t\t\t\t<option value=\"מדגסקר\">מדגסקר</option>\n");
      out.write("\t\t\t\t\t<option value=\"מוזמביק\">מוזמביק</option>\n");
      out.write("\t\t\t\t\t<option value=\"מולדובה, הרפובליקה של\">מולדובה, הרפובליקה\n");
      out.write("\t\t\t\t\t\tשל</option>\n");
      out.write("\t\t\t\t\t<option value=\"מונגוליה\">מונגוליה</option>\n");
      out.write("\t\t\t\t\t<option value=\"מונסראט\">מונסראט</option>\n");
      out.write("\t\t\t\t\t<option value=\"מונקו\">מונקו</option>\n");
      out.write("\t\t\t\t\t<option value=\"מזרח טימור\">מזרח טימור</option>\n");
      out.write("\t\t\t\t\t<option value=\"מיוט\">מיוט</option>\n");
      out.write("\t\t\t\t\t<option value=\"מיינמאר\">מיינמאר</option>\n");
      out.write("\t\t\t\t\t<option value=\"מלאווי\">מלאווי</option>\n");
      out.write("\t\t\t\t\t<option value=\"מלזיה\">מלזיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"מלטה\">מלטה</option>\n");
      out.write("\t\t\t\t\t<option value=\"מצרים\">מצרים</option>\n");
      out.write("\t\t\t\t\t<option value=\"מקאו\">מקאו</option>\n");
      out.write("\t\t\t\t\t<option value=\"מקדוניה, הרפובליקה של\">מקדוניה, הרפובליקה\n");
      out.write("\t\t\t\t\t\tשל</option>\n");
      out.write("\t\t\t\t\t<option value=\"מקסיקו\">מקסיקו</option>\n");
      out.write("\t\t\t\t\t<option value=\"מרוקו\">מרוקו</option>\n");
      out.write("\t\t\t\t\t<option value=\"מרטיניק\">מרטיניק</option>\n");
      out.write("\t\t\t\t\t<option value=\"נאורו, הרפובליקה של\">נאורו, הרפובליקה של</option>\n");
      out.write("\t\t\t\t\t<option value=\"נורווגיה\">נורווגיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ניגריה\">ניגריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ניואה\">ניואה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ניו זילנד\">ניו זילנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"ניז'ר\">ניז'ר</option>\n");
      out.write("\t\t\t\t\t<option value=\"ניקרגואה\">ניקרגואה</option>\n");
      out.write("\t\t\t\t\t<option value=\"נמיביה\">נמיביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"נפאל\">נפאל</option>\n");
      out.write("\t\t\t\t\t<option value=\"סאו טומה ופרינסיפה\">סאו טומה ופרינסיפה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סודן\">סודן</option>\n");
      out.write("\t\t\t\t\t<option value=\"סוואזילנד\">סוואזילנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"סומליה\">סומליה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סוריה\">סוריה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סורינם\">סורינם</option>\n");
      out.write("\t\t\t\t\t<option value=\"סייפן\">סייפן</option>\n");
      out.write("\t\t\t\t\t<option value=\"סיירה לאונה\">סיירה לאונה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סיישל\">סיישל</option>\n");
      out.write("\t\t\t\t\t<option value=\"סין, הרפובליקה העממית של\">סין, הרפובליקה\n");
      out.write("\t\t\t\t\t\tהעממית של</option>\n");
      out.write("\t\t\t\t\t<option value=\"סינגפור\">סינגפור</option>\n");
      out.write("\t\t\t\t\t<option value=\"סלובניה\">סלובניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סלובקיה\">סלובקיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סמואה\">סמואה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סמואה האמריקנית\">סמואה האמריקנית</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנגל\">סנגל</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט אוסטטיוס\">סנט אוסטטיוס</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט ברתלמי\">סנט ברתלמי</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט ג'והן\">סנט ג'והן</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט וינסנט והגרנדינים\">סנט וינסנט\n");
      out.write("\t\t\t\t\t\tוהגרנדינים</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט לושיה\">סנט לושיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט מרטן\">סנט מרטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט קיטס ונוויס\">סנט קיטס ונוויס</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט קרואה\">סנט קרואה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סנט תומס\">סנט תומס</option>\n");
      out.write("\t\t\t\t\t<option value=\"ספרד\">ספרד</option>\n");
      out.write("\t\t\t\t\t<option value=\"סרביה\">סרביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"סרי לנקה\">סרי לנקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"עומאן\">עומאן</option>\n");
      out.write("\t\t\t\t\t<option value=\"עירק\">עירק</option>\n");
      out.write("\t\t\t\t\t<option value=\"ערב הסעודית\">ערב הסעודית</option>\n");
      out.write("\t\t\t\t\t<option value=\"פולין\">פולין</option>\n");
      out.write("\t\t\t\t\t<option value=\"פולינזיה הצרפתית\">פולינזיה הצרפתית</option>\n");
      out.write("\t\t\t\t\t<option value=\"פורטוגל\">פורטוגל</option>\n");
      out.write("\t\t\t\t\t<option value=\"פורטו ריקו\">פורטו ריקו</option>\n");
      out.write("\t\t\t\t\t<option value=\"פיג'י\">פיג'י</option>\n");
      out.write("\t\t\t\t\t<option value=\"פינלנד\">פינלנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"פנמה\">פנמה</option>\n");
      out.write("\t\t\t\t\t<option value=\"פפואה גינאה החדשה\">פפואה גינאה החדשה</option>\n");
      out.write("\t\t\t\t\t<option value=\"פקיסטן\">פקיסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"פרגוואי\">פרגוואי</option>\n");
      out.write("\t\t\t\t\t<option value=\"פרו\">פרו</option>\n");
      out.write("\t\t\t\t\t<option value=\"צ'אד\">צ'אד</option>\n");
      out.write("\t\t\t\t\t<option value=\"צ'ילה\">צ'ילה</option>\n");
      out.write("\t\t\t\t\t<option value=\"צ'כיה\">צ'כיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"צרפת\">צרפת</option>\n");
      out.write("\t\t\t\t\t<option value=\"קאטאר\">קאטאר</option>\n");
      out.write("\t\t\t\t\t<option value=\"קובה\">קובה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קולומביה\">קולומביה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קונגו\">קונגו</option>\n");
      out.write("\t\t\t\t\t<option value=\"קונגו\">קונגו</option>\n");
      out.write("\t\t\t\t\t<option value=\"קוסובו\">קוסובו</option>\n");
      out.write("\t\t\t\t\t<option value=\"קוסטה ריקה\">קוסטה ריקה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קוראסאו\">קוראסאו</option>\n");
      out.write("\t\t\t\t\t<option value=\"קוריאה\">קוריאה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קוריאה\">קוריאה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קזחסטן\">קזחסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"קייפ ורדה\">קייפ ורדה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קירגיזסטן\">קירגיזסטן</option>\n");
      out.write("\t\t\t\t\t<option value=\"קיריבטי\">קיריבטי</option>\n");
      out.write("\t\t\t\t\t<option value=\"קלדוניה החדשה\">קלדוניה החדשה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קמבודיה\">קמבודיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קמרון\">קמרון</option>\n");
      out.write("\t\t\t\t\t<option value=\"קנדה\">קנדה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קניה\">קניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"קפריסין\">קפריסין</option>\n");
      out.write("\t\t\t\t\t<option value=\"קרואטיה\">קרואטיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"ראוניון, האי\">ראוניון, האי</option>\n");
      out.write("\t\t\t\t\t<option value=\"רואנדה\">רואנדה</option>\n");
      out.write("\t\t\t\t\t<option value=\"רומניה\">רומניה</option>\n");
      out.write("\t\t\t\t\t<option value=\"רוסיה\">רוסיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"רפובליקת גינאה\">רפובליקת גינאה</option>\n");
      out.write("\t\t\t\t\t<option value=\"שוודיה\">שוודיה</option>\n");
      out.write("\t\t\t\t\t<option value=\"שוויץ\">שוויץ</option>\n");
      out.write("\t\t\t\t\t<option value=\"תאילנד\">תאילנד</option>\n");
      out.write("\t\t\t\t\t<option value=\"תימן\">תימן</option>\n");
      out.write("\t\t\t\t</select> <label>תפקיד בקבוצה</label> <input type=\"text\" name=\"teamJob\"\n");
      out.write("\t\t\t\t\tplaceholder=\"הכנס תפקיד בקבוצה\" /> <label>תאריך הצטרפות\n");
      out.write("\t\t\t\t\tלקבוצה</label> <input type=\"date\" name=\"rookieTime\"\n");
      out.write("\t\t\t\t\tplaceholder=\"הכנס תאריך הצטרפות לקבוצה\" /> <input type=\"reset\"\n");
      out.write("\t\t\t\t\tvalue=\"נקה\" class=\"button clear-button\" /> <input type=\"submit\"\n");
      out.write("\t\t\t\t\tvalue=\"היכנס\" class=\"button send-button\" />\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
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
