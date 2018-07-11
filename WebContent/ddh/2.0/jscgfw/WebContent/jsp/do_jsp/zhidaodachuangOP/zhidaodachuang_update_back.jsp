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

  String xiangmumingcheng = request.getParameter("xiangmumingcheng");
 
 %><%
// 	String xuefen =request.getParameter("xuefen");
 
 
	String xiangmujibie = request.getParameter("xiangmujibie");
	String xuantilaiyuan = request.getParameter("xuantilaiyuan");
	String xiangmuzhuangkuang = request.getParameter("xiangmuzhuangkuang");
	String jietidengji = request.getParameter("jietidengji");
	String xueshengnianji = request.getParameter("xueshengnianji");
	String xiangmuyingxiang = request.getParameter("xiangmuyingxiang");
	String xueshengrenshu = request.getParameter("xueshengrenshu");
	
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  zhidaodachuang SET xiangmujibie=?, xuantilaiyuan=?, xiangmuzhuangkuang=?, jietidengji=?, "+
   "xueshengnianji=?, xiangmuyingxiang=?, beizhu=?, xueshengrenshu=? "+
   "WHERE xiangmumingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,xiangmujibie);
 ps.setString(2,xuantilaiyuan);
 ps.setString(3,xiangmuzhuangkuang);
 
ps.setString(4,jietidengji );
 
ps.setString(5,xueshengnianji);
 ps.setString(6,xiangmuyingxiang);
 ps.setString(7,beizhu);
 ps.setString(8,xueshengrenshu);
 ps.setString(9,xiangmumingcheng);
   	
   
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

