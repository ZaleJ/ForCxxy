<%@page import="java.util.function.Function"%>
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
		String xiangmumingcheng = request.getParameter("xiangmumingcheng");
		String xiangmujibie = request.getParameter("xiangmujibie");
		String xuantilaiyuan = request.getParameter("xuantilaiyuan");
		String xiangmuzhuangkuang = request.getParameter("xiangmuzhuangkuang");
		String jietidengji = request.getParameter("jietidengji");
		String xueshengnianji = request.getParameter("xueshengnianji");
		String xiangmuyingxiang = request.getParameter("xiangmuyingxiang");
		String beizhu = request.getParameter("beizhu");
		String xueshengrenshu = request.getParameter("xueshengrenshu");
		String zhidaojiaoshirenshu = request.getParameter("zhidaojiaoshirenshu");
		String zhidaojiaoshijibie = request.getParameter("zhidaojiaoshijibie");
		String xuenian = request.getParameter("xuenian");
   		String shenheqingkuang = request.getParameter("shenheqingkuang");
   		
   		
   		
   		
   		
   		
%>
<%
	


	String sel_fufen_sql = "select *  from Manager_Table";
	PreparedStatement fufen_ps = con.prepareStatement(sel_fufen_sql);
	ResultSet fufen_rs = fufen_ps.executeQuery();
	String Province2 = "0";
	String Province3 = "0";
	String College2 = "0";
	String College3 = "0";
	while (fufen_rs.next()) {
		Province2 = fufen_rs.getString("leStuAcc_Provence_2");
		Province3 = fufen_rs.getString("leStuAcc_Provence_3");
		College2 = fufen_rs.getString("leStuAcc_College_2");
		College3 = fufen_rs.getString("leStuAcc_College_3");
	}
	
	
		// 		int timenum = Integer.parseInt(time2) + 1; 
		String ss = Xuenian;//2017-2018学年

		

		String ins_sql2 = "INSERT INTO zhidaodachuang VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps2 = null;
		ps2 = con.prepareStatement(ins_sql2);
		ps2.setString(1, xiangmumingcheng);
		ps2.setString(2, xiangmujibie);
		ps2.setString(3, xuantilaiyuan);
		ps2.setString(4, xiangmuzhuangkuang);

		ps2.setString(5, jietidengji);
		ps2.setString(6, xueshengnianji);

		ps2.setString(7, xiangmuyingxiang);
		ps2.setString(8, beizhu);
		ps2.setString(9, xueshengrenshu);
		ps2.setString(10, zhidaojiaoshirenshu);
		ps2.setString(11, zhidaojiaoshijibie);
		ps2.setString(12, ss);
		ps2.setString(13, "未审核");
		
		String fufenString = "0";
		if(xiangmujibie.equals("省级") && jietidengji.equals("优秀")){
// 			ps2.setString(14, Province2);
		fufenString = Province2;
		}else if(xiangmujibie.equals("省级") && (jietidengji.equals("良好") || jietidengji.equals("中等"))){
// 			ps2.setString(14, Province3);
			fufenString = Province3;
		}else if(xiangmujibie.equals("院级") && jietidengji.equals("优秀")){
// 			ps2.setString(14, College2);
			fufenString = College2;
		}else if(xiangmujibie.equals("院级") && (jietidengji.equals("良好") || jietidengji.equals("中等"))){
// 			ps2.setString(14, College3);
			fufenString = College3;
		}else{
		}
		
		if(Integer.parseInt(zhidaojiaoshirenshu)>1){
				double M = Double.parseDouble(zhidaojiaoshirenshu);
			if("项目负责人".equals(zhidaojiaoshijibie) || "主要贡献者".equals(zhidaojiaoshijibie)){
				fufenString = Double.toString(2.00/M*Double.parseDouble(fufenString));
			}else{
				fufenString = Double.toString(1.00/M*Double.parseDouble(fufenString));
			}
		}
			ps2.setString(14, fufenString);
		
		
		
		
		
		
		ps2.setString(15, Gonghao);
		ps2.executeUpdate();
		
		
		
		String xiangmuID = null;
		String sel_co_sql = "select ID  from zhidaodachuang where gonghao=? and xiangmumingcheng=?";
		PreparedStatement co_ps = con.prepareStatement(sel_co_sql);
		co_ps.setString(1, Gonghao);
		co_ps.setString(2, xiangmumingcheng);
		ResultSet co_rs = co_ps.executeQuery();
		while (co_rs.next()) {
			xiangmuID = co_rs.getString("ID");
		}
		
		
		
		
		
		
		
		
		String ins_sql = "INSERT INTO co_jbqk_zhidaodachuang VALUES(?,?,?)";
		ps = con.prepareStatement(ins_sql);
		ps.setString(1, Gonghao);
		ps.setString(2, xiangmuID);
		ps.setString(3, ss);

		ps.executeUpdate();
		
		
%>

<meta http-equiv='refresh' content='1;../../index/JSP2.0/指导大创.jsp' />


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

