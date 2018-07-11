<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
	
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../inc/conn.jsp" %>
<%
	
	

	try {
		request.setCharacterEncoding("utf-8");
		
		
String shenhe="未审核";

		String xiangmumingcheng = request.getParameter("xiangmumingcheng");
		String xiangmulaiyuan = request.getParameter("xiangmulaiyuan");
		String xiangmujingfei = request.getParameter("xiangmujingfei");
		String renwujuese = request.getParameter("renwujuese");
			String jietijielun = request.getParameter("jietijielun");
		 String yujijietishijian= request.getParameter("yujijietishijian_y")+"-"+request.getParameter("yujijietishijian_m")+"-"+request.getParameter("yujijietishijian_d");
		 String lixiangshijian= request.getParameter("lixiangshijian_y")+"-"+request.getParameter("lixiangshijian_m")+"-"+request.getParameter("lixiangshijian_d");
		String beizhu = request.getParameter("beizhu");
	
		 
		String ins_sql = "INSERT INTO hengxiangketixiangmu VALUES(?,?,?,?,?,?,?,?,"+shenhe+")";
	  DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  java.util.Date ustime = format.parse(lixiangshijian);
      java.util.Date ustime2 = format.parse(yujijietishijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
	

	

	ps = con.prepareStatement(ins_sql);

ps.setString(1, xiangmumingcheng);
ps.setString(2, xiangmulaiyuan);
ps.setString(3, xiangmujingfei);
ps.setString(4, renwujuese);

ps.setDate(5, stime);
ps.setDate(6, stime2);
ps.setString(7, jietijielun);
ps.setString(8, beizhu);


		ps.executeUpdate();

		

	
 %>
 
   <meta http-equiv='refresh'  content='1;../index/jsp/横向课题项目.jsp'/>

 
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

