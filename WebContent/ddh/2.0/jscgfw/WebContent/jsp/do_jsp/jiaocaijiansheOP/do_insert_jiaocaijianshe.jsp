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
		String jiaocaimingcheng = request.getParameter("jiaocaimingcheng");
		String chubanshe = request.getParameter("chubanshe");
		String chubanshijian = request.getParameter("chubanshijian");
		String jiaocaizishu = request.getParameter("jiaocaizishu");
		String benrengongxian = request.getParameter("benrengongxian");
		String shifou = request.getParameter("shifou");
		String beizhu = request.getParameter("beizhu");
		String xuenian = request.getParameter("xuenian");
   		String shenheqingkuang = request.getParameter("shenheqingkuang");
%>
<%
	String ins_sql = "INSERT INTO co_jbqk_jiaocaijianshe VALUES(?,?,?)";

		// 		int timenum = Integer.parseInt(time2) + 1; 
		String ss = Xuenian;//2017-2018学年

		ps = con.prepareStatement(ins_sql);
		ps.setString(1, Gonghao);
		ps.setString(2, jiaocaimingcheng);
		ps.setString(3, ss);

		ps.executeUpdate();

		String ins_sql2 = "INSERT INTO jiaocaijianshe VALUES(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps2 = null;
		ps2 = con.prepareStatement(ins_sql2);
		ps2.setString(1, jiaocaimingcheng);
		ps2.setString(2, chubanshe);
		ps2.setString(3, chubanshijian);
		ps2.setString(4, jiaocaizishu);

		ps2.setString(5, benrengongxian);
		ps2.setString(6, shifou);

		ps2.setString(7, beizhu);
		ps2.setString(8, ss);
		ps2.setString(9, "未审核");
		ps2.executeUpdate();
%>

<meta http-equiv='refresh' content='1;../../index/jsp/教材建设.jsp' />


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

