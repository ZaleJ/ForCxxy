<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>

<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.math.BigDecimal"%>

<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../../inc/conn.jsp"%>
<%
	try {
		request.setCharacterEncoding("utf-8");

		String Gonghao = (String) session.getAttribute("gonghao");
		String Xuenian = (String) session.getAttribute("xuenian");

		// 		String shiyankechengmingcheng = request.getParameter("shiyankechengmingcheng");
		String shixunxiangmumingcheng = request.getParameter("shixunxiangmumingcheng");
		String xuefen = request.getParameter("xuefen");
		String shichang = request.getParameter("shichang");
		String xueshengrenshu = request.getParameter("xueshengrenshu");
		String xunhuancishu = request.getParameter("xunhuancishu");
		String shixunleixing = request.getParameter("shixunleixing");
		String chengguoxingshi = request.getParameter("chengguoxingshi");
		String beizhu = request.getParameter("beizhu");
		String xuenian = request.getParameter("xuenian");
		String shenheqingkuang = request.getParameter("shenheqingkuang");
%>


<%
	String ins_sql = "INSERT INTO co_jbqk_shixunzhidao VALUES(?,?,?)";

		// 		int timenum = Integer.parseInt(time2) + 1; 
		String ss = Xuenian;//2017-2018学年

		ps = con.prepareStatement(ins_sql);
		ps.setString(1, Gonghao);
		ps.setString(2, shixunxiangmumingcheng);
		ps.setString(3, ss);

		ps.executeUpdate();

		String ins_sql2 = "INSERT INTO shixunzhidao VALUES(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps2 = null;
		ps2 = con.prepareStatement(ins_sql2);
		ps2.setString(1, shixunxiangmumingcheng);
		ps2.setString(2, xuefen);
		ps2.setString(3, shichang);
		ps2.setString(4, xueshengrenshu);

		ps2.setString(5, xunhuancishu);
		ps2.setString(6, shixunleixing);

		ps2.setString(7, chengguoxingshi);
		ps2.setString(8, beizhu);
		ps2.setString(9, ss);
		ps2.setString(10, "未审核");
		ps2.executeUpdate();
%>

<meta http-equiv='refresh' content='1;../../index/jsp/实训指导.jsp' />


<%
	}
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

