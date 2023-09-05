<html>
<body>
<table align='center' border=1>
<%@page import="java.sql.*"%>
<%
out.println("<br><br>");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/database_name", "root", "950578@Ss");
    PreparedStatement psmt=con.prepareStatement("select * from myusers");
    psmt.executeUpdate();
    ResultSet rs=psmt.executeQuery();
    ResultSetMetaData rsmd=rs.getMetaData();
    int cols=rsmd.getColumnCount();
    out.println("<tr>");
    for(int i=1;i<=cols;i++)
    out.println("<th>"+rsmd.getColumnName(i));
    out.println("</tr>");
    while(rs.next()){
        out.println("<tr>");
        for(int j=1;j<=cols;j++)
            out.println("<td>"+rs.getString(j));
        out.println("</tr>");
    }
    
    psmt.close();
    con.close();

%>
</table>
<center><br><br><a href='login.html'>Click Here</a> to LogOut</center>
</body>
</html>