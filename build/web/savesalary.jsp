 
<%@page import="java.sql.* " %>
<%@page import="bean.* " %>
<body>
    <%
        int empid=Integer.parseInt(request.getParameter("empid"));
        int month=Integer.parseInt(request.getParameter("month"));
        int year=Integer.parseInt(request.getParameter("year"));
       int netpay=Integer.parseInt(request.getParameter("net"));
       
        
       
      Connection con=Connection_Provider.getCon();
    
    PreparedStatement ps=con.prepareStatement("insert into HR.SALARY values (?,?,?,?)");
    ps.setInt(1, empid);
    ps.setInt(2, month);
    ps.setInt(3, year);
    ps.setInt(4, netpay);
    
    int status=ps.executeUpdate();
    if(status>0)
    {
        %>
    
        <jsp:forward page="salary_structure.jsp" ></jsp:forward>
        <%
            }
      else
     out.print("Some error occur try Again");
    %>
</body>