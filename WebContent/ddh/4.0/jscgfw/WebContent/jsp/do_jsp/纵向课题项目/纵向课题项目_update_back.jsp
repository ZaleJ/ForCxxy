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
 String ketilaiyuan=request.getParameter("ketilaiyuan");
 
 %><%
    String renwujuese=request.getParameter("renwujuese");
  String ketixingzhi=request.getParameter("ketixingzhi");
   String jingfeiedu=request.getParameter("jingfeiedu");
   String lixiangshijian=request.getParameter("lixiangshijian");
 
   String yujijietushijian=request.getParameter("yujijietushijian");
   
    String jietijielun=request.getParameter("jietijielun");
     String beizhu=request.getParameter("beizhu");
   DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  java.util.Date ustime = format.parse(lixiangshijian);
      java.util.Date ustime2 = format.parse(yujijietushijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  zongxiangketixiangmu SET  ketilaiyuan=?, renwujuese=?, ketixingzhi=?, jingfeiedu=?,"+
   "lixiangshijian=?, yujijietushijian=?, jietijielun=?, beizhu=? WHERE  ketimingcheng=? ";
  
  

   ps=con.prepareStatement(ins_sql);


 ps.setString(1,ketilaiyuan);
 ps.setString(2,renwujuese);
  

 ps.setString(3,ketixingzhi);
 ps.setString(4,jingfeiedu);
  //ps.setString(6,shouluqingkuang);
 
 ps.setDate(5,stime);

   ps.setDate(6,stime2);
 
   	 ps.setString(7,jietijielun);
 ps.setString(8,beizhu);
    ps.setString(9,ketimingcheng);
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/jsp/纵向课题项目.jsp'/>
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

