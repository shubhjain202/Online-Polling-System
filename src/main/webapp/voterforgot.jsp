<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/voterforgotStyle.css">
    <title>voter forgot password Page</title>

   
</head>
<body class="body">
  <h1 class="h1"> <u>Reset Your Password</u></h1>
    <div class="wrapper">
      <form action="voterforgotAction.jsp" method="post" name="f1" onsubmit="return myfun()">
        <div class="email"><br>
         <b> Email</b> &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>
          <input type="email" name="email">
        </div>
       
        <div class="cno"><br>
         <b> Contact Number</b><br>
          <input type="number" name="phone" required><br>
        </div>
        <div class="uname"><br>
        <b>  Username</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<br>
          <input type="text" name="username" required><br>
        </div>
        <div class="question"><br>
         <b> Security Question </b>&nbsp;<br>
          <select name="securityQuestion" style ="width: 250px; height: 30px;" required>
            <option value="What is your date of birth?">What is your date of birth?</option>
            <option value="What was your favorite school teachers name?">What was your favorite school teachers name?</option>
            <option value="What is your favorite movie?">What is your favorite movie?</option>
            <option value="What was your first car?">What was your first car?</option>
            <option value="What is your astrological sign?">What is your astrological sign?</option>
            <option value="What is your favorite movie?">What city were you born in?</option>
            </select>
        </div>
        <div class="answer"><br>
          <b>Enter Your Answer </b>&nbsp;<br>
          <input type="text" name="answer" required><br>
        </div>
        <div class="pass"><br>
            <b>  Set new Password</b> &nbsp;&nbsp;&nbsp;<br>
             <input type="password" name="newpassword" required><br>
           </div>
        <div class="submit"><br>
          <input type="submit" value="Reset" name="t19"><br>

        </div>
        </form>
      </div>
       <%
    	String msg=request.getParameter("msg");
    	if("done".equals(msg))
    	{%>
    	<script>
    	function myfun()
    	{
    		alert("Sucessfully Updated");
    	}
		</script>    	
    	<%} %>
    	<%
    	 if("invalid".equals(msg))
    	{
    	%>
    	<script>
    	function myfun()
    	{
    		alert("Please provide Correct Information");
    	}
		</script>    
    	<% }%>
      
      
      
      
 
</body>
</html>