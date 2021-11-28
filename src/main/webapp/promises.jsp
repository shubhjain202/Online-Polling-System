<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
	textarea
	{
	width:429px;
	height:195px;
	margin-left:222px;
	margin-top:10px;
	border-radius:18px;
	}
	img{
	width:201px;
	height:177px;
	margin-left:450px;
	margin-top:-8px;
	border-radius:104px;
	}
	.I1{
	font-size:24px;
	color:yellow;
	margin-left:10px;
	margin-top:9px;
	margin-bottom:-26px;
	}
	input[type="text" i] {
    padding: 12px 31px;
    margin-left:322px;
    border-radius:18px;
	}
	input[type="submit" i] {
    margin-left:326px;
	margin-top:3px;
	border-radius:27px;
	color:black;
	border-style:none;
	background-color:yellow;
	height:37px;
	width :140px;
	font:bold15pxarial,sans-serif;
	text-shadow:none;
	cursor:pointer;
	}
	button{
	margin-left:350px;
	margin-top:29px;
	margin-bottom:-10px;
	border-radius:27px;
	color:black;
	border-style:none;
	background-color:yellow;
	height:37px;
	width :140px;
	font:bold15pxarial,sans-serif;
	text-shadow:none;
	cursor:pointer;
	}
	.I2{
	box-sizing:10px;
	}
	.I3{
	font-size:24px;
	color:yellow;
	margin-left:6px;
	margin-top:38px;
	margin-bottom:-76px;
	}
	.I4{
	font-size:50px;
	}
	.I5{
	
	}
	Voter ID
	{
	font-size:20px;
	}


</style>
<body bgcolor="black">
<form action="promises.jsp" method="post">
	<img src="IMAGE/promisee.jpg"><br>
	<div class ="I1">
	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		Candidate ID </b>   
	</div>
	<div class="I2">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<input type="text" name="t1" placeholder="Enter Your voter ID "><br><br><br>
	</div>
	<div class="I3">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<b>Type Your Promises Here </b> <br>
	</div>
	<div class="I4">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;
	 
		<textarea name="t2" placeholder="maximum(100 word)"> </textarea>
		</div>
		<div class="I5">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  
	<input type="submit" value ="ADD">
	</div>
	</form>
	<div class="button">
	
	<a href="viewpromisescandidate.jsp"><button>VIEW </button></a>
	
	
	
	
	
	<%
   		String id=request.getParameter("t1"); 
		String p=request.getParameter("t2");
	try
	{		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
			String sql1="insert into userdb.promise(candidate_id,promises) values('"+id+"','"+p+"') on duplicate key update promises='"+p+"'";
			PreparedStatement pst1= con.prepareStatement(sql1);
			int j=pst1.executeUpdate();
			if(j>0)
			{
				session.setAttribute("id", id);
				response.sendRedirect("afterpromises.jsp");

			}
			else
			{
				response.sendRedirect("promises.jsp");
			}
		
	}
	catch(Exception e)
	{
		//e.printStackTrace();
	out.println(e);
	}
%>
	</body>
	</html>