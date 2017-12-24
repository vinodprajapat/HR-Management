
<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<jsp:useBean id="emp" class= "bean.empbean"></jsp:useBean>
<jsp:setProperty name="emp" property= "*"></jsp:setProperty>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Job Detail  </title>
        
         <jsp:include page="Menu.jsp"></jsp:include>
    </head>
    <body>
       <%
        
      int status=0;
   try{
       int id=Integer.valueOf(emp.getempid());
       
    Connection con=Connection_Provider.getCon();
    PreparedStatement ps=con.prepareStatement("update HR.EMP_JOB_DETAIL SET MODOFREC=?, BRANCH=?,DEPARTMENT=?,DOJ=?,DESIGNATION=?,TYPE_OF_EMPLOYEE=?,CATEGORY_OF_EMPLOYEE=?,GRADE=? WHERE EMPID=?");
    
  
  
    ps.setString(1, emp.getmodeofrec());
    ps.setString(2, emp.getbranch());
    ps.setString(3,emp.getdepartment());
    ps.setDate (4, java.sql.Date.valueOf(emp.getdoj()));
    ps.setString(5, emp.getdesignation());
    ps.setString(6, emp.gettypeofemployee());
    ps.setString(7, emp.getcategoryofemployee());
    ps.setString(8,emp.getgrade());
    ps.setInt(9, id);
   
  
    status=ps.executeUpdate();
   }
   
   catch(Exception e) {
   out.print(e);
   }

   if(status>0)
   out.print( " <br> <br>  <strong> " +" Job  Information Updated");
   else
   out.print( " <br> <br>  <strong> " +" Check Details Again  ");
    %>
    </body>
</html>
