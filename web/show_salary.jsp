<%@page import="bean.* " %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.util.concurrent.TimeUnit" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
     
              <style>
            
                  body{
                      background-image: none;
                  }
                  
                  label {
                    display: inline-block;
                    width: 25%;
                    text-align: right;
                     margin: 10px;
                    }
            input[type=text], .register input[type=number]{
                    width: 40%;
                   font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
                   padding: 5px;
                   font-size: 0.9em;
                   border-radius: 5px;
                   background: rgba(0, 0, 0, 0.07);
                }
          
            </style>
   
    <script>

 function calculate()
 {

var pay =parseInt(document.myform1.otherpay.value);
var salary =parseInt(document.myform1.earning.value);
var ded =parseInt(document.myform1.deducation.value);
var basicsalary= parseInt(document.myform1.salary.value);
var net =pay + salary + ded + basicsalary;

document.getElementById('netpay').value= net;

}

</script>
 


    </head>
    
    <body>
                      
    
        <%
            
         String s2=request.getParameter("empid");
          s2=s2.trim();
        int empid=Integer.valueOf(s2);
             
       String month=request.getParameter("month");
       String year=request.getParameter("year");
           
    Connection con=Connection_Provider.getCon();
           
   PreparedStatement ps= con.prepareStatement("select HR.PERSONAL_DETAIL.NAME, HR.EMP_JOB_DETAIL.DESIGNATION from HR.PERSONAL_DETAIL, HR.EMP_JOB_DETAIL where HR.PERSONAL_DETAIL.EMPID = HR.EMP_JOB_DETAIL.EMPID and HR.PERSONAL_DETAIL.EMPID=? ");
    ps.setInt(1,empid);
     
 ResultSet rs=ps.executeQuery();
     
 boolean status=rs.next();
 
   if(status==false)
   {
   %>
   <jsp:include page="salary_structure.jsp"></jsp:include>
   <%
    out.print(" Sorry, could not find Employee. ");
   }
   else
    {
  %>
    <label>Name  : </label>
    <%
   out.print(rs.getString(1));

    %>
         
         <br>
    
         <label> Designation : </label>
      <%   out.print(rs.getString(2));
      %>
        <br> 
        <label> Total Leaves : </label>
         <%
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
               %>
               
               <br>
               
            <label> Total Present : </label>
               <%
      PreparedStatement ps1=con.prepareStatement("SELECT COUNT(EMPID) FROM HR.ATTENDANCE WHERE EMPID=? AND STATUS= ? and DATETIME >=? and DATETIME <= ?");
             ps1.setInt(1,empid);
             ps1.setString(2, "P");
             ps1.setDate(3,sd1);
             ps1.setDate(4,sd2);
             
              ResultSet rs2=ps1.executeQuery();
              while(rs2.next())
                  out.print(rs2.getInt(1));
            
              %>
              <br>
              
         
              <%
               PreparedStatement ps3=con.prepareStatement("select BASIC_SALARY from HR.EMP_EARNING_DETAIL where EMPID=?");
               ps3.setInt(1,empid);
               
              ResultSet rs3=ps3.executeQuery();
             
              rs3.next();            
              %>
             
                            
              <form name="myform1" action="savesalary.jsp" method="post">
                  <input type="text" name="empid" style="display: none" value= <%= empid %> >
                   <input type="text" name="month"  style="display: none" value= <%= month %> >
                   <input type="text" name="year"  style="display: none" value=<%= year %>>
                      
                  <label> Basic Salary : </label>  <input type="number" name="salary" value=<%= rs3.getInt(1)%> > <br>
                  <label> Other Pay: </label>  <input type="number" name="otherpay" required /><br>
                  <label> Earning : </label>  <input type="number" name="earning" required /><br>
                  
                  <label> Deduction : </label> <input type="number" name="deducation" required /><br>
                  <label> Net Pay : </label> <input type="number"   id="netpay" name="net"    required  > <br><br>
                  
                  <input type="button" value="Calculate" onclick="calculate()" style="margin-left: 300px" />
                  <input type="submit" value="Save" onclick="#" style="margin-left: 10px" />
                  <input type="button" value="Exit" onclick="window.location.href='Menu.jsp'" style="margin-left: 10px" />
              </form>
 
                   <%
                       }
               %>
    </body>
</html>
