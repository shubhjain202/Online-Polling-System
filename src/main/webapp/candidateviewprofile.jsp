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
			
			
				String sql="select candidate_id,first_name,last_name,father_name,dob,state,city,party_name,address,email,contact_no,pin_code,username,gender,election_region from userdb.candidate where username='"+str1+"'";
				PreparedStatement pst= con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				{
					if(rs.next())
						
				%>
				
				&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				 Candidate ID &nbsp;: &nbsp; &nbsp;&nbsp; 
				 <%
					out.println(rs.getInt(1)); 
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
				 	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;
					 	
				   
				    
			
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
								&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
							
							
							
				City: 
					<%
					out.println(rs.getString(7));
					%> <br> <br>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					
					
					
					Party Name: 
					<%
					out.println(rs.getString(8));
					%> 
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp; &nbsp;&nbsp;
					
					
					
					Address: 
					<% 		
				   out.println(rs.getString(9));
					%>	<br><br>
					&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				
							
					
								
				  Email:
				  <% 
					 out.println(rs.getString(10)); 
				   %>
				  	 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				  	    	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				  	    	   	&nbsp; &nbsp;&nbsp;&nbsp; 
				 Contact Number:
				 	 <% 
					  out.println(rs.getString(11)); 
				  	  %><br><br>
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					
					 
					
				  Pin Code:
				   <%
					 out.println(rs.getString(12)); 
					  %>
				 	&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				 	 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				     &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				      &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				   &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				  
				  
				 	
				  Username:
				   <% 
					  out.println(rs.getString(13));
				  %><br><br>
				  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
				
				  Gender:
				  <% 
					  out.println(rs.getString(14)); 
				  %>  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp;  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;
				   Election Region:
				 	 <% 
					  out.println(rs.getString(15)); 
				  	  %>
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
					  &nbsp; 
				  <%
				  
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