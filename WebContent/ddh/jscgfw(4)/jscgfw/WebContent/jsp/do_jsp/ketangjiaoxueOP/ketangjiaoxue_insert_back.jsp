<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
	<%@include file="../../inc/conn.jsp" %>
<%@ page import="java.sql.*"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->

<%
	
	PreparedStatement ke_ps = null;
	PreparedStatement co_ps = null;

	try {
		request.setCharacterEncoding("utf-8");
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		
		String Gonghao = (String) session.getAttribute("gonghao");
		String Xuenian = (String) session.getAttribute("xuenian");

		String ketangmingcheng = request.getParameter("kechengmingcheng");
		String shoukexingshi = request.getParameter("shoukexingshi");
		String kechengxingzhi = request.getParameter("kechengxingzhi");
		String shifou = request.getParameter("shifou");
		String xuefen = request.getParameter("xuefen");
		String xueshi = request.getParameter("xueshi");
		String shoukebangeshu = request.getParameter("shoukebangeshu");
		String pingxingbangeshu = request.getParameter("pingxingbangeshu");
		String zuoyecishu = request.getParameter("zuoyecishu");
		String pigaicishu = request.getParameter("pigaicishu");
		String dayicishu = request.getParameter("dayicishu");
		String beizhu = request.getParameter("beizhu");

		String ins_sql = "INSERT INTO ketangjiaoxue VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String con_sql = "INSERT INTO co_jbqk_ketangjiaoxue VALUES(?,?,?)";

		con = DriverManager.getConnection(url);

		ke_ps = con.prepareStatement(ins_sql);

		ke_ps.setString(1, ketangmingcheng);
		ke_ps.setString(2, kechengxingzhi);
		ke_ps.setString(3, shoukexingshi);
		ke_ps.setString(4, shifou);
		ke_ps.setString(5, xuefen);
		ke_ps.setString(6, xueshi);
		ke_ps.setString(7, shoukebangeshu);
		ke_ps.setString(8, pingxingbangeshu);
		ke_ps.setString(9, zuoyecishu);
		ke_ps.setString(10, pigaicishu);
		ke_ps.setString(11, dayicishu);
		ke_ps.setString(12, beizhu);
		ke_ps.setString(13, Xuenian);

		ke_ps.executeUpdate();

		co_ps = con.prepareStatement(con_sql);

		co_ps.setString(1, Gonghao);
		co_ps.setString(2, ketangmingcheng);
		co_ps.setString(3, Xuenian);

		co_ps.executeUpdate();

	}

	//以下代码捕捉异常
	catch (Exception e) {
		System.out.println(e.getMessage());
	}

	//以下代码是用来关掉数据库的是必须要写的，照写OK
	finally {

		if (co_ps != null) {
			try {
				co_ps.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if (ke_ps != null) {
			try {
				ke_ps.close();
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

