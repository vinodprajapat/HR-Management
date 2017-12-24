
<html>
    <head>
    <title> Salary  Management </title>
  
      <h2 style="margin-left: 400px" > Salary </h2>
      
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
            width: 40%;
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
var mon=document.myform.month.value;
var yr=document.myform.year.value;


var url="show_salary.jsp?empid="+emp+"&month="+mon+"&year="+yr;

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
            <div>
                <form action="show_salary.jsp" method="post">
       
         <br>
         
         <label> Month </label>
           <select name="month" >
            <option value="01">January</option>
            <option value="02">February</option>
            <option value="03">March</option>
            <option value="04">April</option>
            <option value="05">May</option>
            <option value="06">June</option>
            <option value="07">July</option>
            <option value="08">August</option>
            <option value="09">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
          </select>
       
       
          <span style="display:inline-block; width: 30px;"></span> Year
              <select name="year" >    
            <option value="2016">2016</option>
            <option value="2015">2015</option>
            <option value="2014">2014</option>
            <option value="2013">2013</option>
            <option value="2012">2012</option>
            <option value="2011">2011</option>
            <option value="2010">2010</option>
            
          </select>
         <br>
         <label for="employee_code">Employee Code </label>
         <input type="number" name="empid"  required />
         
         <input type="submit" value="Search" />
    
      </form>  
    </div>
            
        </div>
        
        <span id="result"> </span>>
    </body>
 
    
</html>