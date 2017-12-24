<%-- 
    Document   : leavehistory
    Created on : Jun 21, 2016, 12:36:36 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Leave History </title>
    </head>
    <body>
        <form action="show_leavehistory.jsp" method="post">            
             Enter Employee Id <input type="number" name="empid" required />
             <input type="submit" value="search" />
             </form>
    </body>
</html>
