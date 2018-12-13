package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.User;
import model.Uploads;

public final class userGallery_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
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
      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta charset=\"UTF-8\">\r\n");
      out.write("        <title>LIT Gallery - Gallery Page</title>\r\n");
      out.write("        <link href=\"");
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
      out.write("                        <a class=\"username\" href=\"profile.html\"><img src=\"img/039.jpeg\" alt=\"Profile Picture\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a>\r\n");
      out.write("                        <form action=\"UserController\" class=\"login-form\">  \r\n");
      out.write("                            <input type=\"submit\" name=\"menu\" value=\"Logout\" />\r\n");
      out.write("\r\n");
      out.write("                        </form>\r\n");
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
      out.write("                            <a  href=\"userHome.jsp\">Home</a>\r\n");
      out.write("                            <a href=\"userProfile.jsp\">Profile</a>\r\n");
      out.write("                            <a class=\"active\" href=\"userGallery.jsp\">Gallery</a>\r\n");
      out.write("                            <a href=\"userShowPage.jsp\">Show</a>\r\n");
      out.write("\r\n");
      out.write("                            <a href=\"adminArea.jsp\">Admin Area</a>\r\n");
      out.write("                            <input class=\"search\" type=\"text\" placeholder=\"Search..\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"breadCrumb\">\r\n");
      out.write("                    <ul class=\"breadcrumb\">\r\n");
      out.write("                        <li><a href=\"#\">Home</a></li>\r\n");
      out.write("                        <li><a href=\"#\">Gallery</a></li>\r\n");
      out.write("                        <li>Title</li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"slideshow\">\r\n");
      out.write("                    <img class=\"slideshowImg\" src=\"img/banner2.png\" alt=\"Banner Pic\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"title\">\r\n");
      out.write("                    <h3>Gallery</h3>\r\n");
      out.write("                </div>\r\n");
      out.write("                <form action=\"UploadController\" method=\"get\" class=\"login-form\" name=\"home\"> \r\n");
      out.write("                    <div class=\"flex-containerprofile\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <input type=\"submit\" name=\"menu\" value=\"Add Upload\" />\r\n");
      out.write("                        <input type=\"submit\" name=\"menu\" value=\"Delete Upload\" />\r\n");
      out.write("                        <a href=\"deleteProject.html\"><button>Delete Project</button></a>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <table>\r\n");
      out.write("                        <tr>             \r\n");
      out.write("                            <th>image</th>\r\n");
      out.write("                            <th>short Description</th>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                            <td></td>\r\n");
      out.write("                        </tr>\r\n");
      out.write("\r\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("                    </table>\r\n");
      out.write("                    <div class=\"main\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"galleryItem\">\r\n");
      out.write("                            <div class=\"panelGalleryMain\">\r\n");
      out.write("                                <img src=\"img/039.jpeg\" alt=\"#####\">\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"descRating\">\r\n");
      out.write("                                <div class=\"panelGallery\">\r\n");
      out.write("                                    <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\r\n");
      out.write("                                    <a href=\"userProfile.jsp\">\r\n");
      out.write("                                        <h4 class=\"username\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user.username}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h4>\r\n");
      out.write("\r\n");
      out.write("                                    </a>\r\n");
      out.write("                                    <h4 class=\"Date\">Upload Date</h4>\r\n");
      out.write("                                    <p>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.desription}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\r\n");
      out.write("                                    </p>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"panelGallery\">\r\n");
      out.write("                                    <h3>Comments</h3>\r\n");
      out.write("                                    <form class=\"comments\" method=\"get\">\r\n");
      out.write("                                        <textarea rows=\"4\" cols=\"20\"></textarea>\r\n");
      out.write("                                        <input type=\"submit\" value=\"Submit\" />\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                </div>\r\n");
      out.write("\r\n");
      out.write("                                <div class=\"panelGalleryRate\">\r\n");
      out.write("                                    <h3>Rating</h3>\r\n");
      out.write("                                    <h1>3/5</h1>\r\n");
      out.write("                                    <span class=\"fa fa-star checked\"></span>\r\n");
      out.write("                                    <span class=\"fa fa-star checked\"></span>\r\n");
      out.write("                                    <span class=\"fa fa-star checked\"></span>\r\n");
      out.write("                                    <span class=\"fa fa-star\"></span>\r\n");
      out.write("                                    <span class=\"fa fa-star\"></span>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                </form>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("            .\r\n");
      out.write("            <div class=\"footer\">\r\n");
      out.write("                <p>Terms and Conditions</p>\r\n");
      out.write("                <div class=\"logos\">\r\n");
      out.write("                    <a href=\"#\"><img src=\"img/facebook-logo-circle-transparent.png\" alt=\"Facebook Logo\"></a>\r\n");
      out.write("                    <a href=\"#\"><img src=\"img/twitterTP.png\" alt=\"Twitter Logo\"></a>\r\n");
      out.write("                    <a href=\"#\"><img src=\"img/litTP.png\" alt=\"LIT Logo\"></a>\r\n");
      out.write("                    <a href=\"#\"><img src=\"img/instaTP.jpg.png\" alt=\"Instagram Logo\"></a>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("upload");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${alluploads}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("                  \r\n");
          out.write("                            <tr>                                            \r\n");
          out.write("                                <td ><img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("/images/");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\" alt=\"student work\" width=\"40\" height=\"40\"></td>\r\n");
          out.write("                                <td ><a href=\"NoticeController?menu=getNoticeView&noticeId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.uploadId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.title}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("}</a></td>\r\n");
          out.write("                                <td ><a href=\"NoticeController?menu=updateNotice&noticeId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.uploadId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Update</a></td>\r\n");
          out.write("                                <td ><a href=\"NoticeController?menu=deleteNotice&noticeId=");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${uploads.uploadId}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("\">Delete</a></td>\r\n");
          out.write("                            </tr>\r\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }
}
