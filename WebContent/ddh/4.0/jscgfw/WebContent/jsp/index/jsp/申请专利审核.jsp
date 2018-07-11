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
	 <h1 class="sub_title">申请专利</h1>
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

                                <th class="text-center">专利名称</th>
                                <th class="text-center">专利类型</th>
                                <th class="text-center">申请时间</th>
                                <th class="text-center">是否受理</th>
                                <th class="text-center">是否获授权</th>
                              
                              <th class="text-center">是否获专利</th>
                              
                                <th class="text-center">备注</th>
                                
                                  <th class="text-center">审核情况</th>
                             <th class="text-center">操作</th>
                               <th class="text-center"></th>
                                
                            </tr>
                            </thead>

                            <div>

                                <form action='index.php' method='post'>
                                    <tr>教师id: <input type='text' name='user'/></tr>
                                    <input type='submit' value='查找'/>
                                </form>

                            </div>
                            
             <%@include file="../../inc/conn.jsp" %>          
             <% int $page=1 ;//默认情况等于1
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
  int i2=1;
//分页
String Shenhe=request.getParameter("shenhe");
  
   
  //分页
ResultSet rs2 = null;
PreparedStatement ps2 = null;
	String $sql = "SELECT count(*)  FROM shenqingzhuanli  ";  
	
  if(Shenhe==null){}
	 else{
	 $sql = "SELECT count(*)  FROM  shenqingzhuanli where shenheqingkuang='"+Shenhe+"'";
	 }
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

     String sea_sql = "SELECT top "+ $pagesize+" *  FROM shenqingzhuanli WHERE zhuanlimingcheng NOT IN(select top "+$jump+" zhuanlimingcheng FROM shenqingzhuanli ) ";

   
   String sea_sql2 = "SELECT *  FROM shenqingzhuanli  ";
   
    if(Shenhe==null)
 {
  //分页end
  }
   else{
   sea_sql = "SELECT top "+ $pagesize+" *  FROM shenqingzhuanli WHERE  shenheqingkuang='"+Shenhe+"' and  zhuanlimingcheng NOT IN(select top "+$jump+" zhuanlimingcheng FROM shenqingzhuanli ) ";
 
   
   }
  String shenheqingkuang=null;
   String zhuanlimingcheng =null;//id
   String zhuanlileixing =null;
   String shenqingshijian=null;
   String shifoushouli=null ;
   String shifouhuoshouquan=null;
   String shifouhuozhuanhua=null;
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
 
 
 
 
 
  zhuanlimingcheng =rs.getString("zhuanlimingcheng");
 zhuanlileixing =rs.getString("zhuanlileixing");
  shenqingshijian=rs.getString("shenqingshijian") ;
shifoushouli=rs.getString("shifoushouli");
  shifouhuoshouquan=rs.getString("shifouhuoshouquan");
 shifouhuozhuanhua=rs.getString("shifouhuozhuanhua");
  beizhu =rs.getString("beizhu");
 shenheqingkuang=rs.getString("shenheqingkuang");
             
     
             
              %>
             
                                                 
     <tbody>
                                                 
		<tr>
		<td class="text-center"><%=  zhuanlimingcheng %></td>
		<td class="text-center"><%=zhuanlileixing %></td>
		<td class="text-center"><%=shenqingshijian %></td>
				<td class="text-center"><%= shifoushouli%></td>
				
			
				<td class="text-center"><%= shifouhuoshouquan %></td>
				<td class="text-center"><%=shifouhuozhuanhua %></td>
				
				<td class="text-center"><%= beizhu %></td>
				
			
							<td class="text-center"><%= shenheqingkuang%></td><!-- 审核情况 -->
							
							
							<td class="text-center"  id="<%=$jump+i2%>" style="display:none">						
							
 <select name="shenhe" id="shenhe" onclick="getValue()" >
<option value="未审核">未审核</option>
 <option value="已审核">已审核</option>
 <option value="不通过">不通过</option>  
</select> 
</td>
<td class="text-center" ><a  onclick="select_all()" >修改</a>||<a id="atest" href="javascript:testddh(<%=zhuanlimingcheng%>)">确定</a></td>
		
		</tr>
                  
		

		
                           </tbody>      
                            
                           
           <% i2++;
           } %>       
                            
                            
          <script type='text/javascript'>
 
function getValue()  
{  
document.getElementById("shenhe").options[document.getElementById("shenhe").selectedIndex].value; 
 
var opval=document.getElementById("shenhe").value;
  //alert(opval);

//location.href="pointSelectPageDetailActionWmUpdate?op="+opval;
 //return opval;
 
}
function testddh(ss) {
  var opval=document.getElementById("shenhe").value;
   //alert(opval);
  location.href="../../do_jsp/申请专利/do_update_申请专利审核.jsp?op="+opval+"&ketimingcheng="+ss;
 }

  


</script>                   
             
  
                
                            
                            
                            
                            
                            
                            
                            
                            
                            
                       
                   
                           <form  action="../../do_jsp/申请专利/do_inset_申请专利.jsp" method="get" >
                           
     <tbody id="yingsheng" style="display:none">
                                          
		<tr>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3  name="zhuanlimingcheng"></input></td>
		<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="zhuanlileixing"></input></td>
				<td class="text-center">	           <input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shenqingshijian_y">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shenqingshijian_m">-
				<input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shenqingshijian_d"></td>
				
				
				
			
				
			
							<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shifoushouli"></td>
								
				
				<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shifouhuoshouquan"></td>
				<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="shifouhuozhuanhua"></td>
			<td class="text-center"><input style="border:0; background-color:#F9F9F9" type="text" size=3 name="beizhu"></td>
						<td class="text-center"></td><!-- 审核情况 -->
				<td class="text-center">  <input type="submit" value="确认添加" class="btn btn-primary login__input pass" ></td>
				
		</form>
		</tr>
                  
		
		
		
                           </tbody>
                           
                    
                                   
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

    var j= <%=$jump+1%>;
    var n=<%=$pagesize%>;
for(var i=0;i<n;i++){ 
$("#"+j).toggle();

j++;

}


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
							<li ><a href="申请专利审核.jsp?p=<%=$page-1%>">«</a></li>
							<%  }%>
                           <!-- <li class="active"><a href="javascript:;">1 <span class="sr-only">(current)</span></a></li>-->
							<%
							int i=1;
							for(i = $page; i<=$page+2;i++){
								if(i<=$totalPage){ %>
                            <li <% if(i == $page) { %>class="active"<%  }%> ><a href="申请专利审核.jsp?p=<%=i %>"><%=i %></a></li>
                            <%
									}
								}%>
							<% if($page < $totalPage){%>

                            <li><a href="申请专利审核.jsp?p=<%=$page+1%>">»</a></li>



							<% }else {%>
							<li class="disabled"><a class='del' href="javascript:;">»</a></li>
							<% }%>
                           <% String s="不通过";%>
                            <li><a href="申请专利审核.jsp?shenhe=<%=s%>">不通过</a></li><li><a href="申请专利审核.jsp?shenhe=已审核">已审核</a></li><li><a href="申请专利审核.jsp?shenhe=未审核">未审核</a></li>
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