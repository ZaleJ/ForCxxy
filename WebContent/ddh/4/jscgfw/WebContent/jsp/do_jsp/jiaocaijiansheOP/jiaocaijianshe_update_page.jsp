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
	<title>教材建设更新</title>
	
	
    
	
</head>
<body>
	
	
	<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->

<div class="manage_right cl">
	 <h1 class="sub_title">更新</h1>
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

                                <th class="text-center">教材建设-更新</th>
                               
                              
                            </tr>
                            </thead>

                            <div>

                               

                            </div>
                            
             <%@include file="../../inc/conn.jsp" %>          
             <%
             
             
                 try 
{
  
  

                	 String Xuenian = (String)session.getAttribute("xuenian");
   String ketimingcheng=request.getParameter("p");
   String sea_sql = "select * from jiaocaijianshe  where jiaocaimingcheng=? ";

   ps = con.prepareStatement(sea_sql);
  ps.setString(1, ketimingcheng);
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
// 		String jiaocaimingcheng = rs.getString("jiaocaimingcheng");
		String jiaocaimingcheng = rs.getString("jiaocaimingcheng");
		String chubanshe = rs.getString("chubanshe");
		String chubanshijian = rs.getString("chubanshijian");
		String jiaocaizishu = rs.getString("jiaocaizishu");
		String benrengongxian = rs.getString("benrengongxian");
		String shifou = rs.getString("shifou");
		String beizhu = rs.getString("beizhu");
                
               
               
              %>
             
      <form name="jbqk"   action="jiaocaijianshe_update_back.jsp" method="get"   >                                           
      <tbody> 
                                                 
		
		<tr>
		
		<td >项目名称：<input style="border:0; background-color:#F9F9F9" type="text"  name="jiaocaimingcheng" value="<%=jiaocaimingcheng%>"></td>
				
		</tr>
		<tr>
		
		<td >出版社:<input style="border:0; background-color:#F9F9F9" type="text"  name="chubanshe" value="<%=chubanshe%>"></td>
				
		</tr>
		<tr>
		
		<td >出版时间:<input style="border:0; background-color:#F9F9F9" type="text"  name="chubanshijian" value="<%=chubanshijian%>"></td>
				
		</tr>
		<tr>
		<td >教材字数:<input style="border:0; background-color:#F9F9F9" type="text"  name="jiaocaizishu" value="<%=jiaocaizishu%>"></td>
				
		</tr>
		<tr>
		
		<td >本人贡献:<input style="border:0; background-color:#F9F9F9" type="text"  name="benrengongxian" value="<%=benrengongxian%>"></td>
				
		</tr>
		<tr>
		
		<td >是否:<input style="border:0; background-color:#F9F9F9" type="text"  name="shifou" value="<%=shifou%>"></td>
				
		</tr>
		<tr>
		
		<td >备注:<input style="border:0; background-color:#F9F9F9" type="text"  name="beizhu" value="<%=beizhu%>"></td>
				
		</tr>
	
		<tr>
		
		<td ><input type="submit" value="确定修改" name="button3" class="btn btn-primary"></td>
				
		</tr>
		</form>
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

          
        <!--翻页-->
        <div class="row" style="padding:0px; margin:0px;">
            <div class="pull-left">
                <div class="pagination">
             
                

                </div>
            </div>
            <div class="pull-right">
           
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
  <img src="" width="44" height="22" /> <a href="#"> </a> | <a href="#">Site
  Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact Us</a> | &copy; 
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