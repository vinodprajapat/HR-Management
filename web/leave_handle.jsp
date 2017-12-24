<%-- 
    Document   : leave_handle
    Created on : Jun 20, 2016, 7:39:24 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.* " %>
<%@page  import="java.sql.* " %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <%
         int status=0;
      
         try{
      Connection con=Connection_Provider.getCon();
      
      PreparedStatement ps=con.prepareStatement("insert into HR.LEAVE_APPLICATION values (?,?,?,?,?,?,?)");
      ps.setInt(1,Integer.valueOf(request.getParameter("empid")));
      ps.setString(2,request.getParameter("leave_type"));
      ps.setDate(3,java.sql.Date.valueOf(request.getParameter("leave_from")));
      ps.setDate(4,java.sql.Date.valueOf(request.getParameter("leave_to")));
      
      ps.setString(5,request.getParameter("reason"));
      ps.setLong(6,Long.valueOf(request.getParameter("contact")));
      
      ps.setString(7,"pending");
    
     status= ps.executeUpdate();
         }
         catch(Exception e)
         {
         out.print("Check Details Again");
         }
     if(status>0)
     {
     out.print("You have Successfully applied ");
    %>
    <jsp:forward page="empmenu.jsp"></jsp:forward>
    <%
        }
     %>
    </body>
</html>
