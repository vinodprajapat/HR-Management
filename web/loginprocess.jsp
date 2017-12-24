<%@page import="bean.* " %>

<jsp:useBean id="obj" class="bean.loginbean"></jsp:useBean>
<jsp:setProperty name="obj" property="*"></jsp:setProperty>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <%
        String status=loginuser.validate(obj);
        
            if(status.equals("admin"))
            {
                session.setAttribute("username",obj.getUsername());
             %>
             <jsp:forward page="Menu.jsp"></jsp:forward> 
             <%
         }
         else if(status.equals("emp")) 
          { 
             session.setAttribute("username",obj.getUsername());
           %>
            <jsp:forward page="empmenu.jsp"></jsp:forward> 
            <%
                 
          }
          else{
        
             %>
             <jsp:include page="index.jsp"></jsp:include>
             <script>
                 alert("Invalid username and password ");
                 </script>
             <%
        
             }
        %>
        
    </body>
</html>
