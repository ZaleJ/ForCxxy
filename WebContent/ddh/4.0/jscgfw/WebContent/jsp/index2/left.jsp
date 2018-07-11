
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
    String state="1";
    //state=session.getAttribute("state").toString();
   // state=session.getAttribute(state).toString();
    if(state=="0"){ %>
      
    	 <ul id="manage_nav "    >  
    
      
            
            <li >
          <a id="web2"  onclick="show(ChildMenu12)" data-am-collapse="{parent: '#collapase-nav-1', target: '.web-nav'}" >
            	<h4><i class="font_icon font_yq mr10"></i>教学工作</a></h4>
            	
       <ul  class="manage_nav web-nav"     style="display: none;"  id="ChildMenu12"> 
       
      <li ><a href="jsp/ketangjiaoxue.jsp" target="mainFrame">教学工作</a></li> 
      <li><a href="jsp/实验实践教学.jsp" target="mainFrame">实验实践教学</a></li> 
      <li ><a href="JSP2.0/带实习.jsp" target="mainFrame">带实习</a></li> 
      <li ><a href="JSP2.0/实训指导.jsp" target="mainFrame">实训指导</a></li>
	  <li ><a href="JSP2.0/毕业设计指导.jsp"target="mainFrame">毕业设计指导</a></li> 
	  <li ><a href="JSP2.0/指导大创.jsp"target="mainFrame">指导大创</a></li> 
	  <li ><a href="JSP2.0/指导竞赛.jsp"target="mainFrame">指导竞赛</a></li>
      <li><a href="JSP2.0/教学效果.jsp"target="mainFrame">教学效果</a></li> 
      <li ><a href="JSP2.0/教学获奖.jsp"target="mainFrame">教学获奖</a></li> 
    </ul> 
            
            </li>
              <li>
          <a id="bg" data-am-collapse="{parent: '#collapase-nav-1', target: '.bg-nav'}" onclick="show(ChildMenu2)">
        
            	<h4><i class="font_icon font_yq mr10"></i></a></h4>
            	<ul  class="bg-nav"  style="display: none;" id="ChildMenu2">
            	
            	</ul>
            	</li>
    
  <h4>  <li><a href="#" target="mainFrame">公众事务</a></li></h4>
            
      <h4> <li><a href="#" target="mainFrame">教学管理</a></li></h4>
    	 </ul>
    	 
    	 <% }
    	 
    	 
    	 
    	 
    	 if(state=="1"){
    	 
    	%>
    		 <ul id="manage_nav "    >  
    	
      
            
            <li >
          <a id="web2"  onclick="show(ChildMenu12)" data-am-collapse="{parent: '#collapase-nav-1', target: '.web-nav'}" >
            	<h4><i class="font_icon font_yq mr10"></i>成果奖</a></h4>
            	
       <ul  class="manage_nav web-nav"     style="display: none;"  id="ChildMenu12"> 
      <% //<li ><a href="jsp/ketangjiaoxue.jsp" target="mainFrame">教学工作</a></li> %>
      <li ><a href="jsp/政府成果奖.jsp" target="mainFrame2">政府部门设立的教学（科研）成果奖</a></li> 
      <li><a href="jsp/非政府成果奖.jsp" target="mainFrame2">非政府部门组织的教学（科研）成果奖</a></li> 
      <li ><a href="jsp/科研教改课程建设.jsp" target="mainFrame2">科研、教改、课程建设等项目</a></li> 
      <li ><a href="jsp/教师发表论文.jsp" target="mainFrame2">教师发表论文</a></li>
	  <li ><a href="jsp/专利和发明.jsp"target="mainFrame2">专利和发明</a></li> 
	  <li ><a href="jsp/经费到账.jsp"target="mainFrame2">经费到账</a></li> 
	  <li ><a href="jsp/著作教材.jsp"target="mainFrame2">著作教材</a></li>
      <li><a href="jsp/指导学生比赛.jsp"target="mainFrame2">指导学生比赛</a></li> 
      <li ><a href="jsp/教师参加各类竞赛.jsp"target="mainFrame2">教师参加各类竞赛</a></li> 
      <li ><a href="jsp/教学事故扣分.jsp"target="mainFrame2">教学事故扣分</a></li> 
    </ul> 
            
            </li>
            

            
               <li>
          <a id="database"data-am-collapse="{parent: '#collapase-nav-1', target: '.database-nav'}"  onclick="show(ChildMenu1)">
            	<h4><i class="font_icon font_yq mr10" ></i></a></h4> 
            	
            	<ul class="database-nav"  style="display: none;" id="ChildMenu1"> 

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
