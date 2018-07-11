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
	<title>shijian</title>
	
	
    
	
</head>
<body>
	
	
	<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->

<div class="manage_right cl">
	 <h1 class="sub_title">带实习</h1>
     <div class="manage_right_c">
	
     	 <table border="0" cellspacing="0" cellpadding="0" class="table  table-bordered" id="dg">

              <tbody class="white_bg">
                  <tr>
                    <td>
                    	 <div class="alert alert-info">温馨提示：欢迎登陆，和使用教师成果管理系统</div>

                        <div class="table-responsive mt15">
              <table class="table table-striped table-bordered table-hover table-highlight table-checkable" id="dg">
     	<div class="clears"></div>

                            <thead>
                            <tr>

                                <th class="text-center">实习名称</th>
                                <th class="text-center">学分</th>
                                <th class="text-center">时长</th>
                                <th class="text-center">学生人数</th>
                                <th class="text-center">循环次数</th>
                                <th class="text-center">指导内容（多选）</th>
                                <th class="text-center">实习报告</th>
                             
                                <th class="text-center">是否批改</th>
                                <th class="text-center">备注</th>
                               <th class="text-center">审核情况</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>

                            <div>

                                <form action='index.php' method='post'>
                                    <tr>教师id: <input type='text' name='user'/></tr>
                                    <input type='submit' value='查找'/>
                                </form>

                            </div>
                            
             <%@include file="../../inc/conn.jsp" %>          
             <%
             
             
                 try 
{
  
  

   
   String sea_sql = "SELECT *  FROM daishixi  ";
  
   String shiximingcheng =null;//id
   String xuefen =null;
   String shichang=null ;
   String xueshengrenshu=null;
   String xunhuancishu=null;
   String zhidaoneirong=null;
   String shixibaogao =null;
   String shifoupigai=null ;
   String beizhu=null;

  
   ps = con.prepareStatement(sea_sql);
  
   rs = ps.executeQuery();

// 	out.println(Gonghao);
// 	out.println(Inkey);
if(rs==null)
{
%>
<td class="text-center" colspan='17'>	
	 <div class="alert alert-info">没有初始信息</div>	</td>
<%

}


while (rs.next()) 
   {
 
  
  shiximingcheng =rs.getString("shiximingcheng");
 xuefen =rs.getString("xuefen");
  shichang=rs.getString("shichang") ;
xueshengrenshu=rs.getString("xueshengrenshu");
  zhidaoneirong=rs.getString("zhidaoneirong");
 shixibaogao=rs.getString("shixibaogao");
  shifoupigai =rs.getString("shifoupigai");

   beizhu=rs.getString("beizhu") ;

    xunhuancishu=rs.getString("xunhuancishu") ;
             
             
             
             
             
             
             
              %>
             
                                                 
     <tbody>
                                                 
		<tr>
		<td class="text-center"><%=shiximingcheng %></td>
		<td class="text-center"><%=xuefen %></td>
				<td class="text-center"><%=shichang%></td>
				<td class="text-center"><%=xueshengrenshu %></td>
			
				<td class="text-center"><%=  xunhuancishu %></td>
				<td class="text-center"><%=zhidaoneirong %></td>
				
				<td class="text-center"><%= shixibaogao  %></td>
				
				<td class="text-center"><%=shifoupigai %></td>
				
				<td class="text-center"><%= beizhu%></td>
							<td class="text-center"></td><!-- 审核情况 -->
				<td class="text-center"><a href="">更新</a>||<a href="" class="del" >删除</a></td>
		
		</tr>
                  
		

		
                           </tbody>      
                            
                           
           <% } %>       
                            
                            
          <script type='text/javascript'>
 

    function select_all(){


      $("#xianshi2").toggle();
      
        $("#yingsheng2").toggle();
    }



</script>                   
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
  
                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                       
                   
                          
                           
     <tbody id="yingsheng" style="display:none">
                                                 
		<tr>
		<td class="text-center"></td>
		<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				
				<td class="text-center">
	           <input type="checkbox" name="content" value="A1">参观引导
				<input type="checkbox" name="content" value="A2">穿插讲解
				<input type="checkbox" name="content" value="A3">现场答疑</td>
						
								
				<td class="text-center">
				<input type="radio" name="presentation" value="yes">有
				<input type="radio" name="presentation" value="no" >无</td>	
				<td class="text-center"><input type="radio" name="correcting" value="yes">是
				<input type="radio" name="correcting" value="no" >否</td>
				<td class="text-center"></td>
							<td class="text-center"></td><!-- 审核情况 -->
				<td class="text-center"><a href="">更新</a>||<a href="" class="del" >删除</a></td>
		
		</tr>
                  
		
		
		
                           </tbody>
                           
                               <tbody> <td colspan='11' class="text-center"><input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="+"/></td></tbody>       
                                   
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



        var trs= $("td[class='text-center douxuan']");
      for(var i=0;i<=trs.length;i++){

        
      }
       //$(".pdiv").children().hide();
        $("#yingsheng").toggle();
    }



</script>
                            
                            
                        </table>
                    </div>
                </td>
                
            </tr>
            </tbody>
        </table>
         
            <input   class="btn btn-primary" type='button' name='user' onclick="select_all()2" value="添加新列表"/>
        <!--翻页-->
        <div class="row" style="padding:0px; margin:0px;">
            <div class="pull-left">
                <div class="pagination">
             
                

                </div>
            </div>
            <div class="pull-right">
                <div class="pagination">共 个，每页 个</div>
            </div>
        </div>
        <!--翻页 end-->
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

<div id="siteInfo"> 
  <img src="" width="44" height="22" /> <a href="#">About Us</a> | <a href="#">Site
  Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a> | &copy;2003
  Company Name
</div> 
<br /> 
	
	<script src="../../../common/scripts/jquery-1.11.2.min.js"></script>
<script src="../../../common/scripts/bootstrap.min.js"></script>
<!--[if lt IE 9]>  
  <script src="../../../common/scripts/respond.min.js"></script> 
<![endif]-->
<script src="../../../common/scripts/date/jquery.datetimepicker.js"></script>
<script src="../../../common/scripts/houtai.js"></script>
	
	
	
	
</html>