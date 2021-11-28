<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import=" java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.h1 {
    margin-left: 531px;
    margin-top: -96px;
    font-size: 37px;
    color: yellow;
    margin-bottom: 20px;
}
table {
    border: 10px solid yellow;
    margin-left: 523px;
    margin-top: 30px;
    width: 408px;
    height: 179px;
    color: yellow;
}
.img {
    margin-left: 387px;
    margin-top: 15px;
    width: 120px;
    height: 109px;
    border-radius: 40px;
}
</style>
</head>
<body bgcolor="black">
<img class ="img" src="IMAGE/promises.jpg">
<h1 class="h1">Candiadte's Promises</h1>
<% 
try
	{		
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/userdb";
	String uname = "root";
	String pass = "root";
	
	Connection con =  DriverManager.getConnection(url, uname, pass);
		String id=(String)session.getAttribute("id");
		
		String sql="select * from userdb.promise";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		%>
		<table border="1">
		<tr>
		<th> Candidate ID</th>
		<th> Promises</th>
		</tr>
		<% 
		while(rs.next())
		{
		%><tr>
			<td> <%= rs.getInt(1) %></td>
			<td><%= rs.getString(2)%></td>
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