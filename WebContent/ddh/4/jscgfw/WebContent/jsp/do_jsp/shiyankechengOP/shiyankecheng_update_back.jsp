<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../../inc/conn.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.math.BigDecimal"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变--><!DOCTYPE 

span PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

   
  

try 
{
  String beizhu=request.getParameter("beizhu");
  String shiyankechengmingcheng = request.getParameter("shiyankechengmingcheng");
 
 %><%
 String juese = request.getParameter("juese");
	String zongshishu = request.getParameter("zongshishu");
	String zhoushishu = request.getParameter("zhoushishu");
	String xueshengrenshu = request.getParameter("xueshengrenshu");
	String pingxingbangeshu = request.getParameter("pingxingbangeshu");
	String meibanfenzucishu = request.getParameter("meibanfenzucishu");
	String zhidaojiaoshirenshu = request.getParameter("zhidaojiaoshirenshu");
	String shiyanleixing = request.getParameter("shiyanleixing");
	String shiyanbaogaocishu = request.getParameter("shiyanbaogaocishu");
	String pigaicishu = request.getParameter("pigaicishu");
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  shiyankecheng SET juese=?, zongshishu=?, zhoushishu=?, xueshengrenshu=?, pingxingbangeshu=?,"+
   "meibanfenzucishu=?, zhidaojiaoshirenshu=?, shiyanleixing=?, shiyanbaogaocishu=?, pigaicishu=?, beizhu=? "+
   "WHERE shiyankechengmingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,juese);
 ps.setString(2,zongshishu);
 ps.setString(3,zhoushishu);
 
ps.setString(4,xueshengrenshu );
ps.setString(5, pingxingbangeshu);
 
ps.setString(6,meibanfenzucishu);
 ps.setString(7,zhidaojiaoshirenshu);
 ps.setString(8,shiyanleixing);
 ps.setString(9,shiyanbaogaocishu);
 ps.setString(10,pigaicishu);
 
 ps.setString(11,beizhu);
 ps.setString(12,shiyankechengmingcheng);
  
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/jibenxingxi.jsp'/>
<%
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

