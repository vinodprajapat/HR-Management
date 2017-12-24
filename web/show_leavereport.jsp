

<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.concurrent.TimeUnit" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>  Leave  </title>
     
              <style>
            
                  body{
                      background-image: none;
                  }
                  
            table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 50px;
           }
      th{
    background-color: #56ABE4;
    text-align: left;
    padding: 8px;
    
     }
 td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
          
    </style>
   
    
 
    </head>
    
    <body>
              <h2>
        Employees Leave Report
    </h2>
        
        Total Leaves : 
        <%
            
            
          String s2=request.getParameter("empid");
             s2=s2.trim();
           String month=request.getParameter("month");
           String year=request.getParameter("year");
           java.sql.Date sd2=null,sd1=null ;
         try{  
         java.util.Date d1 = new java.text.SimpleDateFormat("yyyy.MM.dd").parse(year+"."+month+"."+"01");
         java.util.Date d2 = new java.text.SimpleDateFormat("yyyy.MM.dd").parse(year+"."+month+"."+"31");
       
        sd1 = new java.sql.Date(d1.getTime());
        sd2= new java.sql.Date(d2.getTime());
         }
         catch(Exception e)
         {
         out.print(e);
         }
    
        
         int empid=Integer.valueOf(s2);
         Connection con=Connection_Provider.getCon();
            
               PreparedStatement ps2=con.prepareStatement("select  to_char(HR.LEAVE_APPLICATION.LEAVE_FROM,'YYYY-MM-DD'), to_char(HR.LEAVE_APPLICATION.LEAVE_TO,'YYYY-MM-DD') from HR.LEAVE_APPLICATION where  HR.LEAVE_APPLICATION.EMPID=? "
               + "and HR.LEAVE_APPLICATION.LEAVE_FROM >=? and HR.LEAVE_APPLICATION.LEAVE_TO <= ?");
               
          
               ps2.setInt(1,empid);
               ps2.setDate(2,sd1);
               ps2.setDate(3,sd2);
        
               ResultSet rs1=ps2.executeQuery();
               
               java.util.Date d2=null,d1=null;
                 long days=0;
                long count=0;
               
                while(rs1.next())
               {
                d1=java.sql.Date.valueOf(rs1.getString(1));
                d2=java.sql.Date.valueOf(rs1.getString(2));
                   
                long diff = d2.getTime() - d1.getTime();
                 days  =TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
               
                  count=count+days;
               }  
               out.print(count);
               
       PreparedStatement ps1=con.prepareStatement("select  HR.LEAVE_APPLICATION.EMPID ,HR.PERSONAL_DETAIL.NAME ,HR.LEAVE_APPLICATION.LEAVE_TYPE,to_char(HR.LEAVE_APPLICATION.LEAVE_FROM,'DD-MM-YYYY'),to_char(HR.LEAVE_APPLICATION.LEAVE_TO,'DD-MM-YYYY'),HR.LEAVE_APPLICATION.REASON,HR.LEAVE_APPLICATION.CONTACT_NO,HR.LEAVE_APPLICATION.STATUS from HR.LEAVE_APPLICATION, HR.PERSONAL_DETAIL where HR.PERSONAL_DETAIL.EMPID = HR.LEAVE_APPLICATION.EMPID and HR.LEAVE_APPLICATION.EMPID=? "
               + "and HR.LEAVE_APPLICATION.LEAVE_FROM >=? and HR.LEAVE_APPLICATION.LEAVE_TO <= ?");
           
         ps1.setInt(1,empid);
         ps1.setDate(2,sd1);
         ps1.setDate(3,sd2);
         
   ResultSet rs= ps1.executeQuery();
                   
            
             %>
             
              <table id="table1" border="1">
                <thead>
                  <tr>
                      <th>Employee Code</th>
                       
                      <th> Name </th>
                      
                      
                      <th>Leave Type</th>
                  
                      <th>Leave From</th>
                  
                      <th>Leave To</th>
                  
                     <th>Reason</th>
                     <th> Contact No While On live </th>
                     <th> Status </th>
                  </tr>
                </thead>
                <%
               while(rs.next())
               {
               %>
               
                  <tr>
                      <td> <%=rs.getString(1)  %> </td>
                       
                      <td> <%=rs.getString(2)  %></td>
                      <td> <%=rs.getString(3)  %></td>
                      <td><%=rs.getString(4) %></td>
                       
                      <td><%=rs.getString(5) %></td>
                      <td> <%=rs.getString(6)  %></td>
                      
                      <td> <%=rs.getString(7)  %></td>
                      
                       <td> <%=rs.getString(8)  %></td>
                       
                     
               <%
                }
            %>
              </table>
               
           
    </body>
</html>
