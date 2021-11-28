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
	width:300px;
	height:150px;
	margin-left:-80px;
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
	}
	input[type="text" i] {
    padding: 12px 31px;
    margin-left:23px;
    border-radius:18px;
	}
	input[type="submit" i] {
    margin-left:160px;
	margin-top:10px;
	border-radius:27px;
	color:black;
	border-style:none;
	background-color:yellow;
	height:50px;
	width :89px;
	font:bold15pxarial,sans-serif;
	text-shadow:none;
	}
	.I2{
	box-sizing:10px;
	}
	.I3{
	font-size:24px;
	color:yellow;
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
<form action="votersendmessage.jsp" method="post">
	<img src="IMAGE/messagebox.jpg"><br>
	<div class ="I1">
	<b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
		Voter ID </b>   
	</div>
	<div class="I2">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	<input type="text" name="t1" placeholder="Enter Your voter ID "><br><br><br>
	</div>
	<div class="I3">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	
	<b>Type Your Queries Here </b> <br>
	</div>
	<div class="I4">
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;
	 
		<textarea name="t2"> </textarea>
		</div>
		<div class="I5">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	  
	<input type="submit" value ="SEND">
	</div>
	</form>
<%
   		String id=request.getParameter("t1"); 
		String msg=request.getParameter("t2");
	try
	{		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
			String sql1="insert into userdb.voter_message(voter_id,message) values('"+id+"','"+msg+"') on duplicate key update message='"+msg+"'";
			PreparedStatement pst1= con.prepareStatement(sql1);
			int j=pst1.executeUpdate();
			if(j>0)
			{
				response.sendRedirect("voterafterqestion.jsp");
			}
			else
			{
				response.sendRedirect("votersendmessage.jsp");
			}
		
	}
	catch(Exception e)
	{
		//e.printStackTrace();
	//out.println(e);
	}
%>

	
</body>
</html>