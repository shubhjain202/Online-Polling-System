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
    font-size: 52px;
    color: yellow;
    margin-top: 22px;
    margin-left: 370px;
}
.h2 {
    font-size: 27px;
    color: yellow;
    margin-top: 41px;
    margin-left: 284px;
    margin-bottom: -26px;
}

   input[type="number" i] {
    padding: 1px 2px;
    width: 223px;
    height: 30px;
    border-radius: 16px;
    margin-top: -23px;
	margin-bottom:10px;
    margin-left: 585px;
}

input[type="submit" i] {
    width: 124px;
    height: 30px;
    border-radius: 1px;
    margin-top: 45px;
    margin-bottom: 10px;
    margin-left: 510px;
}

button {
    width: 124px;
    height: 30px;
    border-radius: 1px;
    margin-top: 14px;
    margin-bottom: 101px;
    text-decoration: none;
    margin-left: 513px;
}
</style>
</head>
<body bgcolor="black">	<h1 class ="h1"> Approve the Candidate</h1>
	<form action="conductElection1.jsp" method="post">
		<h1 class="h2">Enter the Candidate ID: <input type="number" name="t1"> <br> <br>
		
		
		<input type="submit" value ="ADD"> <br> <br>
		
		
		<input type="submit" value="PROCEED" formaction="conductElection2.jsp">
		</h1>
		
	</form>
	<%
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
		int id=Integer.parseInt(request.getParameter("t1"));
		String sql="insert into userdb.Approve values('"+id+"')";
		PreparedStatement pst= con.prepareStatement(sql);
		int i=pst.executeUpdate();
		
		if(i>0)
		{
			
			session.setAttribute("id", String.valueOf(id));
			
			response.sendRedirect("conductElection1.jsp");
		}
		else
		{
			out.println("Caddidate ID is not present");
		}
	
	}
	
	
	catch(Exception e)
	{
		//out.println(e);
	}
	
	
	
	%>

</body>
</html>