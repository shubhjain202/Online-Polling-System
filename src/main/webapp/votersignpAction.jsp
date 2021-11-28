<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*"%>
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
		String fname=request.getParameter("t1");
		String lname=request.getParameter("t2");
		String fathername=request.getParameter("t3");
		String dob=request.getParameter("t4");
		String State=request.getParameter("t5");
		String City=request.getParameter("t6");
		String Address=request.getParameter("t7");
		String email=request.getParameter("t8");
		String contactnumber=request.getParameter("t9");
		String Pincode=request.getParameter("t10");
		String Username=request.getParameter("t11");
		String gender=request.getParameter("t12");
		String Password=request.getParameter("t13");
		String Confirm_password=request.getParameter("t14");
		String securityQuestion=request.getParameter("t15");
		String answer=request.getParameter("t16");
		
			String sql="insert into userdb.Voter(first_name,last_name,father_name,dob,state,city,address,email,contact_no,pin_code,username,gender,password,confirmpassword,securityQuestion,securityAnswer) values ('"+fname+"','"+lname+"','"+fathername+"','"+dob+"','"+State+"','"+City+"','"+Address+"','"+email+"','"+contactnumber+"','"+Pincode+"','"+Username+"','"+gender+"','"+ Password+"','"+Confirm_password+"','"+ securityQuestion+"','"+answer+"')";
			//String sql="insert into candidate(first_name,last_name,father_name,dob,state,city,party_name,address,email,contact_no,pin_code,username,gender,password,confirmpassword,election_region,securityQuestion,securityAnswer) values('Ashutosh','kumar','Panchanand Choudhary',25-20-2001,'Aa','hjsh','Bjp','ajaj','hjh',121,128,'jaj','sss','www','aaa','asa','ete','hsh')";
			PreparedStatement pst= con.prepareStatement(sql);
			int i=pst.executeUpdate();
			if(i>0)
			{
				response.sendRedirect("voterlogin.jsp");
			}
			else
			{
				response.sendRedirect("votersignup.jsp");
			}
		
	}
	catch(Exception e)
	{
		out.println(e);
		
		
	}
	%>
</body>
</html>