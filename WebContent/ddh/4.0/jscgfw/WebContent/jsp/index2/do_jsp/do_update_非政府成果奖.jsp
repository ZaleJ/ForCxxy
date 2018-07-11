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
 String s[]=new String [12];
 
 for(int j=0;j<3;j++){

 s[j+0+3*j]=request.getParameter("gn"+(j+1));
 s[j+1+3*j]=request.getParameter("gp"+(j+1));
 s[j+2+3*j]=request.getParameter("gc"+(j+1));
 s[j+3+3*j]=request.getParameter("gco"+(j+1)); 
 
 
 }
 %>
 

 
 <%
  String s1="NgoverAcc_National_";
  String s2="NgoverAcc_Province_";
  String s3="NgoverAcc_City_";
  String s4="NgoverAcc_college_";
 String ins_sql = "UPDATE Manager_Table SET";
 for(int j=0;j<3;j++){
 ins_sql=ins_sql+"  "+s1+(j+1)+"='"+s[j+0+3*j]+"',"+ s2+(j+1)+"='"+s[j+1+3*j]+"',"+s3+(j+1)+"='"+s[j+2+3*j]+"', "+s4+(j+1)+"='"+s[j+2+3*j]+"'";
 if(j<2){ins_sql=ins_sql+",";}
 }
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

<meta http-equiv='refresh'  content='1;../../index2/jsp/非政府成果奖.jsp'/>

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

