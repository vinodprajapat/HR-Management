<%-- 
    Document   : accept_leaverequest
    Created on : Jun 20, 2016, 11:13:00 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*" %>
<%@page import="java.sql.* " %>
<%@page import="java.text.*" %>

  <jsp:include page="Menu.jsp"></jsp:include>
  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Accepted </title>
        <style>
                            body{
                      background-image: none;
                  }
                  
             div {
             margin: 0 0 15px 0;
            border: none;
        }
        label {
            display: inline-block;
            width: 25%;
            text-align: right;
            margin: 10px;
        }
        input[type=text], .register input[type=number]{
            width: 65%;
            font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
            padding: 5px;
            font-size: 0.9em;
            border-radius: 5px;
            background: rgba(0, 0, 0, 0.07);
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
        Employees Leave Application 
          <input type="button" value="Home Page" style="margin-left: 900px; font-size: 20px;" onclick="window.location.href='Menu.jsp'" >
    </h2>
        
       <%
      String s=request.getParameter("empid");
      s=s.trim();
       
       int empid=Integer.valueOf(s);
       
       Connection con=Connection_Provider.getCon();
       PreparedStatement ps=con.prepareStatement("update HR.LEAVE_APPLICATION set STATUS=? where EMPID=? and LEAVE_FROM=? " );
        ps.setString(1,"rejected");
        ps.setInt(2,empid);
        ps.setDate(3,java.sql.Date.valueOf(request.getParameter("from")));
        
       int st=ps.executeUpdate();
        
       PreparedStatement ps1=con.prepareStatement("select  HR.LEAVE_APPLICATION.EMPID ,HR.PERSONAL_DETAIL.NAME ,HR.LEAVE_APPLICATION.LEAVE_TYPE,HR.LEAVE_APPLICATION.LEAVE_FROM,HR.LEAVE_APPLICATION.LEAVE_TO,HR.LEAVE_APPLICATION.REASON,HR.LEAVE_APPLICATION.CONTACT_NO,HR.LEAVE_APPLICATION.STATUS from HR.LEAVE_APPLICATION, HR.PERSONAL_DETAIL where HR.PERSONAL_DETAIL.EMPID = HR.LEAVE_APPLICATION.EMPID");
           
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
                      
                      <%
                         if(rs.getString(8).trim().equals("accepted"))
                         {                         
                         %>
                          <td> <%=rs.getString(8)  %></td>
                          <%
                          }
                         else if(rs.getString(8).trim().equals("rejected"))
                           {
                           %>
                            <td> <%=rs.getString(8)  %></td>
                            <%
                            }
                           else 
                           {
                           %>
                          
                            <%
                         java.util.Date initDate = new SimpleDateFormat("dd-MM-yyyy").parse(rs.getString(4));
                         SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                           String parsedDate = formatter.format(initDate);  
                           %>
                           
                           <td>
                               
                               <form  action="accept_leaverequest.jsp" method="post" >
                            <input type="text" name="empid" value="<%=  rs.getString(1) %> " style="display: none "/>
                            <input type="date" name="from"  style="display: none " value=<%=  rs.getString(4) %> >
                            <input  type="submit"  value="Accept" />
                            </form>
                               
                          </td>
                          <td>
                            
                            <form method="post" action="decline_leaverequest.jsp" >
                                <input type="date" name="from"  style="display: none" value= <%=  rs.getString(4) %> >
                             <input type="text" name="empid" value="<%=  rs.getString(1) %> " style="display: none "/>
                             <input  type="submit"  value="Decline" />
                            </form>
                           </td>
                           <% 
                          }
                         %>
                    </tr>  
               <%
                }
            %>
              </table>
        
     
    </body>
</html>
