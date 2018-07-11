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
String zhuanlimingcheng=request.getParameter("zhuanlimingcheng");
 String zhuanlileixing=request.getParameter("zhuanlileixing");
   String shenqingshijian=request.getParameter("shenqingshijian");
  String shifoushouli=request.getParameter("shifoushouli");
   String shifouhuoshouquan=request.getParameter("shifouhuoshouquan");
   String shifouhuozhuanhua=request.getParameter("shifouhuozhuanhua");
 
   String beizhu=request.getParameter("beizhu");
   DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  java.util.Date ustime = format.parse(shenqingshijian);
      //java.util.Date ustime2 = format.parse(yujijietishijian);
 %><%
  
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   //java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  shenqingzhuanli SET  zhuanlileixing=?, shenqingshijian=?, shifoushouli=?, shifouhuoshouquan= ? ,shifouhuozhuanhua=?, beizhu=?  WHERE  zhuanlimingcheng=?";
  
   

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,zhuanlileixing);
 ps.setDate(2,stime);
 ps.setString(3,shifoushouli);
  

 ps.setString(4,shifouhuoshouquan);
 ps.setString(5,shifouhuozhuanhua);
  //ps.setString(6,shouluqingkuang);
 
 ps.setString(6,beizhu);

   ps.setString(7,zhuanlimingcheng);
 
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/申请专利.jsp'/>
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

