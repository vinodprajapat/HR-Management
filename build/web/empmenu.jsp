 <!Doctype html>


<head>
    <title>Company Name</title>
   

    <link href="/normalize.css" rel="stylesheet">
    <style>

        body{
            margin: 0 !important;                /*for complete the cover of webpage*/ 
            padding: 0 !important;
            background: url("images/emp.jpg");
            background-size: cover ;
        }  
        ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #34495e;
    width: 100%;

}

li {
    float: left;
}

li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 50px;
    text-decoration: none;
    width:100%;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color:#e4495e;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #34495e;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: white;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {background-color: #e4495e;}

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
            <a href="javascript:void(0)" class="dropbtn" id="leave"><img src="images/leave.png" height="20px" width="20px">Leave</a>
            <div class="dropdown-content" >
                <a href="leave.jsp">Apply for a leave</a>
                <a href="leavehistory.jsp">Leave Status</a>
            </div>
        </li>

        <li class="dropdown">
            <a href="javascript:void(0)" class="dropbtn"><img src="images/payroll.png" height="20px" width="20px">Salary</a>
        </li>

       

        <li class="dropdown">
            <a href="javascript:void(0)" class="dropbtn"><img src="images/recruitment.png" height="20px" width="20px">Recruitment</a>
        </li>
        
        <li class="dropdown">
             <a href="logout.jsp" class="dropbtn"><img src="images/logout.png" height="20px" width="20px">Logout</a>
         </li>
    </ul>
   
<%
    

%>
 
</body>
</html>






