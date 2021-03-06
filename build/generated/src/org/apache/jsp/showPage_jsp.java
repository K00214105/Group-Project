package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.User;

public final class showPage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>LIT Gallery - Show Page</title>\r\n");
      out.write("          <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/css/styles.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css?family=Roboto\" rel=\"stylesheet\">\r\n");
      out.write("        <!-- Add icon library -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"icon\" type=\"image/png\" href=\"img/sss.png\">\r\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width , initial-scale=1.0\">\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"pageWrapper\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"grid\">\r\n");
      out.write("                <div class=\"header\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"loginSignUp\">\r\n");
      out.write("                        <form action=\"UserController\" class=\"login-form\">                                      \r\n");
      out.write("                                <input type=\"submit\" name=\"menu\" value=\"Login\" />              \r\n");
      out.write("                                <input type=\"submit\" name=\"menu\" value=\"SignUp\" />\r\n");
      out.write("\r\n");
      out.write("                            </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"logo\">\r\n");
      out.write("                        <a href=\"index.html\">\r\n");
      out.write("                            <img class=\"logohome\" src=\"img/logo1.png\" alt=\"LIT Gallery Logo\">\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"nav\">\r\n");
      out.write("                        <label for=\"toggle\">&#9776;</label>\r\n");
      out.write("                        <input type=\"checkbox\" id=\"toggle\" />\r\n");
      out.write("                        <div class=\"menu\">\r\n");
      out.write("                            <a  href=\"home.jsp\">Home</a>\r\n");
      out.write("                            <a href=\"profile.jsp\">Profile</a>\r\n");
      out.write("                            <a href=\"gallery.jsp\">Gallery</a>\r\n");
      out.write("                            <a class=\"active\" href=\"showPage.jsp\">Show</a>\r\n");
      out.write("\r\n");
      out.write("                            <a  href=\"adminArea.jsp\">Admin Area</a>\r\n");
      out.write("                            <input class=\"search\" type=\"text\" placeholder=\"Search..\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"breadCrumb\">\r\n");
      out.write("                    <ul class=\"breadcrumb\">\r\n");
      out.write("                        <li><a href=\"index.html\">Home</a></li>\r\n");
      out.write("                        <li><a href=\"showpage.html\">Shows</a></li>\r\n");
      out.write("\r\n");
      out.write("                        <li>Show Page</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"slideshow\">\r\n");
      out.write("                    <img class=\"slideshowImg\" src=\"img/banner2.png\" alt=\"Banner Pic\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <h3>Live Shows</h3>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"filters\">\r\n");
      out.write("                    <div class=\"form\">\r\n");
      out.write("                        <form class=\"filter\">\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Date</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Course</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Tags</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"main\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/039.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title is 28 chars</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> Description is 300 chars - adf db cunt dggdb adgb adgb wob bgb gd is gay adgb adgb adb adgb </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("                            <a href=\"enterAShow.html\"><button>Submit Entry</button></a>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("                            <a href=\"deleteProject.html\">\r\n");
      out.write("                                <button>Delete Entry</button>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/041.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb a</p>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <a href=\"enterAShow.html\"><button>Submit Entry</button></a>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("                            <a href=\"enterAShow.html\">\r\n");
      out.write("                                <button>Delete Entry</button>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/083.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/086.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <h3>Upcomming Shows</h3>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"filters\">\r\n");
      out.write("                    <div class=\"form\">\r\n");
      out.write("                        <form class=\"filter\">\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Date</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Course</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Tags</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"main\">\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/039.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/041.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/083.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/086.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <h3>Recent Shows</h3>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"filters\">\r\n");
      out.write("                    <div class=\"form\">\r\n");
      out.write("                        <form class=\"filter\">\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Date</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Course</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                            <fieldset>\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    <select class=\"myList\">\r\n");
      out.write("                                        <option>Tags</option>\r\n");
      out.write("                                        <option value=\"2\">two</option>\r\n");
      out.write("                                        <option value=\"3\">three</option>\r\n");
      out.write("                                        <option value=\"4\">four</option>\r\n");
      out.write("                                    </select>\r\n");
      out.write("                                </p>\r\n");
      out.write("                            </fieldset>\r\n");
      out.write("                        </form>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"main\">\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/039.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/041.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/083.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"panel\">\r\n");
      out.write("                        <img src=\"img/086.jpeg\" alt=\"#####\">\r\n");
      out.write("                        <h3>Show Title</h3>\r\n");
      out.write("                        <h3>Date of show</h3>\r\n");
      out.write("                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Submit Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"flex-containershowpanel\">\r\n");
      out.write("\r\n");
      out.write("                            <button>Delete Entry</button>\r\n");
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"footer\">\r\n");
      out.write("                    <p>Terms and Conditions</p>\r\n");
      out.write("                    <div class=\"logos\">\r\n");
      out.write("                        <a href=\"#\"><img src=\"img/facebook-logo-circle-transparent.png\" alt=\"Facebook Logo\"></a>\r\n");
      out.write("                        <a href=\"#\"><img src=\"img/twitterTP.png\" alt=\"Twitter Logo\"></a>\r\n");
      out.write("                        <a href=\"#\"><img src=\"img/litTP.png\" alt=\"LIT Logo\"></a>\r\n");
      out.write("                        <a href=\"#\"><img src=\"img/instaTP.jpg.png\" alt=\"Instagram Logo\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
