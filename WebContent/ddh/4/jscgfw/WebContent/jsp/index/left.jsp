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
  <head>
   
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
   
    <%
    //session.getAttribute("gonghao")
    String state="0";
    state=session.getAttribute("state").toString();
   // state=session.getAttribute(state).toString();
    if(state=="0"){ %>
      
    	 <ul id="manage_nav "    >  
    
      
            
            <li >
          <a id="web2"  onclick="show(ChildMenu12)" data-am-collapse="{parent: '#collapase-nav-1', target: '.web-nav'}" >
            	<h4><i class="font_icon font_yq mr10"></i>教学工作</a></h4>
            	
       <ul  class="manage_nav web-nav"     style="display: none;"  id="ChildMenu12"> 
       
      <li ><a href="jsp/ketangjiaoxue.jsp" target="mainFrame">课堂教学</a></li> 
      <li><a href="jsp/实验实践教学.jsp" target="mainFrame">实验实践教学</a></li> 
      <li ><a href="JSP2.0/带实习.jsp" target="mainFrame">带实习</a></li> 
      <li ><a href="JSP2.0/实训指导.jsp" target="mainFrame">实训指导</a></li>
	  <li ><a href="JSP2.0/毕业设计指导.jsp"target="mainFrame">毕业设计指导</a></li> 
	  <li ><a href="JSP2.0/指导大创.jsp"target="mainFrame">指导大创</a></li> 
	  <li ><a href="JSP2.0/指导竞赛.jsp"target="mainFrame">指导竞赛</a></li>
<!--       <li><a href="JSP2.0/教学效果.jsp"target="mainFrame">教学效果</a></li>  -->
      <li ><a href="JSP2.0/教学获奖.jsp"target="mainFrame">教学获奖</a></li> 
    </ul> 
            
            </li>
            
              <li>
          <a id="bg" data-am-collapse="{parent: '#collapase-nav-1', target: '.bg-nav'}" onclick="show(ChildMenu2)">
        
            	<h4><i class="font_icon font_yq mr10"></i>科学研究</a></h4>
            	<ul  class="bg-nav"  style="display: none;" id="ChildMenu2">
     <li><a href="jsp/纵向课题项目.jsp"  target="mainFrame">纵向课题项目</a></li> 
      <li><a href="jsp/横向课题项目.jsp"  target="mainFrame">横向课题项目</a></li> 
      <li><a href="jsp/发表论文.jsp" target="mainFrame">发表论文</a></li> 
      <li><a href="jsp/申请专利.jsp" target="mainFrame">申请专利</a></li>  
            	</ul>
            	</li>
            
               <li>
          <a id="database"data-am-collapse="{parent: '#collapase-nav-1', target: '.database-nav'}"  onclick="show(ChildMenu1)">
            	<h4><i class="font_icon font_yq mr10" ></i>教改教研教学建设</a></h4>
            	
            	<ul class="database-nav"  style="display: none;" id="ChildMenu1"> 
            	
      <li><a href="JSP2.0/承担教研教改课题审核.jsp" target="mainFrame">承担教研教改课题</a></li> 
      <li><a href="JSP2.0/日常教研活动.jsp" target="mainFrame">日常教研活动</a></li> 
      <li><a href="JSP2.0/专业建设、专业综合改革.jsp" target="mainFrame">专业建设、专业综合改革</a></li> 
      <li><a href="JSP2.0/课程建设.jsp"target="mainFrame">课程建设</a></li>       
	  <li><a href="JSP2.0/教材建设.jsp"target="mainFrame">教材建设</a></li>
	  <li><a href="JSP2.0/实验室建设.jsp"target="mainFrame">实验室建设</a></li>
	  <li><a href="JSP2.0/基地建设.jsp"target="mainFrame">基地建设</a></li>
    </ul> 
            	
            </li>
            
            <li>
          <a id="database1"data-am-collapse="{parent: '#collapase-nav-1', target: '.database-nav'}"  onclick="show(ChildMenu3)">
            	<h4><i class="font_icon font_yq mr10" ></i>公共事务</a></h4> 
            	 
            	<ul class="database-nav"  style="display: none;" id="ChildMenu3"> 
						<li><a href="jsp/招生.jsp" target="mainFrame">招生</a></li> 
      <li><a href="jsp/就业.jsp" target="mainFrame">就业</a></li> 
      <li><a href="jsp/班主任.jsp" target="mainFrame">班主任</a></li> 
      <li><a href="jsp/第二课堂.jsp"target="mainFrame">第二课堂</a></li>       
	  <li><a href="jsp/社会服务.jsp"target="mainFrame">社会服务</a></li>
    </ul> 
            	
            </li>
            
            
<!--            <h4> <li><a href="#" target="mainFrame">公众事务</a></li></h4> -->
            
<!--       <h4> <li><a href="#" target="mainFrame">教学管理</a></li></h4> -->
    	 </ul>
    	 
    	 <% }
    	 
    	 if(state=="1"){
    	 
    	%>
    		 <ul id="manage_nav "    >  
    	<%=session.getAttribute("state")%>
      
            
            <li >
          <a id="web2"  onclick="show(ChildMenu12)" data-am-collapse="{parent: '#collapase-nav-1', target: '.web-nav'}" >
            	<h4><i class="font_icon font_yq mr10"></i>教学工作审核</a></h4>
            	
       <ul  class="manage_nav web-nav"     style="display: none;"  id="ChildMenu12"> 
      <% //<li ><a href="jsp/ketangjiaoxue.jsp" target="mainFrame">教学工作</a></li> %>
      <li ><a href="jsp/ketangjiaoxue审核.jsp" target="mainFrame">教学工作审核</a></li> 
      <li><a href="jsp/实验实践教学审核.jsp" target="mainFrame">实验实践教学审核</a></li> 
      <li ><a href="JSP2.0/带实习审核.jsp" target="mainFrame">带实习</a></li> 
      <li ><a href="JSP2.0/实训指导审核.jsp" target="mainFrame">实训指导</a></li>
	  <li ><a href="JSP2.0/毕业设计指导.jsp"target="mainFrame">毕业设计指导</a></li> 
	  <li ><a href="JSP2.0/指导大创审核.jsp"target="mainFrame">指导大创</a></li> 
	  <li ><a href="JSP2.0/指导竞赛审核.jsp"target="mainFrame">指导竞赛</a></li>
      <li><a href="JSP2.0/教学效果.jsp"target="mainFrame">教学效果</a></li> 
      <li ><a href="JSP2.0/教学获奖审核.jsp"target="mainFrame">教学获奖</a></li> 
    </ul> 
            
            </li>
            
              <li>
          <a id="bg" data-am-collapse="{parent: '#collapase-nav-1', target: '.bg-nav'}" onclick="show(ChildMenu2)">
        
            	<h4><i class="font_icon font_yq mr10"></i>科学研究审核</a></h4>
            	<ul  class="bg-nav"  style="display: none;" id="ChildMenu2">
            	<li><a href="jsp/纵向课题项目审核.jsp"  target="mainFrame">纵向课题项目审核</a></li> 
      <li><a href="jsp/横向课题项目审核.jsp"  target="mainFrame">横向课题项目审核</a></li> 
      <li><a href="jsp/发表论文审核.jsp" target="mainFrame">发表论文审核</a></li> 
      <li><a href="jsp/申请专利审核.jsp" target="mainFrame">申请专利审核</a></li>  
            	</ul>
            	</li>
            
               <li>
          <a id="database"data-am-collapse="{parent: '#collapase-nav-1', target: '.database-nav'}"  onclick="show(ChildMenu1)">
            	<h4><i class="font_icon font_yq mr10" ></i>教改教研教学建设审核</a></h4> 
            	
            	<ul class="database-nav"  style="display: none;" id="ChildMenu1"> 
      <li><a href="JSP2.0/承担教研教改课题审核.jsp" target="mainFrame">承担教研教改课题</a></li> 
      <li><a href="JSP2.0/日常教研活动审核.jsp" target="mainFrame">日常教研活动</a></li> 
      <li><a href="JSP2.0/专业建设、专业综合改革.jsp" target="mainFrame">专业建设、专业综合改革</a></li> 
      <li><a href="JSP2.0/课程建设.jsp"target="mainFrame">课程建设</a></li>       
	  <li><a href="JSP2.0/教材建设审核.jsp"target="mainFrame">教材建设</a></li>
	  <li><a href="JSP2.0/实验室建设.jsp"target="mainFrame">实验室建设</a></li>
	  <li><a href="JSP2.0/基地建设.jsp"target="mainFrame">基地建设</a></li>
    </ul> 
            	
            </li>
           <h4> <li><a href="#" target="mainFrame">公众事务</a></li></h4>
            
      <h4> <li><a href="#" target="mainFrame">教学管理</a></li></h4>
    	 </ul>
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	 <%
    	 
    	 }
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 
    	 %>
    	 
    	 
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
