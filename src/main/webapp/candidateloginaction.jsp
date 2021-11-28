<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="java.sql.*"%>
<%
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String party_name =request.getParameter("party_name");
	
		try
		{
			int i=0;
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userdb";
			String uname = "root";
			String pass = "root";
			
			Connection con =  DriverManager.getConnection(url, uname, pass);
				String sql ="select username,password,party_name from userdb.candidate where username='"+username+"' and password='"+password+"' and party_name='"+party_name+"'";
				PreparedStatement pst=con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				while(rs.next())
				{
					i=1;
					session.setAttribute("username",username);
					response.sendRedirect("candidatehomepage.jsp");
					
				}
				if(i==0)
				{
					response.sendRedirect("candidatelogin.jsp?msg=notexist");
				}
			}            
		catch(Exception e)
		{
			response.sendRedirect("candidatelogin.jsp?msg=invalid");
				
		}




%>