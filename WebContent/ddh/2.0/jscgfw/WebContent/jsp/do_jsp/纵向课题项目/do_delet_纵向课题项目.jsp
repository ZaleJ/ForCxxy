<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../../inc/conn.jsp" %>
<%


try 
{
  
 
 
  

   String ketimingcheng=request.getParameter("p");
 
   String ins_sql = "DELETE FROM zongxiangketixiangmu WHERE ketimingcheng=?";
  

 
  
   ps = con.prepareStatement(ins_sql);
  
   ps.setString(1, ketimingcheng);
   
   	ps.executeUpdate();
   	
   	
 	ps.executeUpdate();

 %>
 
   <meta http-equiv='refresh'  content='1;../../index/jsp/纵向课题项目.jsp'  class="del" />

 
 <%  }  
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

