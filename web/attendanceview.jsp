<!Doctype html>

<head>
    <title> Attendance Information </title>
    <jsp:include page="Menu.jsp"></jsp:include>
    <%@page import="bean.* " %>
    <%@page import="java.sql.*" %>
    
    <link href="/normalize.css" rel="stylesheet">
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
    
    <script>

var request;

 function sendInfo()
 {
 
var emp=document.myform.empid.value;
var attfrom=document.myform.att_from.value;
var attto=document.myform.att_to.value;


var url="showattendance.jsp?empid="+emp+"&att_from="+attfrom+"&att_to="+attto;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}

else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getInfo;
request.open("GET",url,true);
request.send();
}
catch(e)
{
alert("Unable to connect to server");
}
}

function getInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('result').innerHTML=val;
}
}

</script>
 </head>

<body>
   
    <div>
        <form name="myform">
        <label for="employee_code">Employee Code </label>
         <input type="number" name="empid"  required />
         <br>
         <label > Date From </label>
          <input type="date" name="att_from">
         <br>
         <label>Date To </label>
          <input type="date" name="att_to"> 
         <br><br>
         <input type="button" value="Search" style="margin-left: 400px " onclick="sendInfo()">
    
      </form>  
    </div>
      <span id="result"> 
       </span>    
         
</body>





         