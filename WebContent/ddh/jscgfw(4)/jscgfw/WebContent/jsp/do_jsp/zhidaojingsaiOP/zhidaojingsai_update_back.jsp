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

  String jingsaimingcheng = request.getParameter("jingsaimingcheng");
 
 %><%
// 	String xuefen =request.getParameter("xuefen");
 
 
 String jingsaijibie = request.getParameter("jingsaijibie");
	String huojiangqingkuang = request.getParameter("huojiangqingkuang");
	String zhidaoxingshi = request.getParameter("zhidaoxingshi");
	
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  zhidaojingsai SET jingsaijibie=?, huojiangqingkuang=?, zhidaoxingshi=?, "+
   "beizhu=? "+
   "WHERE jingsaimingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,jingsaijibie);
 ps.setString(2,huojiangqingkuang);
 ps.setString(3,zhidaoxingshi);
 
ps.setString(4,beizhu );
 
ps.setString(5,jingsaimingcheng);
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/指导大创.jsp'/>
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

