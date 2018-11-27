<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.sql.*"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%
Connection con = null;
PreparedStatement ps = null;


try 
{
  
   Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
   String url = "jdbc:sqlserver://localhost:1433;database=jsxxglxt;user=sa;password=123456";
  
   String gonghao=request.getParameter("gonghao");
   String inkey=request.getParameter("inkey");
   String identity = request.getParameter("identity");
   
   String ins_sql = null;
   if("teacher".equals(identity)){
   	ins_sql = "INSERT INTO teachers VALUES(?,?)";
	   
   }else if("department manager".equals(identity)){
	   ins_sql = "INSERT INTO department_manager VALUES(?,?)";
   }else if("college manager".equals(identity)){
	   ins_sql = "INSERT INTO college_manager VALUES(?,?)";
   }
   String ins_jbqk_sql = "INSERT INTO jbqk(gonghao) VALUES(?)";
  
   
   con = DriverManager.getConnection(url);
  
   ps = con.prepareStatement(ins_sql);
   ps.setString(1, gonghao);
   ps.setString(2, inkey);

   	ps.executeUpdate();
   	ps.close();
   	ps = con.prepareStatement(ins_jbqk_sql);
   	ps.setString(1, gonghao);
   	ps.executeUpdate();
   	
   	
   	
   	
   	// 给插入的数据一个默认值
   	String default_value_sql = "UPDATE  jbqk SET xingming=?, xingbie=?, chushengnianyue=?, xueli=?, xuewei=?, zhicheng=?, zhiwu=?, zhengzhimianmao=?, qiandinghetongqingkuang=?, suozaixibu=?, jinxiaoshijian=?, gaoxiaogongling=?, benkebiyexuexiao=?, huodezuigaoxuelideyuanxiaohuojigou=?, huodezuigaoxueweideyuanxiaohuojigou=?, gongchengshijianjingli=?, beizhu=? WHERE gonghao=?";
   	
   	ps=con.prepareStatement(default_value_sql);
   	ps.setString(1, "");
    ps.setString(2, "");
    ps.setString(3, "1999-01-01");
    ps.setString(4, "");
    ps.setString(5, "");
    ps.setString(6, "");
    ps.setString(7, "");
    ps.setString(8, "");
    ps.setString(9, "");
   //  String ins_sql = "UPDATE  jbqk SET xingming=?, xingbie=?, chushengnianyue=?, xueli=?, xuewei=?, zhicheng=?, zhiwu=?, zhengzhimianmao=?, 
   //qiandinghetongqingkuang=?, suozaixibu=?, jinxiaoshijian=?, gaoxiaogongling=?, 
   //benkebiyexuexiao=?, huodezuigaoxuelideyuanxiaohuojigou=?, huodezuigaoxueweideyuanxiaohuojigou=?
   //, gongchengshijianjingli=?, beizhu=? WHERE gonghao=?";
   
    ps.setString(10, "");
    ps.setString(11, "1998-01-01");
    ps.setString(12, "");
    ps.setString(13, "");
    ps.setString(14, "");
    ps.setString(15, "");
    

    
    ps.setString(16, "");
    ps.setString(17, "");
  ps.setString(18, gonghao);
    	
    
    	ps.executeUpdate();
   	
   	if	(ps.executeUpdate()!=0)   {	
   	   	
   	   	%>
   	   	
   	   	
   	   	<% }
   	  	

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
<meta http-equiv='refresh'  content='1;../general_login/index.html'/>
<span style='color:green'>注册成功</span>
