<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<%@include file="../../inc/conn.jsp" %>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%


request.setCharacterEncoding("utf-8");
  
try 
{
 
  
  String remember=request.getParameter("passcookies"); 
   String gonghao=request.getParameter("gonghao");
   String inkey=request.getParameter("inkey");
   String xuenian="2017-2018学年";
    String state="0";
   //String  sate=request.getParameter("sate");
  
   String sea_sql = "SELECT *  FROM teachers WHERE gonghao=? AND inkey=?";
  
   ps = con.prepareStatement(sea_sql);
   ps.setString(1, gonghao);
   ps.setString(2, inkey);
   rs = ps.executeQuery();
   

	if(rs.next()){
	    state="0";
		session.setAttribute("gonghao", gonghao);
		session.setAttribute("inkey", inkey);
		session.setAttribute("xuenian",xuenian);
		session.setAttribute("state", state);//权限设置
		if (remember!= null) {  
                Cookie c1 = new Cookie("gonghao", gonghao);  
                Cookie c2 = new Cookie("inkey", inkey);  
                c1.setMaxAge(1000);  
                c2.setMaxAge(1000);//这里设置保存这条Cookie的时间  
                response.addCookie(c1);//添加Cookie  
                response.addCookie(c2);  
              
     
 
            }
            else
            { 
             }
               %>
               
               <meta http-equiv='refresh'  content='3;../../index/index2.jsp'/>
	<span style='color:green'>登陆成功，3秒后自动跳转</span>
               
               
               <%     
            
	}
	
	
	
	
	
	
	else{
	 PreparedStatement ps2 = null;
     ResultSet rs2 = null;
	 String sea_sql2 = "SELECT *  FROM shengherenyuan WHERE gonghao=? AND inkey=?";
	  ps2 = con.prepareStatement(sea_sql2);
   ps2.setString(1, gonghao);
   ps2.setString(2, inkey);
   rs2 = ps2.executeQuery();
	 
	if(rs2.next()){
	  state="1";
		session.setAttribute("gonghao", gonghao);
		session.setAttribute("inkey", inkey);
		session.setAttribute("xuenian",xuenian);
		session.setAttribute("state", state);
		if (remember!= null) {  
                Cookie c1 = new Cookie("gonghao", gonghao);  
                Cookie c2 = new Cookie("inkey", inkey);  
                c1.setMaxAge(1000);  
                c2.setMaxAge(1000);//这里设置保存这条Cookie的时间  
                response.addCookie(c1);//添加Cookie  
                response.addCookie(c2);  
              
     
 
            }
            else
            { 
             }
               %>
               
               <meta http-equiv='refresh'  content='3;../../index/index2.jsp'/>
	<span style='color:green'>登陆成功，3秒后自动跳转</span>
               
               
               <%     
            
	}
	
	
	else{
	
	
	
	
	
	
	
	
	
	
	
	
	 %>
	
	<meta http-equiv='refresh'  content='3;../login.jsp'/>
	<span style='color:red'>用户名或者密码错误，3秒后自动跳转</span>
	
	<% }
	}

} 

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



