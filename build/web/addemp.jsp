
<!DOCTYPE html>
<html>
    <head>
        
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<jsp:useBean id="emp" class= "bean.empbean"></jsp:useBean>
<jsp:setProperty name="emp" property= "*"></jsp:setProperty>

<title> Registeration  </title>
    </head>
    <body>
    <jsp:include page="Menu.jsp"></jsp:include>
    <%
        
     int status=0,status1=0,status2=0;
   try{
       
    Connection con=Connection_Provider.getCon();
    PreparedStatement ps=con.prepareStatement("insert into HR.PERSONAL_DETAIL values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
    
    ps.setInt(1,Integer.valueOf(emp.getempid()));
    ps.setDate(2, java.sql.Date.valueOf(emp.getdob()));
    ps.setString(3, emp.getname());
    ps.setString(4, emp.getfathername());
    ps.setString(5, emp.getbloodgroup());
    ps.setString(6, emp.getgender());
    ps.setString(7, emp.getmaritalstatus());
    ps.setString(8, emp.getnationality());
    ps.setString(9, emp.getmedicalfitness());
    ps.setString(10,emp.getpresentaddress());
    ps.setString(11,emp.getpermanentaddress());
    ps.setString(12,emp.getemailid());
    ps.setLong(13,Long.valueOf(emp.getphoneno()));
    
    status=ps.executeUpdate();
   
    
    PreparedStatement ps1=con.prepareStatement("insert into HR.EMP_JOB_DETAIL values(?,?,?,?,?,?,?,?,?)");
    
    ps1.setInt(1,Integer.valueOf(emp.getempid()));
    ps1.setString(2,emp.getmodeofrec());    
    ps1.setString(3,emp.getbranch());
    ps1.setString(4,emp.getdepartment());
    ps1.setDate(5,java.sql.Date.valueOf(emp.getdoj()));
    ps1.setString(6,emp.getdesignation());
    ps1.setString(7,emp.gettypeofemployee());
    ps1.setString(8,emp.getcategoryofemployee());
    ps1.setString(9,emp.getgrade());
    
     
    status1=ps1.executeUpdate();
    
  
    
    PreparedStatement ps2=con.prepareStatement("insert into HR.EMP_EARNING_DETAIL values(?,?)");
     ps2.setInt(2,Integer.valueOf(emp.getbasicsalary()));
     ps2.setInt(1,Integer.valueOf(emp.getempid()));
     
     status2=ps2.executeUpdate();
       
    }
   catch(Exception e) {
   out.print(e);
   }
   
     if( (status>0 && status1>0 && status2 > 0))
     out.print("You Have Successfully Registered");
     else
     out.print("Check Details again");      
%>
    </body>
</html>
