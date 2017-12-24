

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="bean.*" %>
<%@page import="java.sql.* " %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Edit Personal Information </title>
    
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
            PreparedStatement  ps=con.prepareStatement("select * from HR.PERSONAL_DETAIL where EMPID=? ");
            
            ps.setInt(1,empid);
            
            ResultSet rs= ps.executeQuery();
     
          
           if(!rs.next()) {
               
                out.print("Sorry, could not find Employee. ");
            } 
           else {
           %>
           <form action="savepersonal.jsp" method="post">   
             
               <div style="display: none ">
              <label for="empid">Empid  </label>
              <input type="text" name="empid" value=<%= rs.getString(1) %> required />
            </div>
            
            <div>
              <label for="name">Name </label>
              <input type="text" name="name" value= "<%=rs.getString(3) %>" required />
            </div>
            
            <div >
              <label for="fathername">Father Name </label>
              <input type="text" name="fname"  value= "<%= rs.getString(4) %>" required />
            </div>
            
            <div>
              <label for="bloodgroup">Blood Group</label>
              <select name="blood_group">
                  <% String bg=rs.getString(5);
                  bg=bg.trim();
                  %>
                  <option value="A+ve" <%  if(bg.equals("A+ve")) { %> <%= "selected" %> <% } %> >A+ve</option>
                  <option value="B+ve" <%  if(bg.equals("B+ve")) { %> <%= "selected" %> <% } %>> B+ve</option>
                  <option value="O+ve"  <% if(bg.equals("O+ve")) { %> <%= "selected" %> <% } %>>O+ve</option>
                  <option value="AB"  <%   if(bg.equals("AB"))   { %> <%= "selected" %> <% } %> >AB</option>
                  <option value="A-ve" <%  if(bg.equals("A-ve")) { %> <%= "selected" %> <% } %> >A-ve</option>
                  <option value="B-ve" <%  if(bg.equals("B-ve")) { %> <%= "selected" %> <% } %> >B-ve</option>
                  <option value="O-ve" <%  if(bg.equals("O-ve")) { %> <%= "selected" %> <% } %>> O-ve</option>
              </select>
            </div>
            
            <div   id="Dob">
                <label for="dob-day" >Date of Birth</label>
                <input type="date" name="dob" value=<%= rs.getString(2) %> > 
            </div>
            
            <div >
                <label for="gender" >Gender</label>
                 <% String a3=rs.getString(6);
                     a3=a3.trim();
                if(a3.equals("male"))
                {
                %>
               
                <input type="radio" name="gender" value="male" checked> Male
                 <input type="radio" name="gender" value="female"> Female
               <%
                 }
                 else
                {
               %>
                <input type="radio" name="gender" value="male" > Male
                <input type="radio" name="gender" value="female" checked> Female
                 <%
                   }
                 %>
                  
            </div>
            
            <div>
                <label for="marital_status">Marital Status</label>
                  <% String a1=rs.getString(7);
                  a1=a1.trim();
                if(a1.equals("unmarried"))
                {
                %>
               <input type="radio" name="marital_status" value=" unmarried" checked> Unmarried
                <input type="radio" name="marital_status" value= "married">  Married
                 
                <%
                 }
                 else
                {
               %>
               <input type="radio" name="marital_status" value=" unmarried" > Unmarried
                <input type="radio" name="marital_status" value= "married" checked >  Married
                 
                 <%
                   }
                  %>
                
            </div>
            
            <div>
              <label for="nationality">Nationality</label>
              <input type="text" name="nationality"  value="<%= rs.getString(8) %>"  required />
            </div>
           
           <div>
                <label for="medicalfitness">Medical Fitness</label>
                  <% String a2=rs.getString(9);
                  a2=a2.trim();
                if(a2.equals("yes"))
                {
                %>
               
                 <input type='radio' name="medical_fitness"  value="yes" checked>Yes
                 <input type='radio' name="medical_fitness" value="no" >No  
                 
                <%
                 }
                 else
                {
               %>
                  <input type='radio' name="medical_fitness"  value="yes" >Yes
                 <input type='radio' name="medical_fitness" value="no" checked >No  
                 
                 <%
                   }
                  %>
                        
            </div>    
     
            <div>
              <label for="present-address">Present Adress </label>
              <input type="text" name="present_address"  value="<%= rs.getString(10) %>" required />
            </div>
            
            <div>
              <label for="permanent-address">permanent Adress </label>
              <input type="text" name="permanent_address" value="<%= rs.getString(11) %>" required />
            </div>
            
            <div>
              <label for="email">Email Id </label>
              <input type="email" name="emailid"  value=<%= rs.getString(12) %> required />
            </div>
            
            <div>
              <label for="phoneno">Phone Number </label>
              <input type="number" name="phoneno"   value= <%= Long.valueOf(rs.getString(13)) %> required />
            </div>

            <input type="submit" value="save" style="margin-left: 500px; font-size: 20px;" >
            <input type="button" value="exit" style="margin-left: 50px; font-size: 20px;" onclick="window.location.href='Menu.jsp'" >
            </form>
              <%
                  }
               %>
    </body>
</html>
