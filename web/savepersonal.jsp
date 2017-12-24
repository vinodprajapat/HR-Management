<%-- 
    Document   : savepersonal
    Created on : Jun 20, 2016, 12:26:56 AM
    Author     : user
--%>

<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<jsp:useBean id="emp" class= "bean.empbean"></jsp:useBean>
<jsp:setProperty name="emp" property= "*"></jsp:setProperty>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Save Personal Detail  </title>
        
         <jsp:include page="Menu.jsp"></jsp:include>
    </head>
    <body>
       <%
        
      int status=0;
   try{
       int id=Integer.valueOf(emp.getempid());
       
    Connection con=Connection_Provider.getCon();
    PreparedStatement ps=con.prepareStatement("update HR.PERSONAL_DETAIL SET DOB=?, NAME=?,FNAME=?,BLOOD_GROUP=?,GENDER=?,MARITAL_STATUS=?,NATIONALITY=?,MEDICAL_FITNESS=?,PRESENT_ADDRESS=?,PERMANENT_ADDRESS=?,EMAILID=?,PHONENO=? WHERE EMPID=?");
    
  
    ps.setDate(1, java.sql.Date.valueOf(emp.getdob()));
    ps.setString(2, emp.getname());
    ps.setString(3, emp.getfathername());
    ps.setString(4, emp.getbloodgroup());
    ps.setString(5, emp.getgender());
    ps.setString(6, emp.getmaritalstatus());
    ps.setString(7, emp.getnationality());
    ps.setString(8, emp.getmedicalfitness());
    ps.setString(9,emp.getpresentaddress());
    ps.setString(10,emp.getpermanentaddress());
    ps.setString(11,emp.getemailid());
    ps.setLong(12,Long.valueOf(emp.getphoneno()));
    ps.setInt(13,id);
    status=ps.executeUpdate();
   }
   
   catch(Exception e) {
   out.print(e);
   }

   if(status>0)
   out.print( " <br> <br>  <strong> " +" Personal Information Updated");
   else
   out.print( " <br> <br>  <strong> " +" Check Details Again  ");
    %>
    </body>
</html>
