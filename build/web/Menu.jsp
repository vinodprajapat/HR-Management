<!Doctype html>

<head>
    <title>Company Name</title>
    <link href="/normalize.css" rel="stylesheet">
    <style>

        body{
            margin: 0 !important;                /*for complete the cover of webpage*/ 
           padding: 0 !important;
            background: url("images/a.jpg");
            background-size: auto;
        }  
        ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #56ABE4;
}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    width:100%;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: dodgerblue;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #C9C9C9;}

.dropdown:hover .dropdown-content {
    display: block;
}

@media only screen and (max-width: 500px) {
   li.dropdown{
    display: block;
   }
}
</style>
    
</head>

<body>
    <ul>
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn"  ><img src="images/employee.png" height="20px" width="20px">Employee</a>
             <div class="dropdown-content" >
                 <a href="emp_view.jsp ">Add New Employee</a>
                 <a href="personal_info.jsp">Edit Employee Personal Detail</a>
                 <a href="jobinfo.jsp">Edit Employee Job Detail</a>
                 <a href="#">Edit Employee Salary Detail</a>
             </div>
          </li>
            
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/leave.png" height="20px" width="20px">Leaves</a>
             <div class="dropdown-content" >
                 <a href="leave_application.jsp">Employee Leaves</a>
                 <a href="leave.jsp">Leave Application</a>
             </div>
          </li>
         
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/payroll.png" height="20px" width="20px">Payroll</a>
              <div class="dropdown-content" >
                 <a href="salary_structure.jsp">Salary Structure</a>
                 <a href="attendanceview.jsp">Attendance Detail</a>
                 <a href="leavereport.jsp">Leave Detail</a>
             </div>
         </li>
         <!--
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn"><img src="images/attendance.png" height="20px" width="20px">Attendance</a>
             <div class="dropdown-content" >
                 <a href="monthlyattendance.jsp">Monthly Attendance Report</a>
                 <a href="dailyattendance.jsp">Daily Attendance Report</a>
             </div>
         </li>
         -->
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/recruitment.png" height="20px" width="20px">Recruitment</a>
             <div class="dropdown-content">
                 <a href="#">Register</a>
                 <a href="#">Recruitment Detail</a>
             </div>
         </li>
         <!--
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/loan.png" height="20px" width="20px">Loan</a>
            <div class="dropdown-content">
                 <a href="#">Employee Loan</a>
                 <a href="#">Loan Application</a>
             </div>
         </li>
        
         
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/report.png" height="20px" width="20px">Reports</a>
             <div class="dropdown-content">
                 <a href="#">HR Reports</a>
                 <a href="#">Recruitment Reports</a>
                 <a href="#">Employee Reports</a>
                 <a href="#">Payroll Reports</a>
                 <a href="#">Training Reports</a>
             </div>
         </li>
         -->
         
         <li class="dropdown">
             <a href="javascript:void(0)" class="dropbtn" ><img src="images/training.png" height="20px" width="20px">Training</a>
              <div class="dropdown-content" >
                 <a href="#">Employee Training</a>
                 <a href="#">Training Event</a>
             </div>
         </li>
         <li class="dropdown">
             <a href="#" class="dropbtn"><img src="images/announcement.png" height="20px" width="20px">Announcements</a>
             
         </li>
         <li class="dropdown">
             <a href="logout.jsp" class="dropbtn"><img src="images/logout.png" height="20px" width="20px">Logout</a>
         </li>
    </ul>
    
  
</body>
