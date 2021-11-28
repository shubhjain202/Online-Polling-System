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
    margin-left: 643px;
    margin-top: -37px;
}

.h12 {
    font-size: 26px;
    color: yellow;
    margin-left: 792px;
    margin-top: -32px;
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
    margin-top: 24px;
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
</style>
</head>
	
		
</head>
<body bgcolor="yellow">
		
		<form action="deletevoter.jsp" method="post">
		<div class="a">
		Enter Voter ID 
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
       		 String sql = "delete from userdb.voter where voter_id = '"+id+"'";
        	 PreparedStatement pst = con.prepareStatement(sql);
        	 int i= pst.executeUpdate();
	         	if(i>0)
				{
	            	response.sendRedirect("deletedsucessfully.jsp");
				}
   
			else
			{
				response.sendRedirect("searchnotfound.jsp");
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