<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

		<style>
		.h1{
		color:yellow;
		margin-top:69px;
		margin-bottom:18px;
		font-size:72px;
		 margin-left:309px;
		}
		.I1{
		font-size:33px;
		table-border:1px;
		color:yellow;
		text-align:center;
		}
		table {
    border-collapse: separate;
    text-indent: initial;
    border-spacing: 3px;
    border-width:4px;
    width:36%;
    height:162px;
    margin-bottom:10px;
    margin-left:309px;
    border-color:yellow;
}
td {
   text-align:top;
    color:yellow;
    font-size:20px;
}
.I2{
  margin-bottom:10px;
    margin-left:309px;

}
tr{
		margin-top:10px;

}
		</style>


</head>
<body bgcolor="black">
<h1 class="h1"> Your Promises</h1>

<%


try
{		
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/userdb";
	String uname = "root";
	String pass = "root";
	
	Connection con =  DriverManager.getConnection(url, uname, pass);
		
		String id=(String)session.getAttribute("id");
		String sql="select promises from userdb.promise where candidate_id='"+id+"'";
		PreparedStatement pst= con.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		%>
		<table border="1">
		<%
			if(rs.next())	
			{
				%><div class="I2">
				<tr> 
						<div class="I1">
						<td><%=rs.getString(1) %></td>
						</div>
					</tr>
					</div>
		<% 	}
		else
			{
				out.println("Please Enter the candidate ID first");
			}
}
catch(Exception e)
{
	out.println(e);
}


%>
</body>
</html>