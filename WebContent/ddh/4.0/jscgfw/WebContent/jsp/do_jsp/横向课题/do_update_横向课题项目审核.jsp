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
String ketimingcheng=request.getParameter("ketimingcheng");
 String shenhe=request.getParameter("op");
 
 %>
 

 
 <%
  
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE hengxiangketixiangmu SET  shenheqingkuang='"+shenhe+"'  WHERE  xiangmumingcheng='"+ketimingcheng+"'";
  
  

   ps=con.prepareStatement(ins_sql);




   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }else{
      	%>
   	
   	
	<span style='color:green'>修改失败</span>
	

   	<%
    
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/横向课题项目审核.jsp'/>

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

