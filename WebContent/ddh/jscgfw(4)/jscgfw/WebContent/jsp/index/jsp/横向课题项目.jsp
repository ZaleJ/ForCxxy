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
	
	
    <script type="text/javascript">
	
	
 onload = function ()
    {
         var year=new Date().getFullYear(); //获取当前年份
         
     
           var sel2 = document.getElementById ('sel2');//获取select下拉列表
       for (  var i = year+2; i >year-5; i--)//循环添加2006到当前年份加3年的每个年份依次添加到下拉列表
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i+"-"+(i+1));
           option.appendChild (txt);
           sel2.appendChild (option);
       }
           var sel3 = document.getElementById ('sel3');//获取select下拉列表
       for ( var i = year+2; i >year-5; i--)//循环添加2006到当前年份加3年的每个年份依次添加到下拉列表
       {
           var option = document.createElement ('option');
           option.value = i;
           var txt = document.createTextNode (i+"-"+(i+1));
           option.appendChild (txt);
           sel3.appendChild (option);
       }
       
       
         
     
       
       
       
    }
    
   
    
</script>
	
</head>
<body>
	
	
	<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->

<div class="manage_right cl">
	 <h1 class="sub_title">横向课题项目</h1>
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

                                <th class="text-center">项目名称</th>
                                <th class="text-center">项目来源</th>
                                <th class="text-center">项目经费</th>
                                <th class="text-center">任务角色</th>
                                <th class="text-center">理想时间</th>
                              
                              <th class="text-center">预计结题时间</th>
                                <th class="text-center">结题结论</th>
                                
                              <th class="text-center"> 备注</th>
                              
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
                  	
                int $page=1 ;//默认情况等于1
				     String s_pageNow=request.getParameter("p");
				     
                   if(s_pageNow!=null){
                     //接收到了pageNow
                                   $page=Integer.parseInt(s_pageNow);
}
//  
			          		           
  int  pa=2;String paa =null;
  paa=request.getParameter("pa");
if(paa!=null){  pa=Integer.parseInt(request.getParameter("pa"));}
    int $pagesize = pa; //每页显示8条主录
	            int $jump = ($page-1)*$pagesize;
	            int $totalPage=10;	
	//int pagecount=(int)Math.ceil((float)totaluser/(float)pagesize);
             	
             
             
                 try 
{
  
  
//分页
ResultSet rs2 = null;
PreparedStatement ps2 = null;
	String $sql = "SELECT count(*)  FROM hengxiangketixiangmu  ";  
	 int  $totalNumber=6;
 ps2 = con.prepareStatement($sql);
 rs2 = ps2.executeQuery(); 
   if(rs2.next()){
               $totalNumber=rs2.getInt(1); //总记录数
              
                     }
 $totalPage = (int)Math.ceil((float)$totalNumber/(float)$pagesize); //总页数
		                            if(request.getParameter("p")!=null){
		           $page =Integer.parseInt(request.getParameter("p"));
 }

//分页end
    String sea_sql = "SELECT top "+ $pagesize+" *  FROM hengxiangketixiangmu WHERE xiangmumingcheng NOT IN(select top "+$jump+" xiangmumingcheng FROM hengxiangketixiangmu ) ";
   String sea_sql2 = "SELECT *  FROM hengxiangketixiangmu  ";
  
   String xiangmumingcheng =null;//id
   String xiangmulaiyuan =null;
   String xiangmujingfei=null;
   String renwujuese=null ;
   String lixiangshijian=null;
   String yujijietishijian=null;
   String beizhu=null;
   String jietijielun =null;
 
 String shenheqingkuang=null;
  
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
 

  

shenheqingkuang=rs.getString("shenheqingkuang");
 
 
  xiangmumingcheng =rs.getString("xiangmumingcheng");
 xiangmulaiyuan =rs.getString("xiangmulaiyuan");
  xiangmujingfei=rs.getString("xiangmujingfei") ;
renwujuese=rs.getString("renwujuese");
  lixiangshijian=rs.getString("lixiangshijian");
 yujijietishijian=rs.getString("yujijietishijian");
  jietijielun =rs.getString("jietijielun");
 beizhu=rs.getString("beizhu");


     
             
              %>
             
                                                 
     <tbody>
                                                 
		<tr>
		<td class="text-center"><%=  xiangmumingcheng %></td>
		<td class="text-center"><%=xiangmulaiyuan %></td>
		<td class="text-center"><%=xiangmujingfei %></td>
				<td class="text-center"><%= renwujuese%></td>
				
			
				<td class="text-center"><%= lixiangshijian %></td>
				<td class="text-center"><%=yujijietishijian %></td>
				
				<td class="text-center"><%= jietijielun %></td>
				
				<td class="text-center"><%=beizhu %></td>
				
				
							<td class="text-center"><%= shenheqingkuang%></td><!-- 审核情况 -->
				
		<td><a  href="../../do_jsp/横向课题/do_update_横向课题项目.jsp?p=<%=xiangmumingcheng%>">更新</a>||<a  class="del"  href="../../do_jsp/do_delet_横向课题项目.jsp?p=<%=xiangmumingcheng%>">删除</a></td>
		</tr>
                  
	

		
                           </tbody>      
                            
                           
           <% } %>       
                            
                            
          <script type='text/javascript'>
 

    function select_all(){


      $("#xianshi2").toggle();
      
        $("#yingsheng2").toggle();
    }



</script>                   

                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                       
                   
                           <form  action="../../do_jsp/do_inset_横向课题项目.jsp" method="get" >
                           
     <tbody id="yingsheng" style="display:none">
                                          
		<tr>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="xiangmumingcheng"></input></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="xiangmulaiyuan"></input></td>
				<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="xiangmujingfei"></td>
				<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="renwujuese"></td>
				<td class="text-center">
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="lixiangshijian_y">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="lixiangshijian_m">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="lixiangshijian_d">
				</td>
				
				<td class="text-center">
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="yujijietishijian_y">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="yujijietishijian_m">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="yujijietishijian_d">
				
				</td>
	          
						
								
				<td class="text-center">
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="jietijielun">
				</td>
				<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="beizhu"></td>
			
						<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="xiangmuzhiliang"></td><!-- 审核情况 -->
				<td class="text-center">  <input type="submit" value="确认添加" class="btn btn-primary login__input pass" ></td>
				
		</form>
		</tr>
                  
		
		
		
                           </tbody>
                           
                               <tbody> <td colspan='12' class="text-center"><input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="+"/></td></tbody>       
                                   
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
							<%  if($page <=1){%>
                            <li class="disabled"><a href="javascript:;">«</a></li>
							<%  } else {%>
							<li ><a href="横向课题项目.jsp?p=<%=$page-1%>">«</a></li>
							<%  }%>
                           <!-- <li class="active"><a href="javascript:;">1 <span class="sr-only">(current)</span></a></li>-->
							<%
							int i=1;
							for(i = $page; i<=$page+2;i++){
								if(i<=$totalPage){ %>
                            <li <% if(i == $page) { %>class="active"<%  }%> ><a href="横向课题项目.jsp?p=<%=i %>"><%=i %></a></li>
                            <%
									}
								}%>
							<% if($page < $totalPage){%>

                            <li><a href="横向课题项目.jsp?p=<%=$page+1%>">»</a></li>



							<% }else {%>
							<li class="disabled"><a class='del' href="javascript:;">»</a></li>
							<% }%>
                            <li><a href="indexdy.php">查看全部</a></li>
                        </div>
                    </div>
                    <div class="pull-right">
                   		 <div class="pagination">共 <%=$totalNumber%> 个，每页 <%=$pagesize%>个</div>
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