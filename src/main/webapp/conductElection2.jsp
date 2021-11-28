<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.h1{
 font-size: 47px;
    color: yellow;
    margin-top: 22px;
    margin-left: 370px;
}
button {
    padding: 1px 2px;
    width: 124px;
    height: 32px;
    border-radius: 5px;
    margin-top: 214px;
    margin-bottom: 10px;
    margin-left: 585px;
}
table {
    border: 10px solid yellow;
    width: 538px;
    margin-top: -268px;
    margin-left: 387px;
    height:173px;
    color: yellow;
}

</style>
</head>
<body bgcolor="black">
	<h1 class="h1"> List Of Approved Candidate </h1>
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
			<td><%= rs.getString(17)%></td>
			<% 
			//out.println(rs.getInt(1)+"	  "+rs.getString(2)+"	"+rs.getString(3)+"	"+rs.getString(4)+"		"+rs.getString(5));
		}
		
}
catch(Exception e)
{
	out.println(e);
}


%>
<a href ="conductelection3.jsp"><button>Start the Election</button></a> <br><br>

</body>
</html>