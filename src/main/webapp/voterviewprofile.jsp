<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

			<style>
	body {background-color: black;
			font-size:26px;
			color:yellow;
	}
	h1   {color: yellow;
		font-size:61px;
		text-align:center;}
		
	img{
		margin-top:-5px;
		margin-bottom: -42px;
		margin-left:500px;
		margin-right:1px;
		border-radius:50%;
		height:202px;
		width:216px;	
	}
	
	</style>
</head>
	
		
</head>
<body bgcolor="yellow">
		<img src=IMAGE/viewprofile.avtar.jpg>
		
		
		<h1 > Your Profile</h1>
		

	<%
	
		try
		{		
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userdb";
			String uname = "root";
			String pass = "root";
			
			Connection con =  DriverManager.getConnection(url, uname, pass);
			String str1=(String)session.getAttribute("username");
			
			
				String sql="select voter_id,first_name,last_name,father_name,dob,state,city,address,email,contact_no,pin_code,username,gender from userdb.voter where username='"+str1+"'";
				PreparedStatement pst= con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				{
					if(rs.next())
					session.setAttribute("uid","x");
						
				%>
				
				&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				 Voter ID &nbsp;: &nbsp; &nbsp;&nbsp; 
				 <%
				 int x=rs.getInt(1);
					//out.println(rs.getInt(1)); 
				 out.println(x);
				  %>
				  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				     &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp;&nbsp;
				 Name: 
					<%
					out.println(rs.getString(2));
					out.println(rs.getString(3));
					%> <br> <br>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				Fther's Name:
					<%
					out.println(rs.getString(4));
					%> 
				
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;
				 
				   
				    
			
					DOB:
					<%
					out.println(rs.getString(5));
					%> <br><br>
					  &nbsp; &nbsp;  &nbsp; &nbsp;
				State: 
					<%
					out.println(rs.getString(6));
					%>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp; &nbsp;&nbsp;
							
				City: 
					<%
					out.println(rs.getString(7));
					%> <br> <br>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					Address: 
					<% 		
				   out.println(rs.getString(8));
					%>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							
							
								
				  Email:
				  <% 
					 out.println(rs.getString(9)); 
				   %><br><br>
				  	 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				 Contact Number:
				 	 <% 
					  out.println(rs.getString(10)); 
				  	  %>
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; 
				  Pin Code:
				   <%
					 out.println(rs.getString(11)); 
					  %><br><br>
				 	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				  Username:
				   <% 
					  out.println(rs.getString(12));
				  %>
				  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				     &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				      &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				       &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				        &nbsp; &nbsp;
				  Gender:
				  <% 
					  out.println(rs.getString(13)); 
				  %>
				  <br>
				  <%
				  
				}
					
				 
				
		}
		catch(Exception e)
		{
			//e.printStackTrace();
		out.println(e);
		}
		
		
	%>
	<form action ="voterviewprofile.jsp" method="post">
	<input type="submit" value="GO BACK" formaction="voterhomepage.jsp">
	</form>
</body>
</html>