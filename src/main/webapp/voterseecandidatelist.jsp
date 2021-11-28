<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	text-decoration:none;
}
.h1 {
    margin-top: 20px;
    margin-left: 453px;
    font-size: 35px;
    color: yellow;
}
table {
    border: 10px solid yellow;
    width: 419px;
    margin-top:10px;
    margin-left: 387px;
    height: 135px;
    color: white;
}
button {
    margin-top: 216px;
    margin-left: 657px;
    width: 155px;
    height: 34px;
    border-radius: 9px;
    text-decoration:none;
}
</style>
</head>
<body bgcolor="black">
	<h1 class="h1"> List Of Candidate </h1>
	<form action="voterseecandidatelist.jsp" method="post">
		<input type="submit" value="PROCEED TO VOTE" formaction="votervotecandidate.jsp" ><br><br>
		<input type="submit" value="BACK" formaction="voterhomepage.jsp" >
    </form>	
	<%
	try
	{		
	
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
		String id=(String)session.getAttribute("id");
		
		String sql="select * from userdb.candidate natural join userdb.Approve";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		%>
		<table border="1">
		<tr>
		<th> Candidate ID</th>
		<th> Name</th>
		<th> Party Name</th>
		<th> Election Region</th>
		</tr>
		
		<%
		while(rs.next())
		{
			%>
			
			<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)+"	"+rs.getString(3)%></td>
			<td><%= rs.getString(8)%></td>
			<td><%= rs.getString(17)%></td></tr>
		
			<% 
		} 
		
	}
catch(Exception e)
{
	out.println(e);
}
		 %>
	 

</body>
</html>