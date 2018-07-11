<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
 
<%@include file="../inc/checkLogin.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="2col_leftNav.css" type="text/css" />
<style type="text/css">
<!--
.style2 {font-size: 9%}
.style6 {font-size: medium}
-->
</style>




 <style type="text/css">
        body{
            padding:0px;
            margin:0px;
        }/*用程序样式表去除body四周的间距*/
        
#txt span{

position:absolute;

bottom:0px;

padding:0px;

margin:0px

}        
#txt p{

position:absolute;

bottom:20px;

padding:0px;

margin:0px

}       
#txt #txt2 span{
position:absolute;

bottom:0px;
left:40px;  
padding:0px;

margin:0px

}
   
    </style>
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
<body> 




<div> 
<div style="width:100%; height:154px; background:url(222.png);" id="txt">
<br>
<h3 id="siteName" ><font color="#FFFFFF"></font></h3><p><font color="#FFFFFF">欢迎工号</font>：<%=session.getAttribute("gonghao")%><font color="#FFFFFF">的老师</font></p>

  <a href="../login/login.jsp"  target="_top"><span  class="c_fff"><font color="#FFFFFF">退出</font></span></a>
  <div id="txt2" > <a href="jsp/jibenxingxi.jsp" target="mainFrame"  id="1212"><span  class="c_fff"><font color="#FFFFFF">基本情况</font></span></a>
</div>
 </div>   
         	
            
     
<script language=javascript>
 function CloseWin()       
 {       
  window.opener=null;       
  window.open('','_self');       
  window.close();       
 }    
 </script>
</div> 

<!-- end masthead --> 




<div id="content"> 
  <div id="breadCrumb">   
  </div> 
  <h2 id="pageName">基本信息</h2> 
  <div class="feature">
    <h3>个人信息 </h3>
    <p>
    <%
Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;


