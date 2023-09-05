<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver"); // Load the MySQL JDBC driver
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name", "root", "950578@Ss");
PreparedStatement psmt = con.prepareStatement("INSERT INTO myusers VALUES(?, ?, ?, ?)");
psmt.setString(1, request.getParameter("E1"));
psmt.setString(2, request.getParameter("E2"));
psmt.setString(3, request.getParameter("E3"));
psmt.setString(4, request.getParameter("E4"));
psmt.executeUpdate();
out.println("<br><br><h1 style='text-align:center;color:green'>User Created</h1>");
out.println("<center><br><br><a href='login.html'>Click Here</a> to Login</center>");
psmt.close();
con.close();
%>
