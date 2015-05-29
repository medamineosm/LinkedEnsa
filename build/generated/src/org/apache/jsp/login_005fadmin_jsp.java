package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_005fadmin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("    <title>ENSAK CV</title>\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"dist/css/bootstrap.css\" />\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\r\n");
      out.write("    <script src=\"js/modernizr.custom.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"login-body\">\r\n");
      out.write("\r\n");
      out.write("<!-- formulaire login -->\r\n");
      out.write("<div id=\"login\" class=\"login-form\">\r\n");
      out.write("    <div class=\"login-content\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"col-lg-12 logo-banner\">\r\n");
      out.write("                <h1>CV ENSAK</h1>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("            <div class=\"login form-content\">\r\n");
      out.write("            \r\n");
      out.write("                <div class=\"col-lg-12\">\r\n");
      out.write("                    <h2>LOGIN FOR PROF</h2>\r\n");
      out.write("                    <form class=\"bs-example form-horizontal\" method=\"POST\" action=\"AuthentificationServlet\">\r\n");
      out.write("                      <fieldset>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                          <div class=\"col-lg-12\">\r\n");
      out.write("                            <input class=\"form-control\" name=\"login\" placeholder=\"Username\" type=\"text\">\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                          <div class=\"col-lg-12\">\r\n");
      out.write("                            <input class=\"form-control\" name=\"password\" placeholder=\"Password\" type=\"password\">\r\n");
      out.write("                          </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <button id=\"button\" type=\"submit\" data-loading-text=\"...\" class=\"btn btn-submit\">LOGIN</button>\r\n");
      out.write("                      </fieldset>\r\n");
      out.write("                    </form>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <footer>\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"col-lg-6\">\r\n");
      out.write("                <p>Copyright Â© 2014 CV ENSAK, All Rights Reserved.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </footer>\r\n");
      out.write("</div>\r\n");
      out.write("<!--END formulaire login -->\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
