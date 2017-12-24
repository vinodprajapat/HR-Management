package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import bean.*;
import java.sql.*;

public final class editpersonal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("            margin: 0 !important;                /*for complete the cover of webpage*/ \n");
      out.write("            padding: 0 !important;\n");
      out.write("            background-image: none;\n");
      out.write("           \n");
      out.write("        } \n");
      out.write("         div {\n");
      out.write("             margin: 0 0 15px 0;\n");
      out.write("            border: none;\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        label {\n");
      out.write("            display: inline-block;\n");
      out.write("            width: 25%;\n");
      out.write("            text-align: right;\n");
      out.write("            margin: 10px;\n");
      out.write("        }\n");
      out.write("        input[type=text], .register input[type=number]{\n");
      out.write("            width: 65%;\n");
      out.write("            font-family: \"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,Sans-Serif;\n");
      out.write("            padding: 5px;\n");
      out.write("            font-size: 0.9em;\n");
      out.write("            border-radius: 5px;\n");
      out.write("            background: rgba(0, 0, 0, 0.07);\n");
      out.write("        }\n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String s=request.getParameter("empid");
            int empid=Integer.valueOf(s);
            
            Connection con=Connection_Provider.getCon();
            
            Statement stmt=con.createStatement();
            
            ResultSet rs=stmt.executeQuery("select * from HR.PERSONAL_DETAIL where EMPID=empid");
     
           if(!rs.next()) {
                out.println("Sorry, could not find that publisher. ");
            } 
           else {
        
      out.write("\n");
      out.write("            <form>               \n");
      out.write("            <div >\n");
      out.write("              <label for=\"name\">Name </label>\n");
      out.write("              <input type=\"text\" name=\"name\" value=");
      out.print( rs.getString(3) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div >\n");
      out.write("              <label for=\"fathername\">Father Name </label>\n");
      out.write("              <input type=\"text\" name=\"fname\"  value=");
      out.print( rs.getString(4) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div >\n");
      out.write("              <label for=\"bloodgroup\">Blood Group</label>\n");
      out.write("              <select name=\"blood_group\" value= ");
      out.print( rs.getString(5) );
      out.write(" >\n");
      out.write("                  <option value=\"A+ve\">A+ve</option>\n");
      out.write("                  <option value=\"B+ve\">B+ve</option>\n");
      out.write("                  <option value=\"O+ve\">O+ve</option>\n");
      out.write("                  <option value=\"AB\">AB</option>\n");
      out.write("                  <option value=\"A-ve\">A-ve</option>\n");
      out.write("                  <option value=\"B-ve\">B-ve</option>\n");
      out.write("                  <option value=\"O-ve\">O-ve</option>\n");
      out.write("              </select>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div   id=\"Dob\">\n");
      out.write("                <label for=\"dob-day\" >Date of Birth</label>\n");
      out.write("                <input type=\"date\" name=\"dob\" value=");
      out.print( rs.getString(2) );
      out.write(" >\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div >\n");
      out.write("                <label for=\"gender\" >Gender</label>\n");
      out.write("                ");
 String a=rs.getString(6);
                if(a.equals("male"))
                {
                
      out.write("\n");
      out.write("                <input type=\"radio\" name=\"gender\" value=\"male\" checked> Male\n");
      out.write("                 <input type=\"radio\" name=\"gender\" value=\"female\"> Female\n");
      out.write("                 \n");
      out.write("                ");

                 }
                 else
                {
               
      out.write("\n");
      out.write("                <input type=\"radio\" name=\"gender\" value=\"male\" > Male\n");
      out.write("                 <input type=\"radio\" name=\"gender\" value=\"female\" checked> Female\n");
      out.write("                 ");

                   }
                  
      out.write("\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("                <label for=\"marital_status\">Marital Status</label>\n");
      out.write("                  ");
 String a1=rs.getString(7);
                if(a1.equals("unmarried"))
                {
                
      out.write("\n");
      out.write("               <input type=\"radio\" name=\"marital_status\" value=\" unmarried\" checked> Unmarried\n");
      out.write("                <input type=\"radio\" name=\"marital_status\" value= \"married\">  Married\n");
      out.write("                 \n");
      out.write("                ");

                 }
                 else
                {
               
      out.write("\n");
      out.write("               <input type=\"radio\" name=\"marital_status\" value=\" unmarried\" > Unmarried\n");
      out.write("                <input type=\"radio\" name=\"marital_status\" value= \"married\" checked >  Married\n");
      out.write("                 \n");
      out.write("                 ");

                   }
                  
      out.write("\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("              <label for=\"nationality\">Nationality</label>\n");
      out.write("              <input type=\"text\" name=\"nationality\"  value=");
      out.print( rs.getString(8) );
      out.write("  required />\n");
      out.write("            </div>\n");
      out.write("           \n");
      out.write("           <div>\n");
      out.write("                <label for=\"medicalfitness\">Medical Fitness</label>\n");
      out.write("                  ");
 String a2=rs.getString(7);
                if(a2.equals("yes"))
                {
                
      out.write("\n");
      out.write("               \n");
      out.write("                 <input type='radio' name=\"medical_fitness\"  value=\"yes\" checked>Yes\n");
      out.write("                 <input type='radio' name=\"medical_fitness\" value=\"no\" >No  \n");
      out.write("                 \n");
      out.write("                ");

                 }
                 else
                {
               
      out.write("\n");
      out.write("                  <input type='radio' name=\"medical_fitness\"  value=\"yes\" >Yes\n");
      out.write("                 <input type='radio' name=\"medical_fitness\" value=\"no\" checked >No  \n");
      out.write("                 \n");
      out.write("                 ");

                   }
                  
      out.write("\n");
      out.write("                        \n");
      out.write("            </div>    \n");
      out.write("     \n");
      out.write("            <div>\n");
      out.write("              <label for=\"present-address\">Present Adress </label>\n");
      out.write("              <input type=\"text\" name=\"present_address\"  value=");
      out.print( rs.getString(10) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("              <label for=\"permanent-address\">permanent Adress </label>\n");
      out.write("              <input type=\"text\" name=\"permanent_address\" value=");
      out.print( rs.getString(11) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("              <label for=\"email\">Email Id </label>\n");
      out.write("              <input type=\"email\" name=\"emailid\"  value=");
      out.print( rs.getString(12) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <div>\n");
      out.write("              <label for=\"phoneno\">Phone Number </label>\n");
      out.write("              <input type=\"number\" name=\"phoneno\"   value= ");
      out.print( Long.valueOf(rs.getString(13)) );
      out.write(" required />\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("            <input type=\"submit\" value=\"save\">\n");
      out.write("            </form>\n");
      out.write("              ");

                  }
               
      out.write("\n");
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
