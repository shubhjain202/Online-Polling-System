<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
.h3 {
    margin-top: 21px;
    margin-left: 461px;
    font-size: 43px;
    color: yellow;
}


.h2 {
    margin-top: 24px;
    margin-left: 190px;
    font-size: 23px;
    color: yellow;
    margin-bottom: -39px;

}
input[type="submit" i] {
    appearance: auto;
    user-select: none;
    font-size: 26px;
    color: black;
    width: 123px;
    height: 37px;
    margin-top: 79px;
    margin-left: 454px;
}
input[type="number" i] {
    padding: 1px 2px;
    margin-top: 0px;
    margin-left: 490px;
    font-size: 26px;
    width: 209px;
    height: 23px;
}
.h1 {
    margin-top: 20px;
    margin-left: 189px;
    font-size: 26px;
    color: yellow;
    margin-bottom: -23px;
}
.p {
	margin-bottom:0px;
	margin-top:61px;
	margin-left: 350px;
    color: yellow;
    font-size: 20px;
    border: 2px solid yellow;
    width: 438px;
    height: 54px;
}

</style>

</head>
<body bgcolor="black">
	<form action ="votervotecandidate.jsp" method="post">
	
	<h1 class="h3">VOTE HERE</h1>
	<div class="h1">
	Enter Your Voter ID
	</div>
	<input type="number" name="t1"><br><br><br>
	<h1 class="h2">
	Enter the Candidate ID<br> Which You Want to Vote
	</h1>
	<input type ="number" name="t2"><br><br><br>
	
	<input type="submit" value="VOTE">
	<input type="submit" value="BACK" formaction="voterseecandidatelist.jsp">
	
	
	</form>
	<p class="p"> <b>NOTE &nbsp; :</b> After Vote if You see <i>Vote Successfull</i> then only your vote has been received otherwise try again</p>
	<% 
	try
		{
			int vid=Integer.parseInt(request.getParameter("t1"));
			int cid=Integer.parseInt(request.getParameter("t2"));
			int k=0;
Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/userdb";
			String uname = "root";
			String pass = "root";
			
			Connection con =  DriverManager.getConnection(url, uname, pass);
				String sql ="insert into userdb.result (voter_id,candidate_id) values ('"+vid+"','"+cid+"')";
				PreparedStatement pst=con.prepareStatement(sql);
			
				int i=pst.executeUpdate();
				if(i>0)
				{
					response.sendRedirect("votesucessfull.jsp");		
				}
		}
		catch(Exception e)
		{
				
		}
		%>
		
</body>
</html>