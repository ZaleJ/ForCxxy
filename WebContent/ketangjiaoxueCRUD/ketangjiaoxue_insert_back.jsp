<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%
Connection con = null;
PreparedStatement ps = null;


try 
{
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
  
   
   String ketangmingcheng=request.getParameter("ketangmingcheng");
   String shoukexingshi=request.getParameter("shoukexingshi");
   String kechengxingzhi = request.getParameter("kechengxingzhi");
   String shifou=request.getParameter("shifou");
   String xuefen=request.getParameter("xuefen");
   String xueshi=request.getParameter("xueshi");
   String shoukebangeshu=request.getParameter("shoukebangeshu");
   String pingxingbangeshu=request.getParameter("pingxingbangeshu");
   String zuoyecishu=request.getParameter("zuoyecishu");
   String pigaicishu=request.getParameter("pigaicishu");
   String dayicishu=request.getParameter("dayicishu");
   String beizhu=request.getParameter("beizhu");
   
   String ins_sql = "INSERT INTO ketangjiaoxue VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
  
   
   con = DriverManager.getConnection(url);
  
   ps = con.prepareStatement(ins_sql);
   ps.setString(1, ketangmingcheng);
   ps.setString(2, kechengxingzhi);
   ps.setString(3, shoukexingshi);
   ps.setString(4, shifou);
   ps.setString(5, xuefen);
   ps.setString(6, xueshi);
   ps.setString(7, shoukebangeshu);
   ps.setString(8, pingxingbangeshu);
   ps.setString(9, zuoyecishu);
   ps.setString(10, pigaicishu);
   ps.setString(11, dayicishu);
   ps.setString(12, beizhu);
   	ps.executeUpdate();

} 

//以下代码捕捉异常
catch (Exception e) 
{
   System.out.println(e.getMessage());
} 
    
//以下代码是用来关掉数据库的是必须要写的，照写OK
finally 
{

  
   if (ps != null) 
   {
    try {ps.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
   if (con != null) 
   {
    try {con.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
}
%>

