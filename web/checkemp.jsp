<%@page  import="java.sql.*" %>
<%@page  import="bean.*" %>

<%

String emp=request.getParameter("empid");

int empid=Integer.parseInt(emp);
Connection con= Connection_Provider.getCon();

PreparedStatement ps=con.prepareStatement("select empid from  HR.PERSONAL_DETAIL where empid=? ");

ps.setInt(1,empid);

ResultSet rs=ps.executeQuery();

if(rs.next())
out.print("Employee already exist");

%>