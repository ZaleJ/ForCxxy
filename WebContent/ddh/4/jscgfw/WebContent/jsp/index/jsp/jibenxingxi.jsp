<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../../inc/conn.jsp" %>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
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
 <link href="../../css/../折叠面板.css" rel="stylesheet">  
<script type="text/javascript" src="../../../js/jquery-1.11.2.min.js"></script>
<script src="../../../js/amazeui.js" language="JavaScript" charset="utf-8"></script>

</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
<body> 


 


<div class="manage_right cl">
	 <h1 class="sub_title">个人信息</h1>
     <div class="manage_right_c">
	
     	 <table border="0" cellspacing="0" cellpadding="0" class="table  table-bordered" id="dg">

              <tbody class="white_bg">
                  <tr>
                    <td>
                    
                    	 <div class="alert alert-info">温馨提示：欢迎登陆，和使用教师成果管理系统</div>

                        <div class="table-responsive mt15" id="xiangshi">
              <table class="table table-striped table-bordered table-hover table-highlight table-checkable" id="dg">
     	<div class="clears"></div>

                         
 <thead>
                            <tr>
   
   <th class="text-center">姓名</th> <th class="text-center">性别</th> <th class="text-center">出生年月</th>
     <th class="text-center">学历</th> <th class="text-center">学位</th> <th class="text-center">职称</th>
      <th class="text-center">职务</th> <th class="text-center">政治面貌</th> <th class="text-center">签订合同</th>
       <th class="text-center">工号</th> <th class="text-center">所在系部</th> <th class="text-center">进校时间</th>
        <th class="text-center">高校工龄</th> <th class="text-center">本科毕业学校</th> <th class="text-center">获得最高学历的院校或机构</th>
        
          <th class="text-center">获得最高学位的院校或机构</th> <th class="text-center">工程实践经历</th> 
   
   </tr>
   </thead>
   

                            <div>

                                <form action='index.php' method='post'>
                                    <tr>教师id: <input type='text' name='user'/></tr>
                                    <input type='submit' value='查找'/>
                                </form>

                            </div>
                            <tbody>
                            
                            
       <%             try 
{
  
  

   String Gonghao=(String)session.getAttribute("gonghao");
   String Inkey=(String)session.getAttribute("inkey");
   
   String sea_sql = "SELECT *  FROM jbqk WHERE gonghao=? ";
  
   String xingming =null;
   String xingbie =null;
   String chushengnianyue=null ;
   String xueli=null;
   String xuewei=null;
   String zhicheng=null;
   String zhiwu =null;
   String zhengzhimianmao=null ;
   String qiandinghetongqingkuang=null ;
   String gonghao=null;
   String suozaixibu=null ;
   String jinxiaoshijian =null;
   String gaoxiaogongling=null ;
   String benkebiyexuexiao=null;
   String huodezuigaoxuelideyuanxiaohuojigou=null;
   String huodezuigaoxueweideyuanxiaohuojigou=null ;
   String gongchengshijianjingli =null;
 
  
   ps = con.prepareStatement(sea_sql);
   ps.setString(1, Gonghao);
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
 xingming = rs.getString("xingming");
   xingbie = rs.getString("xingbie");
    chushengnianyue = rs.getString("chushengnianyue");
   xueli = rs.getString("xueli");
    xuewei = rs.getString("xuewei");
   zhicheng = rs.getString("zhicheng");
    zhiwu = rs.getString("zhiwu");
   zhengzhimianmao = rs.getString("zhengzhimianmao");
   qiandinghetongqingkuang = rs.getString("qiandinghetongqingkuang");
    gonghao = rs.getString("gonghao");
    suozaixibu = rs.getString("suozaixibu");
    jinxiaoshijian = rs.getString("jinxiaoshijian");
   gaoxiaogongling = rs.getString("gaoxiaogongling");
    benkebiyexuexiao = rs.getString("benkebiyexuexiao");
    huodezuigaoxuelideyuanxiaohuojigou = rs.getString("huodezuigaoxuelideyuanxiaohuojigou");
    huodezuigaoxueweideyuanxiaohuojigou = rs.getString("huodezuigaoxueweideyuanxiaohuojigou");
    gongchengshijianjingli = rs.getString("gongchengshijianjingli");
   
  
  

 %>

   <tbody>
                         
		<tr>
	
	<td class="text-center"><%=xingming%></td>	<td class="text-center"><%=xingbie%></td>	
		<td class="text-center"><%=chushengnianyue%></td>	<td class="text-center"><%=xueli%></td>
			<td class="text-center"><%=xuewei%></td><td class="text-center"><%=zhicheng%></td>
				<td class="text-center"><%=zhiwu%></td>	<td class="text-center"><%=zhengzhimianmao%></td>
					<td class="text-center"><%= qiandinghetongqingkuang%></td>	<td class="text-center"><%=gonghao%></td>
						<td class="text-center"><%=suozaixibu%></td>	<td class="text-center"><%=jinxiaoshijian%></td>
							<td class="text-center"><%=gaoxiaogongling%></td>	<td class="text-center"><%=benkebiyexuexiao%></td>
									<td class="text-center"><%= huodezuigaoxuelideyuanxiaohuojigou%></td><td class="text-center"><%=huodezuigaoxueweideyuanxiaohuojigou%></td>
									<td class="text-center"><%= gongchengshijianjingli%></td>
		</tr>
   </tbody>
                            




<% } %>
             
           
                         
		
                           
                           
 <script type='text/javascript'>
 

    function select_all(){


      $("#xianshi2").toggle();
      
        $("#yingsheng2").toggle();
    }



