<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
 <%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

request.setCharacterEncoding("utf-8");
  %>
 
 
 <%
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
    con = DriverManager.getConnection(url);
  %>
  