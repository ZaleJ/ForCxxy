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

 String ketimingcheng =request.getParameter("ketimingcheng");
 
 %><%
 String ketilaiyuan = request.getParameter("ketilaiyuan");
	String renwujuese = request.getParameter("renwujuese");
	String ketixingzhi = request.getParameter("ketixingzhi");
	String xiangmuzhuangkuang = request.getParameter("xiangmuzhuangkuang");
	String lixiangshijian = request.getParameter("lixiangshijian");
	String jietishijian = request.getParameter("jietishijian");
	String xiangmuzhiliang = request.getParameter("xiangmuzhiliang");
	
   String ins_sql = "UPDATE  chengdanjiaoyanjiaogaiketi SET ketilaiyuan=?, renwujuese=?, ketixingzhi=?, xiangmuzhuangkuang=?, "+
   "lixiangshijian=?, jietishijian=?, xiangmuzhiliang=?, beizhu=? "+
   "WHERE ketimingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,ketilaiyuan);
 ps.setString(2,renwujuese);
 ps.setString(3,ketixingzhi);
 
ps.setString(4,xiangmuzhuangkuang );
 
ps.setString(5,lixiangshijian);
 ps.setString(6,jietishijian);
 ps.setString(7,xiangmuzhiliang);
 ps.setString(8,beizhu);
 ps.setString(9,ketimingcheng);
  
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/承担教研教改课题.jsp'/>
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

