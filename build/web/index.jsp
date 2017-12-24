
<html>
 <head>
     <style>
         body{
             
            background-color: #56ABE4;
         }
          #heading{
            width: auto;
             height: 100px;
             text-align: center;
            margin-top: 80px;
             font-size: 40px;
          
         }
         
      #form{
         margin-top: 50px;
         margin-left: 430px;
         margin-right: 500px;
         height: 250px;
         border: gray solid medium ; 
         background-color: lightblue;
         }
         
         input[type="text"]{
             margin-top: 30px;
             width: 50%;
             height: 30px;
         }
          input[type="password"]{
             width: 50%;
             height: 30px;
         }
         </style>
      </head>    
    <body>
        <div id ="heading">        
        Human Resource Management 
            </div>
        <div id="form">
    <form name="login" action="loginprocess.jsp" method="POST">
        <label style="margin-top: 30px ;margin-left: 20px ;font-size: 20px"> Username : </label>
         <input type="text" name="username" ><br><br><br>
         
         <label style="margin-left: 20px ;font-size: 20px"> Password : </label>
            <input type="password" name="password"><br><br><br>
            
            <input type="submit" value="login" style="font-size: 20px; width: 40%;  margin-left: 20px">
         <input type="button" value="Forgot Password " style="font-size: 20px; width: 40%">
    </form>
            </div>
            </body>
  
    </html>