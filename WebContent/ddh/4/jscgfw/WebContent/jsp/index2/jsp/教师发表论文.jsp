<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
    <html>  
    <head>  
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="2col_leftNav.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../../../common/style/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../../../common/scripts/date/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../../../common/style/style.css"/>
<link rel="stylesheet" type="text/css" href="../../../common/style/management2.css"/>
<link rel="stylesheet" type="text/css" href="../../../font/font.css">

<link rel="stylesheet" type="text/css" href="../../../common/style/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="../../../common/scripts/date/jquery.datetimepicker.css">
<link rel="stylesheet" type="text/css" href="../../../common/style/style.css"/>



<link rel="stylesheet" type="text/css" href="../../../common/style/management2.css"/>
<link rel="stylesheet" type="text/css" href="../../../font/font.css">
<link href="../../css/../amazeui.css" rel="stylesheet">  
 <link href="../../css/../æå é¢æ¿.css" rel="stylesheet">  
<script type="text/javascript" src="../../../js/jquery-1.11.2.min.js"></script>
<script src="../../../js/amazeui.js" language="JavaScript" charset="utf-8"></script>
	<title></title>
	
	
    
	
</head>
<body>
	
	
	<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->

<div class="manage_right cl">
	 <h1 class="sub_title">成果</h1>
     <div class="manage_right_c">
	
     	 <table border="0" cellspacing="0" cellpadding="0" class="table  table-bordered" >

              <tbody class="white_bg">
                  <tr>
                    <td>
                    	 <div class="alert alert-info">温馨提示：欢迎登陆，和使用教师成果管理系统
                    	                     	 备注：（1）论文作者排序权重为第一作者0.6，第二作者0.3，第三作者0.1；
                    	 （2）如为通讯作者，分数减半计算；
                    	 （3）论文必须以东南大学成贤学院的名义发表
                    	 
                    	 </div>

                        <div class="table-responsive mt15">
                        
                        
                        
              <table class="table table-striped table-bordered table-hover table-highlight table-checkable" id="dg">
     	<div class="clears"></div>






                            <thead>
                            
                            
                            
                            
                            
                            <tr>

<th class="text-center">一般（可检索）</th>
<th class="text-center">核心</th>
<th class="text-center">EI（大区）</th>
<th class="text-center">A&HCI\SSCI</th>
<th class="text-center">SCI</th>


                               
                             
                            </tr>
                            </thead>

<!--                             <div> -->

<!--                                 <form action='index.php' method='post'> -->
<!--                                     <tr>教师id: <input type='text' name='user'/></tr> -->
<!--                                     <input type='submit' value='查找'/> -->
<!--                                 </form> -->

<!--                             </div> -->
                            
             <%@include file="../conn_chenguo.jsp" %>          
             <%
             
                        
             
                 try 
{
  

if(rs==null)
{
%>
<td class="text-center" colspan='17'>	
	 <div class="alert alert-info">没有初始信息</div>	</td>
<%

}


 //String s=null;
 while(rs.next()){
            String a1="tecThesy_gernal";
               String a2="tecThesy_core";
                  String a3="tecThesy_EI";
                     String a4="tecThesy_AHCISSCI";
                       String a5="tecThesy_SCI";
      // s=rs.getString("goverAcc_National_1");
        
        
        
              %>
              <tbody>
                                                 
		<tr>
		
		<td class="text-center"><%=rs.getString(a1) %></td>
		<td class="text-center"><%=rs.getString(a2) %></td>
		<td class="text-center"><%=rs.getString(a3) %></td>
		<td class="text-center"><%=rs.getString(a4) %></td>
		<td class="text-center"><%=rs.getString(a5) %></td>
		
		</tr>
		
                           </tbody>   
		
                                                 
    
                            
                            
                            
                            
                       
                            
                            
                            
                            
                           
                  
                            
                            
          <script type='text/javascript'>
 

 



</script>                   
             
  
                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                       
                   
         
		
		
		
                           </tbody>
                           
                               <tbody> <td colspan='12' class="text-center"><input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="修改"/></td></tbody>       
                                 
                                 
               <div>
    
    
 <form name="jbqk"   action="../do_jsp/do_update_教师发表论文.jsp" method="get"   >
   <table class="table table-striped table-bordered table-hover table-highlight table-checkable" id="yingsheng" style="display: none;" >
   
    
     <thead>
                            
                            
                            
                            
                            
                            <tr>

<th class="text-center">一般（可检索）</th>
<th class="text-center">核心</th>
<th class="text-center">EI（大区）</th>
<th class="text-center">A&HCI\SSCI</th>
<th class="text-center">SCI</th>


                               
                             
                            </tr>
                            </thead>
              
              
        
              
              
                  
         
		
                                    
     <tbody>
             
                 
                                                 
		<tr>

		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="a1" value="<%=rs.getString(a1)%>" ></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="a2" value="<%=rs.getString(a2)%>" ></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="a3" value="<%=rs.getString(a3)%>" ></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="a4" value="<%=rs.getString(a4)%>" ></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="a5" value="<%=rs.getString(a5)%>" ></td>
		
		</tr>
		
                           </tbody>   
		
                                                 
     
                            
                            
        <tbody> <td colspan='12' class="text-center">  <input  class="btn btn-primary" type='submit' value='确定'/>||<input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="修改"/></td></tbody>                            

  </table>
  </form>
  </div>                  
                                 
      <%} %>                           
                                 
                                   
<script type='text/javascript'>
    $(function(){
        $("#dg  .del").click(function(){
            var url = $(this).attr('href');
            if(window.confirm('确认删除'))
            {
                location.href = url;
            }
            return false;
        });
    });

    function select_all(){
 $("#dg").toggle();
        $("#yingsheng").toggle();
    }



</script>
                            
                            
                        </table>
                    </div>
                </td>
                
            </tr>
            </tbody>
        </table>
        
         <div class="clears"></div>
    </div>







<!--right end-->
<script src="common/scripts/jquery-1.11.2.min.js"></script>
<script src="common/scripts/bootstrap.min.js"></script>
<!--[if lt IE 9]>
  <script src="common/scripts/respond.min.js"></script>
<![endif]-->
<script src="common/scripts/date/jquery.datetimepicker.js"></script>
<script src="common/scripts/houtai.js"></script>

<!-- <div id="siteInfo">  -->
<!--   <img src="" width="44" height="22" /> <a href="#">About Us</a> | <a href="#">Site -->
<!--   Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a> | &copy;2003 -->
<!--   Company Name -->
<!-- </div>  -->

  <% }

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

<br /> 
	
	<script src="../../../common/scripts/jquery-1.11.2.min.js"></script>
<script src="../../../common/scripts/bootstrap.min.js"></script>
<!--[if lt IE 9]>  
  <script src="../../../common/scripts/respond.min.js"></script> 
<![endif]-->
<script src="../../../common/scripts/date/jquery.datetimepicker.js"></script>
<script src="../../../common/scripts/houtai.js"></script>
	
	
	
	
</html>