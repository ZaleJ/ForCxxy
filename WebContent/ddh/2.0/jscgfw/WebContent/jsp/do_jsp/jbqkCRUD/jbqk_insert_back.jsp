<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../../inc/conn.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变--><!DOCTYPE 

span PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

   
   

try 
{
  
 
    
   String xingming=request.getParameter("xingming");
   String xingbie=request.getParameter("xingbie");
   String chushengnianyue=request.getParameter("csny_y")+"-"+request.getParameter("csny_m")+"-"+request.getParameter("csny_d");
    DateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
 String jinxiaoshijian=request.getParameter("jxsj_y")+"-"+request.getParameter("jxsj_m")+"-"+request.getParameter("jxsj_d");
   java.util.Date ustime = format.parse(chushengnianyue);
      java.util.Date ustime2 = format.parse(jinxiaoshijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());

   
   
   
   
   
   String xueli=request.getParameter("xueli");
   String xuewei=request.getParameter("xuewei");
   String zhicheng=request.getParameter("zhicheng");
   String zhiwu=request.getParameter("zhiwu");
   String zhengzhimianmao=request.getParameter("zhengzhimianmao");
   String qiandinghetong=request.getParameter("qiandinghetong");
   String gonghao=request.getParameter("gonghao");
   String suozaixibu=request.getParameter("suozaixibu");
  
   String gaoxiaogongling=request.getParameter("gaoxiaogongling");
   String benkebiyexuexiao=request.getParameter("benkebiyexuexiao");
   String huodezuigaoxuelideyuanxiaohuojigou=request.getParameter("huodezuigaoxuelideyuanxiaohuojigou");
   String huodezuigaoxueweideyuanxiaohuojigou=request.getParameter("huodezuigaoxueweideyuanxiaohuojigou");
   String gongchengshijianjingli=request.getParameter("gongchengshijianjingli");
   String beizhu=request.getParameter("beizhu");
   
   String ins_sql = "UPDATE  jbqk SET xingming=?, xingbie=?, chushengnianyue=?, xueli=?, xuewei=?, zhicheng=?, zhiwu=?, zhengzhimianmao=?, qiandinghetongqingkuang=?, suozaixibu=?, jinxiaoshijian=?, gaoxiaogongling=?, benkebiyexuexiao=?, huodezuigaoxuelideyuanxiaohuojigou=?, huodezuigaoxueweideyuanxiaohuojigou=?, gongchengshijianjingli=?, beizhu=? WHERE gonghao=?";
  
  

   ps=con.prepareStatement(ins_sql);

   ps.setString(1, xingming);
   ps.setString(2, xingbie);
   ps.setDate(3, stime);
   ps.setString(4, xueli);
   ps.setString(5, xuewei);
   ps.setString(6, zhicheng);
   ps.setString(7, zhiwu);
   ps.setString(8, zhengzhimianmao);
   ps.setString(9, qiandinghetong);
  //  String ins_sql = "UPDATE  jbqk SET xingming=?, xingbie=?, chushengnianyue=?, xueli=?, xuewei=?, zhicheng=?, zhiwu=?, zhengzhimianmao=?, 
  //qiandinghetongqingkuang=?, suozaixibu=?, jinxiaoshijian=?, gaoxiaogongling=?, 
  //benkebiyexuexiao=?, huodezuigaoxuelideyuanxiaohuojigou=?, huodezuigaoxueweideyuanxiaohuojigou=?
  //, gongchengshijianjingli=?, beizhu=? WHERE gonghao=?";
  
   ps.setString(10, suozaixibu);
   ps.setDate(11, stime2);
   ps.setString(12, gaoxiaogongling);
   ps.setString(13, benkebiyexuexiao);
   ps.setString(14, huodezuigaoxuelideyuanxiaohuojigou);
   ps.setString(15, huodezuigaoxueweideyuanxiaohuojigou);
   ps.setString(16, gongchengshijianjingli);
   ps.setString(17, beizhu);
 ps.setString(18, gonghao);
   	
   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   	} PreparedStatement ps2 = null;
  
   if(ps.executeUpdate()==0){

   ins_sql = "INSERT INTO jbqk VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
   ps2 = con.prepareStatement(ins_sql);
   ps2.setString(1, xingming);
   ps2.setString(2, xingbie);
   ps2.setDate(3, stime);
   ps2.setString(4, xueli);
   ps2.setString(5, xuewei);
   ps2.setString(6, zhicheng);
   ps2.setString(7, zhiwu);
   ps2.setString(8, zhengzhimianmao);
   ps2.setString(9, qiandinghetong);
    ps2.setString(10,gonghao );
   ps2.setString(11, suozaixibu);
   ps2.setDate(12, stime2);
   ps2.setString(13, gaoxiaogongling);
   ps2.setString(14, benkebiyexuexiao);
   ps2.setString(15, huodezuigaoxuelideyuanxiaohuojigou);
   ps2.setString(16, huodezuigaoxueweideyuanxiaohuojigou);
   ps2.setString(17, gongchengshijianjingli);
   ps2.setString(18, beizhu);
  

   	ps2.executeUpdate();
  
   	
   	}
   	
if	(ps2.executeUpdate()!=0)   {	
   	
   	%><span style='color:green'>增加成功</span><% }
  	
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

