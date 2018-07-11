<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../inc/conn.jsp"%>
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
 String kechengmingcheng=request.getParameter("kechengmingcheng");
 
 %><%
    String shoukexingshi=request.getParameter("shoukexingshi");
  String shifou=request.getParameter("shifou");
   String xuefen=request.getParameter("xuefen");
   String xueshi=request.getParameter("xueshi");
   String shoukebangeshu=request.getParameter("shoukebangeshu");
   String pingxingbangeshu=request.getParameter("pingxingbangeshu");
   String zuoyecishu=request.getParameter("zuoyecishu");
   String pigaicishu=request.getParameter("pigaicishu");
   String dayicishu=request.getParameter("dayicishu");
   String kechengxingzhi=request.getParameter("kechengxingzhi");
   String xuenian=request.getParameter("xuenian");
   BigDecimal bd=new BigDecimal(xuefen);  
BigDecimal bd2=new BigDecimal(xueshi); 
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  ketangjiaoxue SET kechengxingzhi=?, shoukexingshi=?, shifou=?, xuefen=?, xueshi=?,"+
   "shoukebangeshu=?, pingxingbangeshu=?, zuoyecishu=?, pigaicishu=?, dayicishu=?, beizhu=?,"+
   "xuenian=? WHERE kechengmingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,kechengxingzhi);
 ps.setString(2,shoukexingshi);
 ps.setString(3,shifou);
 
ps.setBigDecimal(4,bd );
ps.setBigDecimal(5, bd2);
 
ps.setInt(6,Integer.parseInt(shoukebangeshu));
 ps.setInt(7,Integer.parseInt(pingxingbangeshu));
 ps.setInt(8,Integer.parseInt(zuoyecishu));
 ps.setInt(9,Integer.parseInt(pigaicishu));
 ps.setInt(10,Integer.parseInt(dayicishu));
 
 ps.setString(11,beizhu);
 ps.setString(12,xuenian);
  
 ps.setString(13,kechengmingcheng);
   	
   
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

