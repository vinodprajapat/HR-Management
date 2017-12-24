 

<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.concurrent.TimeUnit" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Show Attendance  </title>
     
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
        Employees Attendance  History
         </h2>
        
        Total Working  Days : 
     
        <%
            
            
          String s2=request.getParameter("empid");
             s2=s2.trim();
               int empid=Integer.valueOf(s2);
               
           String from=request.getParameter("att_from");
           String to=request.getParameter("att_to"); 
           
           
           java.util.Date d1=java.sql.Date.valueOf(from);
           java.util.Date d2=java.sql.Date.valueOf(to);
           
           long diff = d2.getTime() - d1.getTime();
           long days=TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
        
           out.print(days);
           %>
           <br>
           
           Total Present Day :
           <% 
           Connection con=Connection_Provider.getCon();
            
            PreparedStatement ps1=con.prepareStatement("SELECT COUNT(EMPID) FROM HR.ATTENDANCE WHERE EMPID=? AND STATUS= ? and DATETIME >=? and DATETIME <= ?");
             ps1.setInt(1,empid);
             ps1.setString(2, "P");
              ps1.setDate(3,java.sql.Date.valueOf(from));
             ps1.setDate(4,java.sql.Date.valueOf(to));
             
              ResultSet rs1=ps1.executeQuery();
              while(rs1.next())
                  out.print(rs1.getInt(1));
              
       PreparedStatement ps=con.prepareStatement("select EMPID,to_char(DATETIME,'DD-MM-YYYY'),STATUS from HR.ATTENDANCE where EMPID=? and DATETIME >=? and DATETIME <= ? ");
          
             ps.setInt(1,empid);
             ps.setDate(2,java.sql.Date.valueOf(from));
             ps.setDate(3,java.sql.Date.valueOf(to));
             
             ResultSet rs=ps.executeQuery();
           
             %>
             
              <table id="table1" border="1">
                <thead>
                  <tr>
                      <th>Employee Code</th>
  
                      <th> Date </th>
                  
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
                     
                    </tr>  
               <%
                }
            %>
              </table>
              
           
    </body>
</html>
