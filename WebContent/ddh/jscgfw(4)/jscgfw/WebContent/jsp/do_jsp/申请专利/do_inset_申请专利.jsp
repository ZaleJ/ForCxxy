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
		String zhuanlimingcheng = request.getParameter("zhuanlimingcheng");
		String zhuanlileixing = request.getParameter("zhuanlileixing");
		String shifouhuozhuanhua = request.getParameter("shifouhuozhuanhua");
		//String shenqingshijian = request.getParameter("shenqingshijian");//；；
			String shifoushouli = request.getParameter("shifoushouli");
		 String shenqingshijian= request.getParameter("shenqingshijian_y")+"-"+request.getParameter("shenqingshijian_m")+"-"+request.getParameter("shenqingshijian_d");
		
		String shifouhuoshouquan = request.getParameter("shifouhuoshouquan");
	
		String beizhu = request.getParameter("beizhu"); 
		String ins_sql = "INSERT INTO shenqingzhuanli VALUES(?,?,?,?,?,?,?,"+shenhe+")";
	  DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
	  java.util.Date ustime = format.parse(shenqingshijian);
      //ava.util.Date ustime2 = format.parse(yujijietishijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   //java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
	

	

	ps = con.prepareStatement(ins_sql);

ps.setString(1, zhuanlimingcheng);
ps.setString(2, zhuanlileixing);
ps.setDate(3, stime);

ps.setString(4, shifoushouli);


ps.setString(5, shifouhuoshouquan);
ps.setString(6, shifouhuozhuanhua);
ps.setString(7, beizhu);
//ps.setString(8, shenhe);


		ps.executeUpdate();

		

	
 %>
 
   <meta http-equiv='refresh'  content='1;../../index/jsp/申请专利.jsp'/>

 
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

