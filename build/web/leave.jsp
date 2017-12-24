
<head>
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
    </style>

</head>

<body>
    
 
      
 
    <form action="leave_handle.jsp" method="post">
      <div>
        <label for="Employee-code">Employee Code</label>
        <input type="number" name="empid"  required />      
      </div>

  
        <div>
        <label for="leave_type">Leave Type</label>
          <select name="leave_type">
            <option value="Sick">Sick</option>
            <option value="Holiday">Holiday</option>
            <option value="Home">Home</option>
           </select>
      </div>

      <div>
        <label for="from" >From</label>
        <input type="date" name="leave_from" required />
      </div>

      <div>
        <label for="to" >To</label>
          <input type="date" name="leave_to" required />
      </div>

      <div>
          <label for="reason">Reason </label>
          <input type="text" name ="reason"  required />
      </div>

          

       <div>
          <label for="contact">Contact Details During Leave </label>
          <input type="number" name="contact"  required />
      </div>

     <input type="submit" value="Apply" style=" margin-left: 500px; font-size: 20px; width: 20%"  >
    </form>         
</body>





         