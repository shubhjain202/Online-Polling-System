<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.h1 {
    margin-left: 625px;
    margin-top: -96px;
    font-size: 79px;
    color: yellow;
    margin-bottom: 20px;
}
table {
    border: 10px solid yellow;
    margin-left: 475px;
    margin-top: 28px;
    width: 374px;
    height: 147px;
    color: yellow;
    
}
.img {
    margin-left: 474px;
    margin-top: 14px;
    width: 138px;
    height: 117px;
    border-radius:40px;
}
</style>
</head>
<body bgcolor="black">
<img class ="img" src="IMAGE/result.jpg">
<h1 class="h1"> Result</h1>
	<%
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
		String sql1="select candidate_id, count(candidate_id) as 'no_of_vote' from userdb.result group by candidate_id order by 'no_of_vote' desc";
		PreparedStatement pst1=con.prepareStatement(sql1);
		ResultSet rs=pst1.executeQuery();
		%><table border="1">
	<tr>
	<th> Candidate ID </th>
	<th> Number of Vote </th>
	<%
		while(rs.next())
		{
			
			int id =rs.getInt(1);
			%><tr>
			
			<td><%= rs.getInt(1)%>
			<td><%= rs.getInt(2)%>
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