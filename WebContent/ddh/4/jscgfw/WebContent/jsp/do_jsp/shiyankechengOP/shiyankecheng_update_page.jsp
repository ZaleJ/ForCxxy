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
	
	
    
<script>
function updateForm(){
	
	// ----首先通过ID获取到我们需要的增加记录的form表单
	var updateForm = document.getElementById("updateForm");
	
	// ----通过id获取到我们需要判断是否勾选的checkbox
	
	
		// 课程性质相关的5个可选框
	var yanshixing = document.getElementById("yanshixing");
	var yanzhengxing = document.getElementById("yanzhengxing");
	var shejixing = document.getElementById("shejixing");
	var zonghexing = document.getElementById("zonghexing");
	var chuangxinxing = document.getElementById("chuangxinxing");
	
	
	
	
	
	//然后将勾选的checkbox中的value放入一个字符串中
		// 课程性质相关的字符串拼接
	var shiyanleixing = "";
	if(yanshixing.checked){
		shiyanleixing+=yanshixing.value;
	}
	if(yanzhengxing.checked){
		shiyanleixing+="  "+yanzhengxing.value;
	}
	if(shejixing.checked){
		shiyanleixing+="  "+shejixing.value;
	}
	if(zonghexing.checked){
		shiyanleixing+="  "+zonghexing.value;
	}
	if(chuangxinxing.checked){
		shiyanleixing+="  "+chuangxinxing.value;
	}
	
	// 将已经勾选的checkbox中的内容放入隐藏的input中的value，然后将这个表单提交给后台服务进行处理
	document.getElementById("shiyanleixing").value = shiyanleixing;
	updateForm.submit();
}

</script>
	
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

                                <th class="text-center">实验实践教学-更新</th>
                               
                              
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
   String sea_sql = "select * from shiyankecheng  where ID=? ";

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
	String ID = rs.getString("ID");
	 String shiyankechengmingcheng = rs.getString("shiyankechengmingcheng");
	String juese = rs.getString("juese");
	String zongshishu = rs.getString("zongshishu");
	String zhoushishu = rs.getString("zhoushishu");
	String xueshengrenshu = rs.getString("xueshengrenshu");
	String pingxingbangeshu = rs.getString("pingxingbangeshu");
	String meibanfenzucishu = rs.getString("meibanfenzucishu");
	String zhidaojiaoshirenshu = rs.getString("zhidaojiaoshirenshu");
	String shiyanleixing = rs.getString("shiyanleixing");
	String shiyanbaogaocishu = rs.getString("shiyanbaogaocishu");
	String pigaicishu = rs.getString("pigaicishu");
	String beizhu = rs.getString("beizhu");  
		String shenheqingkuang = rs.getString("shenheqingkuang");
                
               
               
              %>
             
      <form name="jbqk"   action="shiyankecheng_update_back.jsp" method="get"  id="updateForm"  >                                           
      <tbody> 
                                                 
       	 <tr>
		
		<td >实验课程ID（不可修改）：<input readonly="true" style="border:0; background-color:#F9F9F9" type="text"  name="ID" value="<%=ID%>"></td>
				
		</tr>
		
		<tr>
		
		<td >实验课程名称：<input style="border:0; background-color:#F9F9F9" type="text"  name="kechengmingcheng" value="<%=shiyankechengmingcheng%>"></td>
				
		</tr>
		<tr>
		
		<td >角色:
			<select name="juese">
				<option value="第一指导">第一指导</option>
				<option value="第二指导">第二指导</option>
				<option value="第三指导">第三指导</option>
				<option value="参与">参与</option>
			</select>
		</td>
				
		</tr>
		<tr>
		
		<td >总时数:<input style="border:0; background-color:#F9F9F9" type="text"  name="zongshishu" value="<%=zongshishu%>"></td>
				
		</tr>
		<tr>
		
		<td >周学时:<input style="border:0; background-color:#F9F9F9" type="text"  name="zhoushishu"value="<%=zhoushishu%>"></td>
				
		</tr>
		<tr>
		
		<td >学生人数:<input style="border:0; background-color:#F9F9F9" type="text"  name="xueshengrenshu" value="<%=xueshengrenshu%>"></td>
				
		</tr>
		<tr>
		
		<td >平行班个数:<input style="border:0; background-color:#F9F9F9" type="text"  name="pingxingbangeshu" value="<%=pingxingbangeshu%>"></td>
				
		</tr>
		<tr>
		
		<td >每班分组次数:<input style="border:0; background-color:#F9F9F9" type="text"  name="meibanfenzucishu" value="<%=meibanfenzucishu%>"></td>
				
		</tr>
		<tr>
		
		<td >指导教师人数:<input style="border:0; background-color:#F9F9F9" type="text"  name="zhidaojiaoshirenshu" value="<%=zhidaojiaoshirenshu%>"></td>
				
		</tr>
		<tr>
		
		<td >实验类型:
			<input type="hidden" name="shiyanleixing" id="shiyanleixing" value="do not get"/>
			<br/>
			<input type="checkbox" id="yanshixing" value="演示性" />演示性
			<br/>
			<input type="checkbox" id="yanzhengxing" value="验证性" />验证性
			<br/>
			<input type="checkbox" id="shejixing" value="设计性" />设计性
			<br/>
			<input type="checkbox" id="zonghexing" value="综合性" />综合性
			<br/>
			<input type="checkbox" id="chuangxinxing" value="创新性" />创新性
		</td>
				
		</tr>
		<tr>
		
		<td >交试验报告次数:<input style="border:0; background-color:#F9F9F9" type="text"  name="shiyanbaogaocishu" value="<%=shiyanbaogaocishu%>"></td>
				
		</tr>
		<tr>
		
		<td >批改次数:<input style="border:0; background-color:#F9F9F9" type="text"  name="pigaicishu" value="<%=pigaicishu%>"></td>
				
		</tr>
		<tr>
		
		<td >备注:<input style="border:0; background-color:#F9F9F9" type="text"  name="beizhu" value="<%=beizhu%>"></td>
				
		</tr>

	
		<tr>
		
		<td ><input type="button" value="确定修改" name="button3" class="btn btn-primary" onclick="updateForm()"></td>
				
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