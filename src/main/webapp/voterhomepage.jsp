<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/voterhomeStyle.css">
    <title>Document</title>
</head>
<body class= wrapper>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
    
    <div class="nav">
         <a href="voterviewprofile.jsp"class= "profile1">&nbsp; <b><img class="I1" src="IMAGE/viewprofile.avtar.jpg"> VIEW PROFILE </b> </a> 
        <a href="voterupdateprofile.jsp"class= "profile2"> &nbsp;<b><img class="I2" src="IMAGE/update.jpg"> UPDATE </b></a>
        <a href="votersendmessage.jsp"class= "profile3"> &nbsp;<b><img class="I3"src="IMAGE/question.jpg">ASK QUESTION</b></a>
        <a href="voterseecandidatelist.jsp"class= "profile4"> &nbsp;<b><img class ="I4"src="IMAGE/votelogo.png">VOTE</b></a>
		
        <a href="voterseeresult.jsp"class= "profile5"> &nbsp;<b><img class ="I5"src="IMAGE/result.jpg">VIEW RESULT</b></a>
        <a href="voterlogout.jsp" class="profile6"> &nbsp;<b><img class ="I6"src="IMAGE/logout.jpg">LOGOUT</b></a>
    </div>

    <img class="img" src="IMAGE/vote3.jpg" alt="Avatar">
    <h1 class="h1"> Welcome</h1>
    <h1 class="h2"> Voter</h1>

    <div class="icon">
        <a href="#"><icon-icon name="logo-facebook"></icon-icon>
            </a>
            </div>
            <%  String str=(String)session.getAttribute("username");
            	if(str!=null)
            	{
            		session.setAttribute("username", str);
            	}
            		
            		%>

</body>
</html>