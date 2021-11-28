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
	.a{color: yellow;
		font-size:25px;
		text-align:center;
	}
input[type=number] {
    width: 30px;
    padding: 12px 20px;
    margin-left: 490px;
    margin-top: 18px;
    width: 228px;
    height: 8px;
    border-radius: 7px;
    align: center;
}
input[type=submit] {
    width: 30px;
    font-size: 20px;
    color: rgb(0, 0, 0);
    padding: 8px 20px;
    margin-left: 549px;
    margin-top: 18px;
    width: 132px;
    height: 39px;
    border-radius: 34px;
}
.h1 {
    font-size: 30px;
    color: yellow;
    margin-left: 57px;
    margin-right: 30px;
}
.h2 {
    font-size: 26px;
    color: yellow;
    margin-left: 279px;
    margin-top: -33px;
}
.h3 {
    font-size: 30px;
    color: yellow;
    margin-left: 638px;
    margin-top: -33px;
}
.h4 {
    font-size: 27px;
    color: yellow;
    margin-left: 778px;
    margin-top: -33px;
}
.h5 {
    font-size: 30px;
    color: yellow;
    margin-left: 57px;
    margin-top: -33px;
}
.h6 {
    font-size: 26px;
    color: yellow;
    margin-left: 272px;
    margin-top: -33px;
}
.h7 {
    font-size: 30px;
    color: yellow;
    margin-left: 636px;
    margin-top: -33px;
}
.h8 {
    font-size: 26px;
    color: yellow;
    margin-left: 775px;
    margin-top: -33px;
}
.h9 {
    font-size: 30px;
    color: yellow;
    margin-left: 58px;
    margin-top: -29px;
}
.h10 {
    font-size: 26px;
    color: yellow;
    margin-left: 272px;
    margin-top: -28px;
}
.h11 {
    font-size: 30px;
    color: yellow;
    margin-left: 58px;
    margin-top: 26px;
}
.h12{
	 font-size: 26px;
    color: yellow;
    margin-left: 272px;
    margin-top: -28px;
}
.h13 {
    font-size: 30px;
    color: yellow;
    margin-left: 633px;
    margin-top: -127px;
}
.h14 {
    font-size: 26px;
    color: yellow;
    margin-left: 828px;
    margin-top: -28px;
}
.h15 {
    font-size: 30px;
    color: yellow;
    margin-left: 633px;
    margin-top: 28px;
}
.h16{
 font-size: 26px;
    color: yellow;
    margin-left: 828px;
    margin-top: -28px;
}

.h17 {
    font-size: 30px;
    color: yellow;
    margin-left: 52px;
    margin-top: -5px;
}
.h18 {
    font-size: 26px;
    color: yellow;
    margin-left: 268px;
    margin-top: -31px;
}
.h19 {
    font-size: 30px;
    color: yellow;
    margin-left: 633px;
    margin-top: -31px;
}
.h20 {
    font-size: 26px;
    color: yellow;
    margin-left: 845px;
    margin-top: -31px;
}
.h21 {
    font-size: 30px;
    color: yellow;
    margin-left: 55px;
    margin-top: -8px;
}
.h22 {
    font-size: 26px;
    color: yellow;
    margin-left: 264px;
    margin-top: -33px;
}
.h23 {
    font-size: 30px;
    color: yellow;
    margin-left: 635px;
    margin-top: -28px;
}
.h24 {
    font-size: 26px;
    color: yellow;
    margin-left: 828px;
    margin-top: -35px;
}
.h25 {
    font-size: 30px;
    color: yellow;
    margin-left: 55px;
    margin-top: -30px;
}
.h26 {
    font-size: 26px;
    color: yellow;
    margin-left: 265px;
    margin-top: -34px;
}
.h27 {
    font-size: 30px;
    color: yellow;
    margin-left: 633px;
    margin-top: -30px;
}
.h28 {
    font-size: 26px;
    color: yellow;
    margin-left: 851px;
    margin-top: -33px;
}
	</style>
</head>
	
		
</head>
<body bgcolor="yellow">
		
		<form action="candidatesearch.jsp" method="post">
		<div class="a">
		Enter Candidate ID 
		</div>
		<div class="b">
		<input type="number" name="t1">
		</div>
		<div class="c">
		<input type="submit" value="PROCEED">
		</div>
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
			
			
				String sql="select candidate_id,first_name,last_name,father_name,dob,state,city,party_name,address,email,contact_no,pin_code,username,gender,election_region from userdb.candidate where candidate_id='"+id+"'";
				PreparedStatement pst= con.prepareStatement(sql);
				ResultSet rs=pst.executeQuery();
				{
					if(rs.next())
					{
						
				%>
					<h1 > Profile</h1>
				<div class="h1">
				 Candidate ID 
				 </div><div class="h2">
				 <%
					out.println(rs.getInt(1)); 
				  %></div><div class="h3">
				 
				 Name: </div>
				 	<div class="h4">
					<%
					out.println(rs.getString(2));
					out.println(rs.getString(3));
					%></div> <br> <br>
					<div class="h5">
				Father's Name:
				</div>
				<div class="h6">
					<%
					out.println(rs.getString(4));
					%> 
				</div>
				<div class="h7">
					DOB:
					</div>
					<div class="h8">
					<%
					out.println(rs.getString(5));
					%></div> <br><br>
					  <div class="h9">
				State: 
				</div>
				<div class="h10">
					<%
					out.println(rs.getString(6));
					%>
					</div>
					
					<div class="h11">		
							
				City: 
				</div>
				<div class="h12">
					<%
					out.println(rs.getString(7));
					%> <br> <br>
					</div>
					
					<div class="h13">
					
					Party Name: 
					</div>
					<div class="h14">
					<%
					out.println(rs.getString(8));
					%> 
					</div>
					
					
					<div class="h15">
					
					Address: 
					</div>
					<div class="h16">
					<% 		
				   out.println(rs.getString(9));
					%>	<br><br>
					</div>
					
							
					<div class="h17">
								
				  Email:</div>
				  <div class="h18">
				  <% 
					 out.println(rs.getString(10)); 
				   %></div>
				  	<div class="h19">
				 Contact Number:
				 </div>
				 <div class="h20">
				 	 <% 
					  out.println(rs.getString(11)); 
				  	  %><br><br>
					</div> 
					
					<div class="h21"> 
					
				  Pin Code:
				  </div>
				  <div class="h22">
				   <%
					 out.println(rs.getString(12)); 
					  %>
				 </div>
				  <div class="h23">
				 	
				  Username:
				  </div>
				  <div class="h24">
				   <% 
					  out.println(rs.getString(13));
				  %></div><br><br>
				 
				<div class="h25">
				  Gender:
				  </div>
				  <div class="h26">
				  <% 
					  out.println(rs.getString(14)); 
				  %>
				  </div>
				  <div class="h27">  
				   Election Region:
				   </div><div class="h28">
				 	 <% 
					  out.println(rs.getString(15)); 
				  	  %></div>
				  	  <%
					  }
				  
				  
				else
				{
					response.sendRedirect("searchnotfound.jsp");
				}
		}		 
				
		}
		catch(Exception e)
		{
			//e.printStackTrace();
		//out.println(e);
		}
		
		
	%>
</body>
</html>