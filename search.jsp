<%@ page import="java.sql.*"%>
<%!
        PreparedStatement psmt = null; 
        Statement smt = null;
        Connection con = null;
        ResultSet rs = null;
%>
<% 

    try 
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/emp_db","root","");
        smt = con.createStatement();   
    
%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>search employee</title>
	<form>
	<select id="class" name="name" required>
        <%
        	smt = con.createStatement();
        	rs = smt.executeQuery("select * from emp_name");
        	while(rs.next())
        	{
        		out.println("<option>"+rs.getString(2)+"</option>");
        	}
        %>
	</select>
</head>
<body>

</body>
</html>
<%	}
	catch(Exception e)
	{
		out.println(""+e);
	}	
%>