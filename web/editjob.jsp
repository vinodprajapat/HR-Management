<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*" %>
<%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Job Detail </title>

        <style>
            
            body{
            margin: 0 !important;                /*for complete the cover of webpage*/ 
            padding: 0 !important;
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
        </style>
        
    </head>
    <body>
        <%
            String s=request.getParameter("val");
            int empid=Integer.valueOf(s);
            
            Connection con=Connection_Provider.getCon();
            PreparedStatement  ps=con.prepareStatement("select * from HR.EMP_JOB_DETAIL where EMPID=? ");
            
            ps.setInt(1,empid);
            
            ResultSet rs= ps.executeQuery();
     
           if(!rs.next()) {
               
                out.print("Sorry, could not find that publisher. ");
            } 
           else {
           %>
           <form action="savejob.jsp" method="post">
               
             <div style="display: none ">
              <label for="empid">Name </label>
              <input type="text" name="empid" value="<%= rs.getString(1) %>" required />
            </div>
            
            
            <div>
                <label for="modeofrecuitment">Mode Of Recruitment</label>
                <input type="text" name="modeofrec" value="<%= rs.getString(2) %>" required />
            </div>
                
         
            
            <div id="Doj">
                <label for="doj-day" >Date of Joining</label>
                <input type="date" name="doj" value=<%= rs.getString(5) %> required />
            </div>
            
            <div>
                <label for="department">Department</label>
                <input type="text" name="department" value="<%= rs.getString(4) %>" required  />
            </div>
            
            <div>
                <label for="branch">Branch</label>
                <input type="text" name="branch" value="<%= rs.getString(3) %> " required />
            </div>
            <div> 
              <label for="designation">Designation</label>
              <input type="text" name="designation"  value= "<%= rs.getString(6) %>"  required />
            </div>
            
            <div >
              <label for="type-of-employee">Type Of Employee</label>
              <input type="text" name="type_of_employee" value= "<%= rs.getString(7) %> " required />
            </div>
            
            <div >
              <label for="grade">Grade</label>
              <input type="text" name="grade"  value= "<%= rs.getString(9) %>" required />
            </div>
            
            <div>
              <label for="category-of-employee">Category Of Employee</label>
              <input type="text" name="category_of_employee"  value="<%= rs.getString(8) %>" required />
            </div>
            
              <input type="submit" value="save" style="margin-left: 500px; font-size: 20px;"  >
           <input type="button" value="exit" style="margin-left: 50px; font-size: 20px;" onclick="window.location.href='Menu.jsp'" >

            </form>	
              <%
                  }
               %>
    </body>
</html>
