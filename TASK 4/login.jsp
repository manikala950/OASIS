<%@page import="java.sql.*"%>
<%
int n = 0;
String username = request.getParameter("E1");
String password = request.getParameter("E2");

// Define your database connection details
String dbURL = "jdbc:mysql://localhost:3306/database_name";
String dbUser = "root";
String dbPassword = "950578@Ss";

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection(dbURL, dbUser, dbPassword);
    
    // Use prepared statement to prevent SQL injection
    PreparedStatement psmt = con.prepareStatement("SELECT COUNT(*) FROM myusers WHERE username=? AND password=?");
    psmt.setString(1, username);
    psmt.setString(2, password);
    
    ResultSet rs = psmt.executeQuery();
    
    if (rs.next()) {
        n = rs.getInt(1);
    }
    
    if (n == 1) {
        // Authentication successful
        session.setAttribute("usernm", username);
        session.setAttribute("login", "true");
        response.sendRedirect("displayp.jsp");
    } else {
        // Authentication failed
        response.sendRedirect("invalid.jsp");
    }
    
    rs.close();
    psmt.close();
    con.close();
} catch (Exception e) {
    e.printStackTrace();
    // Handle any exceptions here
    response.sendRedirect("error.jsp"); // Redirect to an error page
}
%>
