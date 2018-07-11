<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
	
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../../inc/conn.jsp" %>
<%
	
	

	try {
		request.setCharacterEncoding("utf-8");
		
		String shenhe="未审核";


		String lunwentimu = request.getParameter("lunwentimu");
		String fabiaoqikan = request.getParameter("fabiaoqikan");
		//String fabiaoshijian = request.getParameter("fabiaoshijian");
		String qiganjibie = request.getParameter("qiganjibie");
			String shouluqingkuang = request.getParameter("shouluqingkuang");
		 String fabiaoshijian= request.getParameter("fabiaoshijian_y")+"-"+request.getParameter("fabiaoshijian_m")+"-"+request.getParameter("fabiaoshijian_d");
		
		String qita = request.getParameter("qita");
	
		String beizhu = request.getParameter("beizhu"); 
		String ins_sql = "INSERT INTO fabiaolunwen VALUES(?,?,?,?,?,?,?,"+shenhe+")";
	  DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  java.util.Date ustime = format.parse(fabiaoshijian);
      //ava.util.Date ustime2 = format.parse(yujijietishijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   //java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
	

	

	ps = con.prepareStatement(ins_sql);

ps.setString(1, lunwentimu);
ps.setDate(2, stime);
ps.setString(3, fabiaoshijian);
ps.setString(4, qiganjibie);


ps.setString(5, shouluqingkuang);
ps.setString(6, qita);
ps.setString(7, beizhu);


		ps.executeUpdate();

		

	
 %>
 
   <meta http-equiv='refresh'  content='1;../../index/jsp/发表论文.jsp'/>

 
 <%  }  
	//以下代码捕捉异常
	catch (Exception e) {
		System.out.println(e.getMessage());
	}

	//以下代码是用来关掉数据库的是必须要写的，照写OK
	finally {

		if (ps != null) {
			try {
				ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	
		if (con != null) {
			try {
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
%>

