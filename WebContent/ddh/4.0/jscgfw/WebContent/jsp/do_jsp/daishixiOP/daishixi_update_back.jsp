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

 String shiximingcheng =request.getParameter("shiximingcheng");
 
 %><%
	String xuefen =request.getParameter("xuefen");
	String shichang =request.getParameter("shichang");
	String xueshengrenshu =request.getParameter("xueshengrenshu");
	String xunhuancishu =request.getParameter("xunhuancishu");
	String zhidaoneirong =request.getParameter("zhidaoneirong");
	String shixibaogao =request.getParameter("shixibaogao");
	String shifoupigai =request.getParameter("shifoupigai");
	
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  daishixi SET xuefen=?, shichang=?, xueshengrenshu=?, xunhuancishu=?, "+
   "zhidaoneirong=?, shixibaogao=?, shifoupigai=?, beizhu=? "+
   "WHERE shiximingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,xuefen);
 ps.setString(2,shichang);
 ps.setString(3,xueshengrenshu);
 
ps.setString(4,xunhuancishu );
 
ps.setString(5,zhidaoneirong);
 ps.setString(6,shixibaogao);
 ps.setString(7,shifoupigai);
 ps.setString(8,beizhu);
 ps.setString(9,shiximingcheng);
  
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/带实习.jsp'/>
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

