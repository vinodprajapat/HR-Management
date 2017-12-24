<!Doctype html>

<head>
     <%@include file="Menu.jsp" %>
    <title>Register</title>
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
        .left{
            float: left;
            display: block;
            width: 50%;
        }
         .right{
            float: right;
            display: block;
           width: 50%;
        }
       #Dob{
            display: inline;
        }
        #div_1.div{
            float: left;
        }
    </style>

    <script type="text/javascript" src="http://code.jquery.com/jquery.js">
    </script>

    <script type="text/javascript">
    	$(document).ready(function(){
				// Hide div 2 by default
			$('#div_2').hide();
			$('#div_3').hide();
			$('#link_2').click(function(){ 
			    $('#div_1').hide();
			    $('#div_3').hide();
			    $('#div_2').show();
			});

			$('#link_3').click(function(){ 
			    $('#div_1').hide();
			    $('#div_2').hide();
			    $('#div_3').show();
			});

			$('#link_1').click(function(){ 
			    $('#div_2').hide();
			    $('#div_3').hide();
			    $('#div_1').show();
			}); 
		});        

        function function_1()
        {
            $('#div_1').hide();
            $('#div_3').hide();
            $('#div_2').show();
        }

        function function_2()
        {
            $('#div_1').hide();
            $('#div_2').hide();
            $('#div_3').show();
        }
    </script> 
    
    
  <script>

var request;

 function sendInfo()
 {
 
var v=document.myform.empid.value;

var url="checkemp.jsp?empid="+v;

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
    
   

        <form  name="myform"  method="post" action="addemp.jsp"  onsubmit="return validateform()" autocomplete="on"  >
           
           
            <input type="button" value="Personal Detail" id="link_1"/>
            <input type="button" value="Job Detail"  id="link_2"/>
            <input type="button" value="Earning Detail"  id="link_3"/>
            
       <div id="div_1">
            <fieldset>
            
             <div >
              <label for="employee_code">Employee Code </label>
              <input type="number" name="empid"  onchange="sendInfo()" required />
              <span id="result"> </span>
            </div>

            <div >
              <label for="name">Name </label>
              <input type="text" name="name"   value="" required />
            </div>
            
            <div >
              <label for="fathername">Father Name </label>
              <input type="text" name="fname"  value=""  required />
            </div>
            
            <div >
              <label for="bloodgroup">Blood Group</label>
              <select name="blood_group">
                  <option value="A+ve">A+ve</option>
                  <option value="B+ve">B+ve</option>
                  <option value="O+ve">O+ve</option>
                  <option value="AB">AB</option>
                  <option value="A-ve">A-ve</option>
                  <option value="B-ve">B-ve</option>
                  <option value="O-ve">O-ve</option>
              </select>
            </div>
            
            <div   id="Dob">
                <label for="dob-day" >Date of Birth</label>
                <input type="date" name="dob">
            </div>
            
            <div >
                <label for="gender" >Gender</label>
                <input type="radio" name="gender" value="male" checked> Male
                <input type="radio" name="gender" value="female"> Female
            </div>
            
            <div>
                <label for="marital_status">Marital Status</label>
                <input type="radio" name="marital_status" value="unmarried" checked> Unmarried
                <input type="radio" name="marital_status" value="married"> Married
            </div>
            
            <div>
              <label for="nationality">Nationality</label>
              <input type="text" name="nationality"   value="" required />
            </div>
           
           <div >
                <label for="medicalfitness">Medical Fitness</label>
                <input type='radio' name="medical_fitness"  value="yes" checked>Yes
                 <input type='radio' name="medical_fitness" value="no" >No         
            </div>    
     
            <div>
              <label for="present-address">Present Adress </label>
              <input type="text" name="present_address"   value="" required />
            </div>
            
            <div>
              <label for="permanent-address">permanent Adress </label>
              <input type="text" name="permanent_address"   value="" required />
            </div>
            
            <div>
              <label for="email">Email Id </label>
              <input type="email" name="emailid"  value=""  required />
            </div>
            
            <div>
              <label for="phoneno">Phone Number </label>
              <input type="number" name="phoneno"  required />
            </div>
            </fieldset>

            <input type="button" onclick="function_1()" value="Next">
    	</div> 

    	<div id="div_2">
    		<fieldset>
            <div>
                <label for="modeofrecuitment">Mode Of Recruitment</label>
                <input type="text" name="modeofrec"  value="" />
            </div>
                
         
            
            <div id="Doj">
                <label for="doj-day" >Date of Joining</label>
                <input type="date" name="doj">
            </div>
            
            <div>
                <label for="department">Department</label>
                <input type="text" name="department"  value="" />
            </div>
            
            <div>
                <label for="branch">Branch</label>
                <input type="text" name="branch"  value="" />
            </div>
            <div> 
              <label for="designation">Designation</label>
              <input type="text" name="designation"  value=""  required />
            </div>
            
            <div >
              <label for="type-of-employee">Type Of Employee</label>
              <input type="text" name="type_of_employee"  value=""  required />
            </div>
            
            <div >
              <label for="grade">Grade</label>
              <input type="text" name="grade"   value="" required />
            </div>
            
            <div>
              <label for="category-of-employee">Category Of Employee</label>
              <input type="text" name="category_of_employee"   value="" required />
            </div>
            
            </fieldset>	
            <input type="button" onclick="function_2()" value="Next">
    	</div>

    	<div id="div_3">
    		<fieldset>
    			<div>
    		<label for="basic-salary">Basic Salary</label>
                	<input type="number" name="basic_salary"/>
    			</div>
    			<div>
                       
                            <label for="salary-per-day">Salary Per Day</label>
                	<input type="number" name="salary_per_day"/>
    			</div>
    		</fieldset>
            <input type="submit"  value="Save">
         <input type="button" value="exit" style="margin-left: 20px; width: 5% " onclick="window.location.href='Menu.jsp'" >

    	</div>

    	</form>
          
        
         
</body>