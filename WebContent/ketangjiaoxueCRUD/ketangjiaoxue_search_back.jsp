<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>

<%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;


try 
{
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
  

   String Gonghao=request.getParameter("kechengmingcheng");
   
   String sea_sql = "SELECT *  FROM ketangjiaoxue WHERE kechengmingcheng=?";
  
   
   con = DriverManager.getConnection(url);
  
   ps = con.prepareStatement(sea_sql);
   ps.setString(1, Gonghao);
   rs = ps.executeQuery();
   	out.println("<tr><td>课程名称</td><td>课程性质</td><td>授课形式</td><td>是否</td><td>学分</td><td>学时</td><td>授课班个数</td><td>平行班个数</td><td>作业次数</td><td>批改次数</td><td>答疑次数</td><td>备注</td></tr>");

while (rs.next()) 
   {
   String kechengmingcheng = rs.getString("kechengmingcheng");
   String kechengxingzhi = rs.getString("kechengxingzhi");
   String shoukexingshi = rs.getString("shoukexingshi");
   String shifou = rs.getString("shifou");
   String xuefen = rs.getString("xuefen");
   String xueshi = rs.getString("xueshi");
   String shoukebangeshu = rs.getString("shoukebangeshu");
   String pingxingbangeshu = rs.getString("pingxingbangeshu");
   String zuoyecishu = rs.getString("zuoyecishu");
   String pigaicishu = rs.getString("pigaicishu");
   String dayicishu = rs.getString("dayicishu");
   String beizhu = rs.getString("beizhu");
   
   out.println("<tr><td>"+kechengmingcheng+"</td><td>"+kechengxingzhi+"</td><td>"+shoukexingshi+"</td><td>"+shifou+"</td><td>"+xuefen+"</td><td>"+xueshi+"</td><td>"+shoukebangeshu+"</td><td>"+pingxingbangeshu+"</td><td>"+zuoyecishu+"</td><td>"+pigaicishu+"</td><td>"+dayicishu+"</td><td>"+beizhu+"</td><td>");
   }

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

