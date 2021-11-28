<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/candidateloginStyle.css">
    <title>Document</title>
</head>
<body><div class="body">
    <div class ="bgimage">
    <div class="blur"></div>
    <div class="login">
        <h2 class="active"> Log In</h2>
        <form action="candidateloginaction.jsp" method="post"name="f1" onsubmit="return myalert()">
            <input type="text"class="text" name="username">
            <span>Username</span>

            <br>

            <br>
            <input type="password"class="text" name="password">
            <span>Password</span>
            <br>
            <br>

            <br>
            <input type="text"class="text" name="party_name">
            <span>Party Name</span>
            <br>

            <input type="checkbox" id="checkbox"class="checkbox" name="checkbox"/>
            <label for ="checkbox"> Keep me Signed in </label>
            <button class="signin">
                Login 
            </button>
            <h4 class="newuser"> New User?</h4>
                <a class="a" href="candidatenSignup.jsp"> <b> Sign Up</b></a>
              <br><br>
            <hr>
            <a class="ca" href="candidateforgot.jsp"> <b>Forgot Password ?</b></a>
        </form>
        </div>
       </div>
         <%
    	String msg=request.getParameter("msg");
    	if("notexist".equals(msg))
    	{%>
    	<script>
    	function myalert()
    	{
    		alert("Incorrect Username Or Password");
    	}
		</script>    	
    	<%} %>
    	<%
    	if("invalid".equals(msg))
    	{
    	%>
    	<script>
    	function myalert()
    	{
    		alert("Incorrect Username Or Password");
    	}
		</script>    
    	<% }%>
</body>
</html>