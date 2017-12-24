<%-- 
    Document   : logout
    Created on : Jun 20, 2016, 11:55:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         
       
    </head>
    <body>
        <%
            session.invalidate();
             out.print("You have Successully logout");            
            %>
           
    </body>
</html>
