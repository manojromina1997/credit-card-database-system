package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<title>National Bank</title>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("<meta name=\"description\" content=\"\" />\n");
      out.write("<meta name=\"author\" content=\"http://bootstraptaste.com\" />\n");
      out.write("<!-- css -->\n");
      out.write("<link href=\"lib/css/bootstrap.min.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"lib/css/fancybox/jquery.fancybox.css\" rel=\"stylesheet\">\n");
      out.write("<link href=\"lib/css/jcarousel.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"lib/css/flexslider.css\" rel=\"stylesheet\" />\n");
      out.write("<link href=\"lib/css/style.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- Theme skin -->\n");
      out.write("<link href=\"lib/skins/default.css\" rel=\"stylesheet\" />\n");
      out.write("\n");
      out.write("<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("      <script src=\"http://html5shim.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("    <![endif]-->\n");
      out.write("<style>\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"wrapper\">\n");
      out.write("\t<!-- start header -->\n");
      out.write("\t<header>\n");
      out.write("        <div class=\"navbar navbar-default navbar-static-top\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"mainboot.jsp\"><span>National</span> Bank</a>\n");
      out.write("                </div>\n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\t</header>\n");
      out.write("\t<!-- end header -->\n");
      out.write("\n");
      out.write("\t<section class=\"callaction\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t<div class=\"col-lg-12\">\n");
      out.write("\t\t\t\t<div class=\"big-cta\">\n");
      out.write("\t\t\t\t\t<div class=\"cta-text\">\n");
      out.write("\t\t\t\t\t\t<h2>Admin Login</h2>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t</section>\n");
      out.write("\t<section id=\"content\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"row\">\n");
      out.write("\t\t\t     <form class=\"form-horizontal\" method=\"post\" action=\"admin_login\" >\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"username\" class=\"col-md-5 control-label\">Username</label>\n");
      out.write("    <div class=\" col-md-3\">\n");
      out.write("      <input type=\"text\" class=\"form-control\" name=\"username\" placeholder=\"Username\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <label for=\"password\" class=\"col-lg-5 control-label\">Password</label>\n");
      out.write("    <div class=\"col-lg-3\">\n");
      out.write("      <input type=\"password\" class=\"form-control\" name=\"password\" placeholder=\"Password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <div class=\"col-sm-offset-2 col-lg-10\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"form-group\">\n");
      out.write("    <div class=\"col-sm-offset-5 col-lg-5\">\n");
      out.write("      <button type=\"submit\" class=\"btn btn-success\">Sign in</button><br>\n");
      out.write("      <div style=\"color:red\">\n");
      out.write("      ");
if(request.getParameter("msg")==null){}else{
      out.write("\n");
      out.write("      ");
      out.print(request.getParameter("msg"));
      out.write("\n");
      out.write("      ");
}
      out.write("\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("        </section>\n");
      out.write("\t\t<!-- divider -->\n");
      out.write("\n");
      out.write("\t\t<!-- end divider -->\n");
      out.write("\t\t<!-- Portfolio Projects -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</div>\n");
      out.write("\t</section>\n");
      out.write("\t<footer>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-6\">\n");
      out.write("\t\t\t\t\t<div class=\"copyright\">\n");
      out.write("\t\t\t\t\t\t<p>\n");
      out.write("                                                <h4><span>&copy;  National Bank 2016 All right reserved. </span> </h4>\n");
      out.write("\t\t\t\t\t\t</p>\n");
      out.write("                        <!-- \n");
      out.write("                            All links in the footer should remain intact. \n");
      out.write("                            Licenseing information is available at: http://bootstraptaste.com/license/\n");
      out.write("                            You can buy this theme without footer links online at: http://bootstraptaste.com/buy/?theme=Moderna\n");
      out.write("                        -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</footer>\n");
      out.write("</div>\n");
      out.write("<a href=\"#\" class=\"scrollup\"><i class=\"fa fa-angle-up active\"></i></a>\n");
      out.write("<!-- javascript\n");
      out.write("    ================================================== -->\n");
      out.write("<!-- Placed at the end of the document so the pages load faster -->\n");
      out.write("<script src=\"lib/js/jquery.js\"></script>\n");
      out.write("<script src=\"lib/js/jquery.easing.1.3.js\"></script>\n");
      out.write("<script src=\"lib/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"lib/js/jquery.fancybox.pack.js\"></script>\n");
      out.write("<script src=\"lib/js/jquery.fancybox-media.js\"></script>\n");
      out.write("<script src=\"lib/js/google-code-prettify/prettify.js\"></script>\n");
      out.write("<script src=\"lib/js/portfolio/jquery.quicksand.js\"></script>\n");
      out.write("<script src=\"lib/js/portfolio/setting.js\"></script>\n");
      out.write("<script src=\"lib/js/jquery.flexslider.js\"></script>\n");
      out.write("<script src=\"lib/js/animate.js\"></script>\n");
      out.write("<script src=\"lib/js/custom.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
