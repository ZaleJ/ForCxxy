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
		String shiyankechengmingcheng = request.getParameter("shiyankechengmingcheng");
		String juese = request.getParameter("juese");
		String zongshishu = request.getParameter("zongshishu");
		String zhouxueshi = request.getParameter("zhouxueshi");
		String xueshengrenshu = request.getParameter("xueshengrenshu");
		String pingxingbangeshu = request.getParameter("pingxingbangeshu");
		String meibanfenzucishu = request.getParameter("meibanfenzucishu");
		String zhidaojiaoshirenshu = request.getParameter("zhidaojiaoshirenshu");
		String shiyanleixing = request.getParameter("shiyanleixing");
		String shiyanbaogaocishu = request.getParameter("shiyanbaogaocishu");
		String pigaicishu = request.getParameter("pigaicishu");
		String dayicishu = request.getParameter("dayicishu");
		String beizhu = request.getParameter("beizhu");
		String shenheqingkuang = request.getParameter("shenheqingkuang");
%>


<%
	String ins_sql = "INSERT INTO co_jbqk_shiyankecheng VALUES(?,?,?)";

// 		int timenum = Integer.parseInt(time2) + 1;
		String ss =Xuenian;//2017-2018学年

		ps = con.prepareStatement(ins_sql);
		ps.setString(1, Gonghao);
		ps.setString(2, shiyankechengmingcheng);
		ps.setString(3, ss);

		ps.executeUpdate();

		String ins_sql2 = "INSERT INTO shiyankecheng VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps2 = null;
		ps2 = con.prepareStatement(ins_sql2);
		ps2.setString(1, shiyankechengmingcheng);
		ps2.setString(2, juese);
		ps2.setString(3, zongshishu);
		ps2.setString(4, zhouxueshi);

		ps2.setString(5, xueshengrenshu);
		ps2.setString(6, pingxingbangeshu);

		ps2.setInt(7, Integer.parseInt(meibanfenzucishu));
		ps2.setInt(8, Integer.parseInt(zhidaojiaoshirenshu));
		ps2.setString(9, shiyanleixing);
		ps2.setInt(10, Integer.parseInt(shiyanbaogaocishu));
		ps2.setInt(11, Integer.parseInt(pigaicishu));

		ps2.setString(12, beizhu);
		ps2.setString(13, ss);
		ps2.setString(14, "未审核");
		ps2.executeUpdate();
%>

<meta http-equiv='refresh' content='1;../../index/jsp/实验实践教学.jsp' />


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

