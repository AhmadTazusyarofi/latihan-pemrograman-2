package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Materi session dan cookies</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     ");

       String userLogin = "";
       Cookie[] cookies = request.getCookies();
       String waktuLogin = "";
       java.util.Date saatIni = new java.util.Date();
       java.text.SimpleDateFormat waktu =
            new java.text.SimpleDateFormat("HH:mm:ss dd-MM-yyyy");

       if (!session.isNew()){
            try {
            userLogin = session.getAttribute("userLogin").toString();
            waktuLogin = session.getAttribute("waktuLogin").toString();
            } catch (Exception ex) {}
        }
       if ((cookies != null) && (cookies.length > 0)){
           for (int i=0; i<cookies.length; i++){
       
      out.write("\n");
      out.write("       Data cookie ke-");
      out.print(i );
      out.write(" nama: ");
      out.print(cookies[i].getName() );
      out.write("<br>\n");
      out.write("       Data cookie ke-");
      out.print(i );
      out.write(" data: ");
      out.print(cookies[i].getValue() );
      out.write("<br>\n");
      out.write("       ");
    
           }
       }
       
       if (!userLogin.equals("")){
       
      out.write("\n");
      out.write("       <h2> Belajar cookie dan session</h2>\n");
      out.write("       sudah login dengan nama : ");
      out.print(userLogin );
      out.write("<br>\n");
      out.write("       waktu login: ");
      out.print(waktuLogin );
      out.write("<br>\n");
      out.write("       waktu saat ini: ");
      out.print(waktu.format(saatIni) );
      out.write("<br>\n");
      out.write("       ");
 } else { 
      out.write("\n");
      out.write("       <form action=\"Validasi.jsp\" method=\"post\">\n");
      out.write("           <table>\n");
      out.write("               <tr>\n");
      out.write("                   <td>User ID</td>\n");
      out.write("                   <td><input type=\"text\" name=\"userId\"></td>\n");
      out.write("               </tr>\n");
      out.write("               \n");
      out.write("               <tr>\n");
      out.write("                   <td>Pasword</td>\n");
      out.write("                   <td><input type=\"password\" name=\"password\"></td>\n");
      out.write("               </tr>\n");
      out.write("               <tr>\n");
      out.write("                   <td colspan=\"2\" align=\"center\">\n");
      out.write("                       <input type=\"submit\" value=\"Login\">\n");
      out.write("                   </td>\n");
      out.write("               </tr>\n");
      out.write("           </table>\n");
      out.write("       </form>\n");
      out.write("       ");
 } 
      out.write("\n");
      out.write("     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