try 
{
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
  

   String Gonghao=(String)session.getAttribute("gonghao");
   String Inkey=(String)session.getAttribute("inkey");
   
   String sea_sql = "SELECT *  FROM jbqk WHERE gonghao=? ";
  
   
   con = DriverManager.getConnection(url);
  
   ps = con.prepareStatement(sea_sql);
   ps.setString(1, Gonghao);
   rs = ps.executeQuery();
   	out.println("<table border='1' width='100%'><tr><td>姓名</td><td>性别</td><td>出生年月</td><td>学历</td><td>学位</td><td>职称</td><td>职务</td><td>政治面貌</td><td>签订合同</td><td>工号</td><td>所在系部</td><td>进校时间</td><td>高校工龄</td><td>本科毕业学校</td><td>获得最高学历的院校或机构</td><td>获得最高学位的院校或机构</td><td>工程实践经历</td></tr>");
// 	out.println(Gonghao);
// 	out.println(Inkey);
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
   
   out.println("<tr><td>"+xingming+"</td><td>"+xingbie+"</td><td>"+chushengnianyue+"</td><td>"+xueli+"</td><td>"+xuewei+"</td><td>"+zhicheng+"</td><td>"+zhiwu+"</td><td>"+zhengzhimianmao+"</td><td>"+qiandinghetongqingkuang+"</td><td>"+gonghao+"</td><td>"+suozaixibu+"</td><td>"+jinxiaoshijian+"</td><td>"+gaoxiaogongling+"</td><td>"+benkebiyexuexiao+"</td><td>"+huodezuigaoxuelideyuanxiaohuojigou+"</td><td>"+huodezuigaoxueweideyuanxiaohuojigou+"</td><td>"+gongchengshijianjingli+"</td></tr></table>");
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
    
    
    <form name="jbqk"   action="jbqk_insert_back.jsp" method="get">
    <table width="893" height="452" border="0" align="center">
  <tr>
    <td>
		姓名：
      		<input type='text' name="xingming" size="4" />  
	</td>
  </tr>
  <tr>
    <td>
		性别：
			<select name="xingbie">
				<option value="男" selected>男
				<option value="女">女
			</select>
	 </td>
    </tr>
    <tr>
    <td>
		出生年月：
			<input type='text' name="csny_y" size="4" />年
			<input type='text' name="csny_m" size="2" />月
	</td>
  </tr>
  <tr>
    <td>
		学历：
			<select name="xueli">
				<option value="本科" selected>本科
				<option value="研究生">研究生
				<option value="硕士">硕士
				<option value="博士">博士
			</select>
	</td>
  </tr>
  <tr>
    <td>
		学位：
			<select name="xuewei">
				<option value="学士" selected>学士
				<option value="硕士">硕士
				<option value="博士">博士
			</select>
	</td>
  </tr>
  <tr>
    <td>
		职称：
			<input type='text' name="zhicheng" size="20" />
	</td>
  </tr>
  <tr>
    <td>
		职务：
			<input type='text' name="zhiwu" size="20" />
	</td>
  </tr>
  <tr>
    <td>
		政治面貌：
			<select name="zhengzhimianmao">
				<option value="党员" selected>党员
				<option value="团员">团员
				<option value="群众">群众
			</select>
	</td>
  </tr>
  <tr>
    <td>
		签订合同情况：
			<input type="radio" name="situation" value="是">是
			<input type="radio" name="situation" value="否" >否
	</td>
  </tr>
  <tr>
    <td>
		工号：
			<input type='text' name="gonghao" size="10" />
	</td>
  </tr>
  <tr>
    <td>
		所在系部：
			<input type='text' name="suozaixibu" size="15" /> 
	</td>
  </tr>
  <tr>
    <td>
		进校时间：
			<input type='text' name="jxsj_y" size="4" />年
			<input type='text' name="jxsj_m" size="2" />月
	</td>
  </tr>
  <tr>
    <td>
		高校工龄：
			<input type='text' name="gaoxiaogongling" size="2" />年
	</td>
  </tr>
  <tr>
    <td>
		本科毕业学校：
			<input type='text' name="benkebiyexuexiao" size="15" />
	</td>
  </tr>
  <tr>
    <td>
		获得最高学历的院校或机构：
			<input type='text' name="huodezuigaoxuelideyuanxiaohuojigou" size="15" />
	</td>
  </tr>
  <tr>
    <td>
		获得最高学位的院校或机构：
			<input type='text' name="huodezuigaoxueweideyuanxiaohuojigou" size="15" />
	</td>
  </tr>
  <tr>
    <td>
		工程实践经历：
				<input type="radio" name="experience" value="来自企业" >来自企业&nbsp;
				<input type="radio" name="experience" value="有行业企业经历5年以上" >有行业企业经历5年以上&nbsp;
				<input type="radio" name="experience" value="有行业企业经历3年以上" >有行业企业经历3年以上&nbsp;
				<input type="radio" name="experience" value="有行业企业经历1年以上" >有行业企业经历1年以上&nbsp;
				<input type="radio" name="experience" value="有短期行业企业工程能力培养经历" >有短期行业企业工程能力培养经历&nbsp;
				<input type="radio" name="experience" value="answerF" >指导学生实践<input type='text' name="number" size="1" />轮以上&nbsp;
				<input type="radio" name="experience" value="answerG" >其他：<input type='text' name="experience" size="20" />
	</td>
  </tr>
</table>
    </form>
  


<br><br>
<input type="button" value="修改" name="button3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p> 
  </div> 
</div> 
<!--end content --> 
<div id="navBar"> 
  <div id="search"> 
    <form action="#"> 
      <label>搜索</label> 
      <input type="text" size ="10" /> 
      <input type="submit" value="go" /> 
    </form> 
  </div> 
  <div id="sectionLinks">
    <h3>基本情况</h3> 
    <ul> 
      <li><a href="G:\学习\网页设计\个人信息.htm">个人信息</a></li>    
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>教学工作</h3> 
    <ul> 
      <li><a href="ketangjiaoxue.jsp">课堂教学</a></li> 
      <li><a href="G:\学习\网页设计\实验实践教学.htm">实验实践教学</a></li> 
      <li><a href="G:\学习\网页设计\带实习.htm">带实习</a></li> 
      <li><a href="G:\学习\网页设计\实训指导.htm">实训指导</a></li>
	  <li><a href="G:\学习\网页设计\毕业设计指导.htm">毕业设计指导</a></li> 
	  <li><a href="G:\学习\网页设计\指导大创.htm">指导大创</a></li> 
	  <li><a href="G:\学习\网页设计\指导竞赛.htm">指导竞赛</a></li>
      <li><a href="G:\学习\网页设计\教学效果.htm">教学效果</a></li> 
      <li><a href="G:\学习\网页设计\教学获奖.htm">教学获奖</a></li> 
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>科学研究</h3> 
    <ul> 
      <li><a href="G:\学习\网页设计\纵向课题项目.htm">纵向课题项目</a></li> 
      <li><a href="G:\学习\网页设计\横向课题项目.htm">横向课题项目</a></li> 
      <li><a href="G:\学习\网页设计\发表论文.htm">发表论文</a></li> 
      <li><a href="G:\学习\网页设计\申请专利.htm">申请专利</a></li>       
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3>教改教研教学建设</h3> 
    <ul> 
      <li><a href="#">承担教研教改课题</a></li> 
      <li><a href="#">日常教研活动</a></li> 
      <li><a href="#">专业建设、专业综合改革</a></li> 
      <li><a href="#">课程建设</a></li>       
	  <li><a href="#">教材建设</a></li>
	  <li><a href="#">实验室建设</a></li>
	  <li><a href="#">基地建设</a></li>
    </ul> 
  </div> 
  <div class="relatedLinks"> 
    <h3><a href="#">公众事务</a></h3> 
  </div> 
  <div class="relatedLinks"> 
    <h3><a href="#">教学管理</a></h3> 
  </div> 
</div> 
<!--end navbar --> 
<div id="siteInfo"> 
  <img src="" width="44" height="22" /> <a href="#">About Us</a> | <a href="#">Site
  Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a> | &copy;2003
   Company Name
</div> 
 <br /> 
 </body>
 </html>
