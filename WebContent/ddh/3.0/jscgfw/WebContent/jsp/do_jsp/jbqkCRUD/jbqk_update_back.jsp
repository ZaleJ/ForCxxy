<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<%@include file="../../inc/conn.jsp"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%



try 
{
  
  
 
  
   String xingming=request.getParameter("xingming");
   String xingbie=request.getParameter("xingbie");
   String chushengnianyue=request.getParameter("chushengnianyue");
   String xueli=request.getParameter("xueli");
   String xuewei=request.getParameter("xuewei");
   String zhicheng=request.getParameter("zhicheng");
   String zhiwu=request.getParameter("zhiwu");
   String zhengzhimianmao=request.getParameter("zhengzhimianmao");
   String qiandinghetong=request.getParameter("qiandinghetong");
   String gonghao=request.getParameter("gonghao");
   String suozaixibu=request.getParameter("suozaixibu");
   String jinxiaoshijian=request.getParameter("jinxiaoshijian");
   String gaoxiaogongling=request.getParameter("gaoxiaogongling");
   String benkebiyexuexiao=request.getParameter("benkebiyexuexiao");
   String huodezuigaoxuelideyuanxiaohuojigou=request.getParameter("huodezuigaoxuelideyuanxiaohuojigou");
   String huodezuigaoxueweideyuanxiaohuojigou=request.getParameter("huodezuigaoxueweideyuanxiaohuojigou");
   String gongchengshijianjingli=request.getParameter("gongchengshijianjingli");
   String beizhu=request.getParameter("beizhu");
   
   String ins_sql = "UPDATE  jbqk SET xingming=?, xingbie=?, chushengnianyue=?, xueli=?, xuewei=?, zhicheng=?, zhiwu=?, zhengzhimianmao=?, qiandinghetongqingkuang=?, suozaixibu=?, jinxiaoshijian=?, gaoxiaogongling=?, benkebiyexuexiao=?, huodezuigaoxuelideyuanxiaohuojigou=?, huodezuigaoxueweideyuanxiaohuojigou=?, gongchengshijianjingli=?, beizhu=? WHERE gonghao=?";
  
   

   ps = con.prepareStatement(ins_sql);
   ps.setString(1, xingming);
   ps.setString(2, xingbie);
   ps.setString(3, chushengnianyue);
   ps.setString(4, xueli);
   ps.setString(5, xuewei);
   ps.setString(6, zhicheng);
   ps.setString(7, zhiwu);
   ps.setString(8, zhengzhimianmao);
   ps.setString(9, qiandinghetong);
   ps.setString(10, suozaixibu);
   ps.setString(11, jinxiaoshijian);
   ps.setString(12, gaoxiaogongling);
   ps.setString(13, benkebiyexuexiao);
   ps.setString(14, huodezuigaoxuelideyuanxiaohuojigou);
   ps.setString(15, huodezuigaoxueweideyuanxiaohuojigou);
   ps.setString(16, gongchengshijianjingli);
   ps.setString(17, beizhu);
   ps.setString(18, gonghao);

   	ps.executeUpdate();

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

