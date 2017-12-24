package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class personal_005finfo_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!Doctype html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <title> Edit Personal Information </title>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "Menu.jsp", out, false);
      out.write("\r\n");
      out.write("    <link href=\"/normalize.css\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("        body{\r\n");
      out.write("            margin: 0 !important;                /*for complete the cover of webpage*/ \r\n");
      out.write("           padding: 0 !important;\r\n");
      out.write("           background-image: none;\r\n");
      out.write("           \r\n");
      out.write("        } \r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("         div {\r\n");
      out.write("             margin: 0 0 15px 0;\r\n");
      out.write("            border: none;\r\n");
      out.write("        }\r\n");
      out.write("        label {\r\n");
      out.write("            display: inline-block;\r\n");
      out.write("            width: 25%;\r\n");
      out.write("            text-align: right;\r\n");
      out.write("            margin: 10px;\r\n");
      out.write("        }\r\n");
      out.write("        input[type=text], .register input[type=number]{\r\n");
      out.write("            width: 65%;\r\n");
      out.write("            font-family: \"Lucida Grande\",\"Lucida Sans Unicode\",Tahoma,Sans-Serif;\r\n");
      out.write("            padding: 5px;\r\n");
      out.write("            font-size: 0.9em;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("            background: rgba(0, 0, 0, 0.07);\r\n");
      out.write("        }\r\n");
      out.write("        .left{\r\n");
      out.write("            float: left;\r\n");
      out.write("            display: block;\r\n");
      out.write("            width: 50%;\r\n");
      out.write("        }\r\n");
      out.write("         .right{\r\n");
      out.write("            float: right;\r\n");
      out.write("            display: block;\r\n");
      out.write("           width: 50%;\r\n");
      out.write("        }\r\n");
      out.write("       #Dob{\r\n");
      out.write("            display: inline;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("\r\n");
      out.write("     <script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("        function validateform(){  \r\n");
      out.write("          var x=document.myform.email.value;  \r\n");
      out.write("          var atposition=x.indexOf(\"@\");  \r\n");
      out.write("          var dotposition=x.lastIndexOf(\".\");  \r\n");
      out.write("          if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  \r\n");
      out.write("            alert(\"Please enter a valid e-mail address \\n atpostion:\"+atposition+\"\\n dotposition:\"+dotposition);  \r\n");
      out.write("            return false;  \r\n");
      out.write("          }  \r\n");
      out.write("          var fld=document.myform.phoneno.value;\r\n");
      out.write("          var error = \"\";\r\n");
      out.write("          var stripped = fld.value.replace(/[\\(\\)\\.\\-\\(a-zA-Z)\\]/g, '');    \r\n");
      out.write("\r\n");
      out.write("          if (fld.value == \"\") {\r\n");
      out.write("            error = \"You didn't enter a phone number.\\n\";\r\n");
      out.write("            fld.style.background = 'Yellow';\r\n");
      out.write("            } else if (isNaN(parseInt(stripped))) {\r\n");
      out.write("                error = \"The phone number contains illegal characters.\\n\";\r\n");
      out.write("                fld.style.background = 'Yellow';\r\n");
      out.write("            } else if (!(stripped.length == 10)) {\r\n");
      out.write("                error = \"The phone number is the wrong length. Make sure you included an area code.\\n\";\r\n");
      out.write("                fld.style.background = 'Yellow';\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("        }  \r\n");
      out.write("    </script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("    \r\n");
      out.write("        <form  name=\"myform\" action=\"edit_personalinfo.jsp\" method=\"post\" onsubmit=\"return validateform()\"   >\r\n");
      out.write("          \r\n");
      out.write("          <fieldset>\r\n");
      out.write("            <div class=\"left\">\r\n");
      out.write("                <label for=\"Employee code\">Employee Code</label>\r\n");
      out.write("                <input type=\"number\" name=\"empid\"  required />\r\n");
      out.write("                <input type=\"button\" onclick=\"\" value=\"View\">                                                         <!-- view information-->\r\n");
      out.write("            </div>\r\n");
      out.write("  \r\n");
      out.write("          </fieldset>\r\n");
      out.write("\r\n");
      out.write("      \r\n");
      out.write("            <fieldset>\r\n");
      out.write("            \r\n");
      out.write("             <div >\r\n");
      out.write("              <label for=\"employee_code\">Employee Code </label>\r\n");
      out.write("              <input type=\"number\" name=\"empid\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"name\">Name </label>\r\n");
      out.write("              <input type=\"text\" name=\"name\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div >\r\n");
      out.write("              <label for=\"fathername\">Father Name </label>\r\n");
      out.write("              <input type=\"text\" name=\"fname\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div >\r\n");
      out.write("              <label for=\"bloodgroup\">Blood Group</label>\r\n");
      out.write("              <select name=\"blood_group\">\r\n");
      out.write("                  <option value=\"A+ve\">A+ve</option>\r\n");
      out.write("                  <option value=\"B+ve\">B+ve</option>\r\n");
      out.write("                  <option value=\"O+ve\">O+ve</option>\r\n");
      out.write("                  <option value=\"AB\">AB</option>\r\n");
      out.write("                  <option value=\"A-ve\">A-ve</option>\r\n");
      out.write("                  <option value=\"B-ve\">B-ve</option>\r\n");
      out.write("                  <option value=\"O-ve\">O-ve</option>\r\n");
      out.write("              </select>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div   id=\"Dob\">\r\n");
      out.write("                <label for=\"dob-day\" >Date of Birth</label>\r\n");
      out.write("                <input type=\"date\" name=\"dob\">\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div >\r\n");
      out.write("                <label for=\"gender\" >Gender</label>\r\n");
      out.write("                <input type=\"radio\" name=\"gender\" value=\"male\" checked> Male\r\n");
      out.write("                <input type=\"radio\" name=\"gender\" value=\"female\"> Female\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("                <label for=\"marital_status\">Marital Status</label>\r\n");
      out.write("                <input type=\"radio\" name=\"marital_status\" value=\"unmarried\" checked> Unmarried\r\n");
      out.write("                <input type=\"radio\" name=\"marital_status\" value=\"married\"> Married\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"nationality\">Nationality</label>\r\n");
      out.write("              <input type=\"text\" name=\"nationality\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("           \r\n");
      out.write("           <div >\r\n");
      out.write("                <label for=\"medicalfitness\">Medical Fitness</label>\r\n");
      out.write("                <input type='radio' name=\"medical_fitness\"  value=\"yes\" checked>Yes\r\n");
      out.write("                 <input type='radio' name=\"medical_fitness\" value=\"no\" >No         \r\n");
      out.write("            </div>    \r\n");
      out.write("     \r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"present-address\">Present Adress </label>\r\n");
      out.write("              <input type=\"text\" name=\"present_address\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"permanent-address\">permanent Adress </label>\r\n");
      out.write("              <input type=\"text\" name=\"permanent_address\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"email\">Email Id </label>\r\n");
      out.write("              <input type=\"email\" name=\"emailid\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <div>\r\n");
      out.write("              <label for=\"phoneno\">Phone Number </label>\r\n");
      out.write("              <input type=\"number\" name=\"phoneno\"  required />\r\n");
      out.write("            </div>\r\n");
      out.write("            </fieldset>\r\n");
      out.write("\r\n");
      out.write("    \t\r\n");
      out.write("\r\n");
      out.write("            <input type=\"Submit\" onclick=\"\" value=\"save\">\r\n");
      out.write("        </form>\r\n");
      out.write("             \r\n");
      out.write("         \r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("         ");
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
