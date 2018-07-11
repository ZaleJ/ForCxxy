<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
	
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.math.BigDecimal"%>

<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../inc/conn.jsp" %>
<%
	
	

	try {
		request.setCharacterEncoding("utf-8");
		
		

String Gonghao=(String)session.getAttribute("gonghao");
String ketimingcheng = request.getParameter("kechengmingcheng");
String kechengxingzhi = request.getParameter("kechengxingzhi");
String shoukexingshi = request.getParameter("shoukexingshi");
String shifou = request.getParameter("shifou");
String xuefen = request.getParameter("xuefen");
	 String xueshi = request.getParameter("xueshi");
	 String shoukebangeshu = request.getParameter("shoukebangeshu");
	 String pingxingbangeshu = request.getParameter("pingxingbangeshu");
	  String zuoyecishu = request.getParameter("zuoyecishu");
	  String pigaicishu = request.getParameter("pigaicishu");
	  String dayicishu = request.getParameter("dayicishu");
	  String time2 = request.getParameter("time2");
	  String beizhu = request.getParameter("beizhu");
	  String shenheqingkuang = request.getParameter("shenheqingkuang");
	 
	 
	 
	 
	 %>
	 
	
	 <% 
	 
		String ins_sql = "INSERT INTO co_jbqk_ketangjiaoxue VALUES(?,?,?)";
	
	
	int timenum=Integer.parseInt(time2)+1;
		String		  ss="'"+time2+ "-"+timenum+"学年'";//2017-2018学年
	

	ps = con.prepareStatement(ins_sql);
ps.setString(1, Gonghao);
ps.setString(2, ketimingcheng);
ps.setString(3, ss);

ps.executeUpdate();
 
 
 String ins_sql2 = "INSERT INTO ketangjiaoxue VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement ps2 = null;	
ps2 = con.prepareStatement(ins_sql2);
ps2.setString(1, ketimingcheng);
ps2.setString(2, kechengxingzhi);
ps2.setString(3, shoukexingshi);
ps2.setString(4, shifou);

BigDecimal bd=new BigDecimal(xuefen);  
BigDecimal bd2=new BigDecimal(xueshi);  

ps2.setBigDecimal(5,bd );
ps2.setBigDecimal(6, bd2);

ps2.setInt(7,Integer.parseInt(shoukebangeshu));
ps2.setInt(8, Integer.parseInt(pingxingbangeshu));
ps2.setInt(9, Integer.parseInt(zuoyecishu));
ps2.setInt(10, Integer.parseInt(pigaicishu));
ps2.setInt(11, Integer.parseInt(dayicishu));

ps2.setString(12, beizhu);
ps2.setString(13, ss);	
ps2.executeUpdate();
 %>

   <meta http-equiv='refresh'  content='1;../index/jsp/ketangjiaoxue.jsp'/>

 
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

