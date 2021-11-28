<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="java.sql.*"%>
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
		int i=0;
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		String url = "jdbc:mysql://localhost:3306/userdb";
		String uname = "root";
		String pass = "root";
		
		Connection con =  DriverManager.getConnection(url, uname, pass);
		String Email=request.getParameter("email");
		String contactNumber= request.getParameter("phone");
		String username=request.getParameter("username");
		String Securityquestion=request.getParameter("securityQuestion");
		String Answer =request.getParameter("answer");
		String NewPassword= request.getParameter("newpassword");
		
			String sql ="select * from userdb.candidate where email='"+Email+"' and contact_no='"+contactNumber+"'and username='"+username+"'and securityQuestion='"+Securityquestion+"'and securityAnswer='"+ Answer+"'";
			PreparedStatement pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
				i=1;
				pst.executeUpdate("update userdb.candidate set password ='"+NewPassword+"' where username='"+username+"'");
				response.sendRedirect("candidatelogin.jsp?msg=done");
			}
			if(i==0)
			{
				response.sendRedirect("candidateforgot.jsp?msg=invalid");
			}
			
	}
	catch(Exception e)
	{
		//out.println(e);
	}



%>
</body>
</html>