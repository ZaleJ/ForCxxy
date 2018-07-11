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
	 <h1 class="sub_title">实验实践教学</h1>
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

                                <th class="text-center">实验课程名称</th>
                                <th class="text-center">总时数</th>
                                <th class="text-center">周学时</th>
                                <th class="text-center">学生人数</th>
                                <th class="text-center">平时班个数</th>
                                <th class="text-center">每班分组次数</th>
                                <th class="text-center">指导教师人数</th>
                                <th class="text-center">实验类型(多选)</th>
                                <th class="text-center">交试验报告次数</th>
                                <th class="text-center">批改次数</th>
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
  
  

   
   String sea_sql = "SELECT *  FROM shiyankecheng  ";
  
   String shiyankechengmingcheng =null;
   String zongshishu =null;
   String zhoushishu=null ;
   String xueshengrenshu=null;
   String pingxingbangeshu=null;
   String meibanfenzucishu=null;
   String zhidaojiaoshirenshu =null;

   String shiyanleixing=null ;
   String shiyanbaogaocishu=null;
   String pigaicishu=null ;
   String beizhu =null;
 
  
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

  
  shiyankechengmingcheng =rs.getString("shiyankechengmingcheng");
 zongshishu =rs.getString("zongshishu");
  zhoushishu=rs.getString("zhoushishu") ;
xueshengrenshu=rs.getString("xueshengrenshu");
  pingxingbangeshu=rs.getString("pingxingbangeshu");
  meibanfenzucishu=rs.getString("meibanfenzucishu");
  zhidaojiaoshirenshu =rs.getString("zhidaojiaoshirenshu");

   shiyanleixing=rs.getString("shiyanleixing") ;
shiyanbaogaocishu=rs.getString("shiyanbaogaocishu");
 pigaicishu=rs.getString("pigaicishu") ;
 beizhu =rs.getString("beizhu");
  
             
             
             
             
             
             
             
             
             
              %>
             
                                                 
     <tbody>
                                                 
		<tr>
		<td class="text-center"><%=shiyankechengmingcheng %></td>
		<td class="text-center"><%=zongshishu %></td>
				<td class="text-center"><%=zhoushishu %></td>
				<td class="text-center"><%=xueshengrenshu %></td>
				<td class="text-center"><%= pingxingbangeshu %></td>
				<td class="text-center"><%= meibanfenzucishu %></td>
				<td class="text-center"><%=zhidaojiaoshirenshu %></td>
				
				<td class="text-center"><%= shiyanleixing %></td>
				
				<td class="text-center"><%=shiyanbaogaocishu %></td>
				<td class="text-center"><%= pigaicishu %></td>
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
				<td class="text-center"></td>
				<td class="text-center"></td>
				
				<td class="text-center">
		<input type="checkbox" name="type" value="A1">演示性
		<input type="checkbox" name="type" value="A2">验证性
		<input type="checkbox" name="type" value="A3">设计性
		<input type="checkbox" name="type" value="A4">综合性
		<input type="checkbox" name="type" value="A5">创新性</td>
						<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
							<td class="text-center"></td><!-- 审核情况 -->
				<td class="text-center"><a href="">更新</a>||<a href="" class="del" >删除</a></td>
		
		</tr>
                  
		
		
		
                           </tbody>
                           
                               <tbody> <td colspan='13' class="text-center"><input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="+"/></td></tbody>       
                                   
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