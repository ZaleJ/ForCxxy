<%@include file="../inc/checkLogin.jsp" %>
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
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html>
  <head><style type="text/css">
table.imagetable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #999999;
    border-collapse: collapse;
}
table.imagetable th {
    background:#b5cfd2 url('cell-blue.jpg');
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
table.imagetable td {
    background:#dcddc0 url('cell-grey.jpg');
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
</style>
   
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" type="text/css" href="../../common/style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../common/scripts/date/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../../common/style/style.css"/>
<link rel="stylesheet" type="text/css" href="../../common/style/management.css"/>
<link rel="stylesheet" type="text/css" href="../../font/font.css">

<link rel="stylesheet" type="text/css" href="../../common/style/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="../../common/scripts/date/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../../common/style/style.css"/>



<link rel="stylesheet" type="text/css" href="../../common/style/management.css"/>
<link rel="stylesheet" type="text/css" href="../../font/font.css">
<link href="../../css/amazeui.css" rel="stylesheet">  
 <link href="../../css/折叠面板.css" rel="stylesheet">  
<script type="text/javascript" src="../../js/jquery-1.11.2.min.js"></script>
<script src="../../js/amazeui.js" language="JavaScript" charset="utf-8"></script>
   

</head> 

<body>
 <!--left-->
 

<script language="JavaScript">
function show(ChildMenu1){
ChildMenu12.style.display == "none"
ChildMenu2.style.display == "none"
if (ChildMenu1.style.display == "none") {
ChildMenu1.style.display = "";

}else{
ChildMenu1.style.display = "none";

}

}
</script>
<script language="JavaScript">
function show(ChildMenu2){
ChildMenu1.style.display == "none"
ChildMenu12.style.display == "none"
if (ChildMenu2.style.display == "none") {
ChildMenu2.style.display = "";

}else{
ChildMenu2.style.display = "none";

}

}
</script>
<div class="manage_left">

   
   
    <div class="manage_header">
    	 <div class="t_center">
        

          
         </div>
    </div>
    <!--左边导航-->
    <div class="manage_nav " >
      
    	 <ul id="manage_nav "    >  
    	
      
            
            <li >
          <a id="web2"  onclick="show(ChildMenu12)" data-am-collapse="{parent: '#collapase-nav-1', target: '.web-nav'}" >
            	<h4><i class="font_icon font_yq mr10"></i>教学工作</a></h4>
            	
       <ul  class="manage_nav web-nav"     style="display: none;"  id="ChildMenu12"> 
       
      <li ><a href="jsp/ketangjiaoxue.jsp" target="mainFrame">课堂教学</a></li> 
      <li><a href="jsp/实验实践教学.jsp" target="mainFrame">实验实践教学</a></li> 
      <li ><a href="jsp/带实习.jsp" target="mainFrame">带实习</a></li>
      <li ><a href="jsp/毕业设计指导.jsp" target="mainFrame">毕业设计指导</a></li>  
      <li ><a href="jsp/实训指导.jsp" target="mainFrame">实训指导</a></li>
<!-- 	  <li ><a href="jsp/毕业设计指导.jsp"target="mainFrame">毕业设计指导</a></li>  -->
	  <li ><a href="jsp/指导大创.jsp"target="mainFrame">指导大创</a></li> 
	  <li ><a href="jsp/指导竞赛.jsp"target="mainFrame">指导竞赛</a></li>
<!--       <li><a href="jsp/教学效果.jsp"target="mainFrame">教学效果</a></li>  -->
      <li ><a href="jsp/教学获奖.jsp"target="mainFrame">教学获奖</a></li> 
    </ul> 
            
            </li>
            
              <li>
          <a id="bg" data-am-collapse="{parent: '#collapase-nav-1', target: '.bg-nav'}" onclick="show(ChildMenu2)">
        
            	<h4><i class="font_icon font_yq mr10"></i>科学研究</a></h4>
            	<ul  class="bg-nav"  style="display: none;" id="ChildMenu2">
            	<li><a href="jsp/纵向课题项目.jsp"  target="mainFrame">纵向课题研究</a></li> 
      <li><a href="jsp/横向课题项目.jsp"  target="mainFrame">横向课题项目</a></li> 
      <li><a href="jsp/发表论文.jsp" target="mainFrame">发表论文</a></li> 
      <li><a href="jsp/申请专利.jsp" target="mainFrame">申请专利</a></li>  
            	</ul>
            	</li>
            
               <li>
          <a id="database"data-am-collapse="{parent: '#collapase-nav-1', target: '.database-nav'}"  onclick="show(ChildMenu1)">
            	<h4><i class="font_icon font_yq mr10" ></i>教改教研教学建设</a></h4> 
            		
            	<ul class="database-nav"  style="display: none;" id="ChildMenu1"> 
      <li><a href="jsp/承担教研教改课题.jsp" target="mainFrame">承担教研教改课题</a></li> 
      <li><a href="jsp/日常教研活动.jsp" target="mainFrame">日常教研活动</a></li> 
      <li><a href="jsp/专业建设、专业综合改革.jsp" target="mainFrame">专业建设、专业综合改革</a></li> 
      <li><a href="jsp/课程建设.jsp"target="mainFrame">课程建设</a></li>       
	  <li><a href="jsp/教材建设.jsp"target="mainFrame">教材建设</a></li>
	  <li><a href="jsp/实验室建设.jsp"target="mainFrame">实验室建设</a></li>
	  <li><a href="jsp/基地建设.jsp"target="mainFrame">基地建设</a></li>
    </ul> 
            	
            </li>
            
            
            
            
            
     <li >
          <a id="web2"  onclick="show(ChildMenu13)" data-am-collapse="{parent: '#collapase-nav-1', target: '12123'}" >
            	<h4><i class="font_icon font_yq mr10"></i>公共事务</a></h4>
            	
       <ul  class="12123"     style="display: none;"  id="ChildMenu13"> 
       
      <li ><a href="jsp/招生.jsp" target="mainFrame">招生</a></li> 
      <li><a href="jsp/就业.jsp" target="mainFrame">就业</a></li> 
      <li ><a href="jsp/班主任.jsp" target="mainFrame">班主任</a></li> 
      <li ><a href="jsp/第二课堂.jsp" target="mainFrame">第二课堂</a></li>
<!-- 	  <li ><a href="jsp/毕业设计指导.jsp"target="mainFrame">毕业设计指导</a></li>  -->
	  <li ><a href="jsp/社会服务.jsp"target="mainFrame">社会服务</a></li> 
    </ul> 
            
            </li>
      
      
    	 </ul>
    	 
    	 
    	 
    	 
    </div>
    <!--左边导航 end-->
    

           
</div>
<!--left end-->


    <script src="../../js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="../../js/bootstrap.min.js"></script>
    <!-- Placeholder -->
    <script src="../../js/jquery.placeholder.min.js"></script>
    <!-- Waypoints -->
    <script src="../../js/jquery.waypoints.min.js"></script>
    <!-- Main JS -->
    <script src="../../js/main.js"></script>


  </body>
</html>