</script>
                            
                            
                        </table>
                    </div>
                </td>
                
            </tr>
            </tbody>
        </table>
          <input   class="btn btn-primary" type='button' name='user' onclick="select_all()" value="修改"/>
           
            <div  > 
<div>
    
    
 <form name="jbqk"   action="../../do_jsp/jbqkCRUD/jbqk_insert_back.jsp" method="get"   >
    <table width="893" height="452" border="0" align="center" id="yingsheng2" style="display: none;" >
  <tr>
    <td>
		姓名：
      		<input type='text' name="xingming" size="4"  value="<%= xingming %>"/>  
	</td>
  </tr>
  <tr>
    <td>
		性别：
			<select name="xingbie">
				<option value="男" selected>男</option>
				<option value="女">女</option>
			</select>
	 </td>
  </tr>
 
 <tr>
    <td>
		出生年月：
			<input type='text' name="csny_y" size="4"  value="<%=chushengnianyue.substring(0,4)%>"/>年
			<input type='text' name="csny_m" size="2"  value="<%=chushengnianyue.substring(5,7)%>"/>月
			<input type='text' name="csny_d" size="2"  value="<%=chushengnianyue.substring(8,10)%>"/>日
			
	</td>
  </tr>

  <tr>
    <td>
		学历：
			<select name="xueli">
				<option value="本科" selected>本科</option>
				<option value="研究生">研究生</option>
				<option value="硕士">硕士</option>
				<option value="博士">博士</option>
			</select>
	</td>
  </tr>
  <tr>
    <td>
		学位：
			<select name="xuewei">
				<option value="学士" selected>学士</option>
				<option value="硕士">硕士</option>
				<option value="博士">博士</option>
			</select>
	</td>
  </tr>
  <tr>
    <td>
		职称：
			<input type='text' name="zhicheng" size="20" value="<%=zhicheng %>"/>
	</td>
  </tr>
  <tr>
    <td>
		职务：
			<input type='text' name="zhiwu" size="20" value="<%=zhiwu%>"/>
	</td>
  </tr>
  <tr>
    <td>
		政治面貌：
			<select name="zhengzhimianmao">
				<option value="党员" selected>党员</option>
				<option value="团员">团员</option>
				<option value="群众">群众</option>
			</select>
	</td>
  </tr>
  <tr>
    <td>
		签订合同情况：
			<input type="radio" name="situation" value="是">是
			<input type="radio" name="situation" value="否" >否
	</td>
  </tr>
  <tr>
    <td>
		工号：
			<input type='text' name="gonghao" size="10"   onfocus="this.blur()" value="<%=session.getAttribute("gonghao")%>"/>
			
			
 
	</td>
  </tr>
  
  
  
  <tr>
    <td>
		所在系部：
			<input type='text' name="suozaixibu" size="15"  value="<%=suozaixibu%>"    /> 
	</td>
  </tr>
  <tr>
    <td>
		进校时间：
			<input type='text' name="jxsj_y" size="8"  value="<%=jinxiaoshijian.substring(0,4)%>"/>年
			<input type='text' name="jxsj_m" size="8"  value="<%=jinxiaoshijian.substring(5,7)%>"/>月
			<input type='text' name="jxsj_d" size="8" value="<%=jinxiaoshijian.substring(8,10)%>" />日
	</td>
  </tr>
  <tr>
    <td>
		高校工龄：
			<input type='text' name="gaoxiaogongling" size="2"  value="<%=gaoxiaogongling%>"/>年
	</td>
  </tr>
  <tr>
    <td>
		本科毕业学校：
			<input type='text' name="benkebiyexuexiao" size="15" value="<%= benkebiyexuexiao%>" />
	</td>
  </tr>
  <tr>
    <td>
		获得最高学历的院校或机构：
			<input type='text' name="huodezuigaoxuelideyuanxiaohuojigou" size="15" value="<%=huodezuigaoxuelideyuanxiaohuojigou%>"/>
	</td>
  </tr>
  <tr>
    <td>
		获得最高学位的院校或机构：
			<input type='text' name="huodezuigaoxueweideyuanxiaohuojigou" size="15"  value="<%=huodezuigaoxueweideyuanxiaohuojigou%>"/>
	</td>
  </tr>
  
  
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
  
  
  
  <tr>
    <td>
		工程实践经历：
				<input type="radio" name="experience" value="来自企业" >来自企业&nbsp;
				<input type="radio" name="experience" value="有行业企业经历5年以上" >有行业企业经历5年以上&nbsp;
				<input type="radio" name="experience" value="有行业企业经历3年以上" >有行业企业经历3年以上&nbsp;
				<input type="radio" name="experience" value="有行业企业经历1年以上" >有行业企业经历1年以上&nbsp;
				<input type="radio" name="experience" value="有短期行业企业工程能力培养经历" >有短期行业企业工程能力培养经历&nbsp;
				<input type="radio" name="experience" value="answerF" >指导学生实践<input type='text' name="number" size="1" />轮以上&nbsp;
				<input type="radio" name="experience" value="answerG" >其他：<input type='text' name="experience" size="20" />
	
	</td>
		
  </tr>

<tr>
<td><input type="submit" value="确定" name="button3" class="btn btn-primary">
</td></tr>

</table>
</form>
 
 
 
 



    </p> 
  </div> 





   


















</div> 
      
        
        
        
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

</body>
<script src="../../../common/scripts/jquery-1.11.2.min.js"></script>
<script src="../../../common/scripts/bootstrap.min.js"></script>
<!--[if lt IE 9]>  
  <script src="../../../common/scripts/respond.min.js"></script> 
<![endif]-->
<script src="../../../common/scripts/date/jquery.datetimepicker.js"></script>
<script src="../../../common/scripts/houtai.js"></script>


</html>
