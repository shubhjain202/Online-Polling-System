<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<%
	
		try
		{		
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userdb";
			String uname = "root";
			String pass = "root";
			
			Connection con =  DriverManager.getConnection(url, uname, pass);
			int id=Integer.parseInt(request.getParameter("t1"));
			%> 
			<table border="1">
			<tr>
			<th> Candidate ID</th>
			<th> Message </th>
			</tr>
			<% 
				String sql="select * from userdb.voter_message";
				PreparedStatement pst= con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				{
					while(rs.next())
					{
						%>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<%
					}
				}
		}
	catch(Exception e)
	{
		out.println(e);
	}%>
</body>
</html>