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
	String canid    =  request.getParameter("t1");
	String fname    =  request.getParameter("t2");
	String lname    =  request.getParameter("t3");
	String fathername    =  request.getParameter("t4");
	String dob    =  request.getParameter("t5");
	String state    =  request.getParameter("t6");
	String city   =  request.getParameter("t7");
	String address   =  request.getParameter("t8");
	String email   =  request.getParameter("t9");
	String contactno   =  request.getParameter("t10");
	String pincode   =  request.getParameter("t11");
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	
	String url = "jdbc:mysql://localhost:3306/userdb";
	String uname = "root";
	String pass = "root";
	
	Connection con =  DriverManager.getConnection(url, uname, pass);
	String sql="update userdb.candidate set first_name='"+fname+"',last_name='"+lname+"',father_name='"+fathername+"',dob='"+dob+"',state='"+state+"',city='"+city+"',address='"+address+"',email='"+email+"',contact_no='"+contactno+"',pin_code='"+pincode+"'where candidate_id='"+canid+"'";
		PreparedStatement pst1=con.prepareStatement(sql);
		int i=pst1.executeUpdate();
		if(i>0)
		{
			response.sendRedirect("candidateafterupdate.jsp");
		}
		else
		{
			out.println("Unable to Update ");
		}
}
catch(Exception e)
{
  //e.printStackTrace();
  out.println(e);
}
%>
</body>
</html>