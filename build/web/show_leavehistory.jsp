

<%@page import="bean.* " %>
<%@page import="java.sql.*" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Leave Application </title>
     
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
        Employees Leave History
    </h2>
        
        <%
            
            
          String s2=request.getParameter("empid");
             s2=s2.trim();
           
           
          int empid=Integer.valueOf(s2);
           Connection con=Connection_Provider.getCon();
            
       PreparedStatement ps1=con.prepareStatement("select  HR.LEAVE_APPLICATION.EMPID ,HR.PERSONAL_DETAIL.NAME ,HR.LEAVE_APPLICATION.LEAVE_TYPE,HR.LEAVE_APPLICATION.LEAVE_FROM,HR.LEAVE_APPLICATION.LEAVE_TO,HR.LEAVE_APPLICATION.REASON,HR.LEAVE_APPLICATION.CONTACT_NO,HR.LEAVE_APPLICATION.STATUS from HR.LEAVE_APPLICATION, HR.PERSONAL_DETAIL where HR.PERSONAL_DETAIL.EMPID = HR.LEAVE_APPLICATION.EMPID and HR.LEAVE_APPLICATION.EMPID=?");
           
         ps1.setInt(1,empid);
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
