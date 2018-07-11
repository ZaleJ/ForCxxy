<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<HTML>
<head></head>
<BODY> 教师基本情况数据库
<table width="80%" align='center'>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%
   //以下三个是定义数据库连接的，照着写OK

Connection con = null;
Statement sm = null;
ResultSet rs = null;

try 
{
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
  
   con = DriverManager.getConnection(url);
  
   sm = con.createStatement();
   rs = sm.executeQuery("select * from jbqk");
  
   out.println("<tr><td>姓名</td><td>性别</td><td>出生年月</td><td>学历</td><td>学位</td><td>职称</td><td>职务</td><td>政治面貌</td><td>签订合同</td><td>工号</td><td>所在系部</td><td>进校时间</td><td>高校工龄</td><td>本科毕业学校</td><td>获得最高学历的院校或机构</td><td>获得最高学位的院校或机构</td><td>工程实践经历</td></tr>");
    
while (rs.next()) 
   {
   String xingming = rs.getString("xingming");
   String xingbie = rs.getString("xingbie");
   String chushengnianyue = rs.getString("chushengnianyue");
   String xueli = rs.getString("xueli");
   String xuewei = rs.getString("xuewei");
   String zhicheng = rs.getString("zhicheng");
   String zhiwu = rs.getString("zhiwu");
   String zhengzhimianmao = rs.getString("zhengzhimianmao");
   String qiandinghetongqingkuang = rs.getString("qiandinghetongqingkuang");
   String gonghao = rs.getString("gonghao");
   String suozaixibu = rs.getString("suozaixibu");
   String jinxiaoshijian = rs.getString("jinxiaoshijian");
   String gaoxiaogongling = rs.getString("gaoxiaogongling");
   String benkebiyexuexiao = rs.getString("benkebiyexuexiao");
   String huodezuigaoxuelideyuanxiaohuojigou = rs.getString("huodezuigaoxuelideyuanxiaohuojigou");
   String huodezuigaoxueweideyuanxiaohuojigou = rs.getString("huodezuigaoxueweideyuanxiaohuojigou");
   String gongchengshijianjingli = rs.getString("gongchengshijianjingli");
   
   out.println("<tr><td>"+xingming+"</td><td>"+xingbie+"</td><td>"+chushengnianyue+"</td><td>"+xueli+"</td><td>"+xuewei+"</td><td>"+zhicheng+"</td><td>"+zhiwu+"</td><td>"+zhengzhimianmao+"</td><td>"+qiandinghetongqingkuang+"</td><td>"+gonghao+"</td><td>"+suozaixibu+"</td><td>"+jinxiaoshijian+"</td><td>"+gaoxiaogongling+"</td><td>"+benkebiyexuexiao+"</td><td>"+huodezuigaoxuelideyuanxiaohuojigou+"</td><td>"+huodezuigaoxueweideyuanxiaohuojigou+"</td><td>"+gongchengshijianjingli+"</td></tr>");
   }

} 

//以下代码捕捉异常
catch (Exception e) 
{
   System.out.println(e.getMessage());
} 
    
//以下代码是用来关掉数据库的是必须要写的，照写OK
finally 
{
   if (rs != null) 
   {
    try {rs.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
  
   if (sm != null) 
   {
    try {sm.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
   if (con != null) 
   {
    try {con.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
}
%>

</table>

<button onclick="location.href='jbqk_insert.html'"></button>
</BODY>
</HTML>