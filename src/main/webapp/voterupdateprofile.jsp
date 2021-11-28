<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/voterupdateStyle.css">
    <title>Voter Update Page</title>
    <style>
        img{
        margin-top:10px;
		margin-bottom: -91px;
		margin-left:-494px;
		margin-right:1px;
		border-radius:50%;
		height:143px;
		width:137px;	
        }
        .vid{
    width:100%;
    text-align: left;
    padding: 12px 20px;
    margin: 6px 0;
    box-sizing: 15px;
}
    </style>

   
</head>
<body class="body">
  
    
  <h1 class="h1">
    <div class="img">
        <img src="IMAGE/update.jpg">
    </div>  
    
    <u>Upadte Profile</u>
</h1>
    <div class="wrapper">
      <form action="voterupdateprofileAction.jsp" method ="post">
        <div class="vid"><br>
            <b> Voter ID </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
             <input type="num" name="t1" required><br>
           </div>
        <div class="fname"><br>
         <b> First Name</b> &nbsp;&nbsp;&nbsp;<br>
          <input type="text" name="t2" required><br>
        </div>
        <div class="lname"><br>
         <b> Last Name </b>  &nbsp;&nbsp;&nbsp;<br>
          <input type="text" name="t3" required><br>
        </div>
        <div class="father"><br>
         <b> Father Name </b>  &nbsp;<br>
          <input type="text"name="t4" required><br>
        </div>
        <div class="dob"><br>
         <b> DOB </b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="date" name="t5" required><br>
        </div>
        <div class="state"><br>
         <b> State </b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br>
          <input type="text" name="t6" required><br>
        </div>
        <div class="city"><br>
         <b> City </b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;<br>
          <input type="text" name="t7" required><br>
        </div>
        <div class="address"><br>
         <b> Address</b> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;<br>
          <textarea name="t8" required></textarea><br>
        </div>
        <div class="email"><br>
         <b> Email</b> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;<br>
          <input type="email" name="t9" required><br>
        </div>
       
        
        
        <div class="cno"><br>
         <b> Contact Number</b><br>
          <input type="number" name="t10" required><br>
        </div>
        <div class="pin"><br>
         <b> Pin Code</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="number" name="t11" required><br>
        </div>
        <div class="submit"><br>
          <input type="submit" value="UPDATE" name="t12"><br>

        </div>
        </form>
      </div>
</body>
</html>