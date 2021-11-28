<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	
		try
		{
			int i=0;
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userdb";
			String uname = "root";
			String pass = "root";
			
			Connection con =  DriverManager.getConnection(url, uname, pass);
				String sql ="select username,password from userdb.Voter where username='"+username+"' and password='"+password+"'";
				PreparedStatement pst=con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
					i=1;
					session.setAttribute("username", username);
					response.sendRedirect("voterhomepage.jsp");
					
				}
				if(i==0)
				{
					response.sendRedirect("voterlogin.jsp?msg=notexist");
				}
			}            
		catch(Exception e)
		{
			response.sendRedirect("voterlogin.jsp?msg=invalid");
				
		}




%>