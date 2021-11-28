<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
	table{
	border:10px solid yellow;
	}
	.text{
		text-size:20px;
		color:yellow;
	}
.h1 {
    color: yellow;
    margin-left: 418px;
    font-size: 41px;
}
.img {
    width: 97px;
    height: 97px;
    border-radius: 58px;
    margin-top: 14px;
    margin-left: 317px;
    margin-bottom: -90px;
}
table {
    width: 606px;
    height: 293px;
    margin-top: 14px;
    margin-left: 317px;
}
</style>
<body bgcolor="black">
		<img class="img" src="IMAGE/message.png">
	<h1 class="h1">Candidate Received Message</h1>
<%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
			String sql="select * from userdb.candidate_message";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			%><div class="text">
			<table border="1">
			<tr>
			<th> Candidate ID</th>
			<th> Message </th>
			<%
			while(rs.next())
			{
				%>
				<tr>
				<td><%= rs.getInt(1) %></td>
				<td><%= rs.getString(2) %></td>
				
				  </div>	 
			
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