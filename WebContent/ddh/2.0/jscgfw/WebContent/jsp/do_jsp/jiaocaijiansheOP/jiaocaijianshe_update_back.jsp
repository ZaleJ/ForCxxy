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

  String jiaocaimingcheng = request.getParameter("jiaocaimingcheng");
 
 %><%
// 	String xuefen =request.getParameter("xuefen");
 
 
	String chubanshe = request.getParameter("chubanshe");
	String chubanshijian = request.getParameter("chubanshijian");
	String jiaocaizishu = request.getParameter("jiaocaizishu");
	String benrengongxian = request.getParameter("benrengongxian");
	String shifou = request.getParameter("shifou");
	
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  jiaocaijianshe SET chubanshe=?, chubanshijian=?, jiaocaizishu=?,  benrengongxian=?, shifou=?, "+
   "beizhu=? "+
   "WHERE jiaocaimingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,chubanshe);
 ps.setString(2,chubanshijian);
 ps.setString(3,jiaocaizishu);
 
ps.setString(4,benrengongxian );
 
ps.setString(5,shifou);
ps.setString(6,beizhu);
ps.setString(7,jiaocaimingcheng);
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/教材建设.jsp'/>
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

