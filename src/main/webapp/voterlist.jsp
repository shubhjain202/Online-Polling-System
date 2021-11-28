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
	.h1{
		color:yellow;
		text-align:center;
		font-size:40px;
		
	}
	.img{
    width: 97px;
    height: 97px;
    border-radius: 58px;
    margin-top: 9px;
    margin-left: 440px;
    margin-bottom:-90px;
	
	}

</style>
<body bgcolor="black">
		<img class="img" src="IMAGE/allvoter.jpg">
	<h1 class="h1">Voter List</h1>
<%
	try
{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
		
			String sql="select * from userdb.voter ";
			PreparedStatement pst= con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			%><div class="text">
			<table border="1">
			<tr>
			<th> Voter ID</th>
			<th> Name</th>
			<th> Fathers Name</th>
			<th>DOB</th>
			<th>State</th>
			<th> City</th>
			<th> Address</th>
			<th> Email</th>
			<th> Contact No</th>
			<th> Pin Code</th>
			<th> User Name</th>
			<th> Gender</th>
			<th> Password</th>
			<th> Security Question</th>
			<th> Security Answer </th>
			<%
			while(rs.next())
			{
				%>
				<tr>
				<td><%= rs.getInt(1) %></td>
				
				 <td><%=rs.getString(2)+"	"+rs.getString(3)%></td>	 
				 <td><%= rs.getString(4) %>	</td>
				<td><%= rs.getString(5) %></td>
				 <td><%=rs.getString(6) %></td>	 
				 <td><%= rs.getString(7) %>	</td>
				<td><%= rs.getString(8) %></td>
				 <td><%=rs.getString(9) %></td>	 
				 <td><%= rs.getString(10) %>	</td>
				<td><%= rs.getString(11) %></td>
				 <td><%=rs.getString(12) %></td>	 
				 <td><%= rs.getString(13) %>	</td>
				<td><%= rs.getString(14) %></td>
				 <td><%=rs.getString(16) %></td>	 
				<td><%= rs.getString(17) %></td>
				
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