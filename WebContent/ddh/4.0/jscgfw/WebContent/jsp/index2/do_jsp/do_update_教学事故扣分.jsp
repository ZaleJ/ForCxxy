<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../../inc/conn.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.math.BigDecimal"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变--><!DOCTYPE 

span PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

   
  

try 
{
//String ketimingcheng=request.getParameter("ketimingcheng");
 //String shenhe=request.getParameter("op");
 String []a=new String [3];
 for(int i=1;i<=3;i++){
 
a[i-1]=request.getParameter("a"+i);
 }
 
 
 
 %>
 

 
 <%
    String s1="TecDisaster_1";
               String s2="TecDisaster_2";
                  String s3="TecDisaster_3";
                     ///String s4="inventPatent_design";
 String ins_sql = "UPDATE Manager_Table SET";
 
 ins_sql=ins_sql+"  "+s1+"='"+a[0]+"',"+ s2+"='"+a[1]+"',"+s3+"='"+a[2]+"'; ";
 
 
%>



<% 
  
//Integer.parseInt(zuoyecishu)
   //String ins_sql = "UPDATE chengdanjiaoyanjiaogaiketi SET  shenheqingkuang='"+shenhe+"'  WHERE  ketimingcheng='"+ketimingcheng+"'";
  
 



   ps=con.prepareStatement(ins_sql);




   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }else{
      	%>
   	
   	
	<span style='color:green'>修改失败</span>
	

   	<%
    
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index2/jsp/教学事故扣分.jsp'/>

<%
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

