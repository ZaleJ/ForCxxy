
<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>

<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="2col_leftNav.css" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="../../../common/style/bootstrap.min.css">
	<link rel="stylesheet" type="text/css"
		href="../../../common/scripts/date/jquery.datetimepicker.css">
		<link rel="stylesheet" type="text/css"
			href="../../../common/style/style.css" />
		<link rel="stylesheet" type="text/css"
			href="../../../common/style/management2.css" />
		<link rel="stylesheet" type="text/css" href="../../../font/font.css">

			<link rel="stylesheet" type="text/css"
				href="../../../common/style/bootstrap.min.css">

				<link rel="stylesheet" type="text/css"
					href="../../../common/scripts/date/jquery.datetimepicker.css">
					<link rel="stylesheet" type="text/css"
						href="../../../common/style/style.css" />



					<link rel="stylesheet" type="text/css"
						href="../../../common/style/management2.css" />
					<link rel="stylesheet" type="text/css"
						href="../../../font/font.css">
						<link href="../../css/../amazeui.css" rel="stylesheet">
							<link href="../../css/../折叠面板.css" rel="stylesheet">
								<script type="text/javascript"
									src="../../../js/jquery-1.11.2.min.js"></script>
								<script src="../../../js/amazeui.js" language="JavaScript"
									charset="utf-8"></script>
								<script type="text/javascript" src="../../../js/jquery.min.js"></script>
								<script type="text/javascript" src="../../../js/jHsDate.js"></script>

								<!-- DW6 -->

								<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="2col_leftNav.css" type="text/css" />
<script type="text/javascript">
	onload = function() {
		var year = new Date().getFullYear(); //获取当前年份

		var sel2 = document.getElementById('sel2');//获取select下拉列表
		for (var i = 2006; i < year + 3; i++)//循环添加2006到当前年份加3年的每个年份依次添加到下拉列表
		{
			var option = document.createElement('option');
			option.value = i;
			var txt = document.createTextNode(i + "-" + (i + 1));
			option.appendChild(txt);
			sel2.appendChild(option);
		}
		var sel3 = document.getElementById('sel3');//获取select下拉列表
		for (var i = year - 1; i > year - 5; i--)//循环添加2006到当前年份加3年的每个年份依次添加到下拉列表
		{
			var option = document.createElement('option');
			option.value = i;
			var txt = document.createTextNode(i + "-" + (i + 1));
			option.appendChild(txt);
			sel3.appendChild(option);
		}

	}
</script>
								</head>
								<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
								<body>
									<div class="manage_right cl">
										<h1 class="sub_title">指导竞赛</h1>
										<div class="manage_right_c">

											<table border="0" cellspacing="0" cellpadding="0"
												class="table  table-bordered" id="dg">

												<tbody class="white_bg">
													<tr>
														<td>
															<div class="alert alert-info">温馨提示：欢迎登陆，和使用教师成果管理系统</div>

															<div class="table-responsive mt15">
																<table
																	class="table table-striped table-bordered table-hover table-highlight table-checkable"
																	id="dg">
																	<div class="clears"></div>

																	<thead>
																		<tr>

																			<th class="text-center">竞赛名称</th>
																			<th class="text-center">竞赛级别</th>
																			<th class="text-center">获奖情况</th>
																			<th class="text-center">指导形式</th>
																			<td class="text-center">备注</td>
																			<td class="text-center">学年</td>
																			<th class="text-center">审核情况</th>
																			<th class="text-center">操作</th>


																		</tr>
																	</thead>

																	<div>

																		<form action='#' method='post'>
																			日期: <select id="sel2" name='time2'>
																			</select> <input type='submit' value='查找' />
																		</form>

																	</div>
																	<%@include file="../../inc/conn.jsp"%>
																	<%
																		String ss = null;
																		String time = null;
																		String time2 = null;
																		String time3 = null;
																		time = request.getParameter("time");
																		time2 = request.getParameter("time2");
																		time3 = request.getParameter("time3");
																		ResultSet co_rs = null;
																		ResultSet ketang_rs = null;
																		PreparedStatement co_ps = null;
																		PreparedStatement ketang_ps = null;
																		//fengye
																		PreparedStatement co_ps2 = null;
																		ResultSet co_rs2 = null;
																		int $page = 1;//默认情况等于1
																		String s_pageNow = request.getParameter("p");

																		if (s_pageNow != null) {
																			//接收到了pageNow
																			$page = Integer.parseInt(s_pageNow);
																		}
																		//  

																		int pa = 2;
																		String paa = null;
																		paa = request.getParameter("pa");
																		if (paa != null) {
																			pa = Integer.parseInt(request.getParameter("pa"));
																		}
																		int $pagesize = pa; //每页显示8条主录
																		int $jump = ($page - 1) * $pagesize;
																		//int pagecount=(int)Math.ceil((float)totaluser/(float)pagesize);

																		try {
																			String $sql = "SELECT count(*)  FROM co_jbqk_zhidaojingsai WHERE gonghao=? ";
																			int $totalNumber = 6;
																			co_ps2 = con.prepareStatement($sql);
																			String Gonghao = (String) session.getAttribute("gonghao");
																			String Inkey = (String) session.getAttribute("inkey");
																			String Xuenian = (String) session.getAttribute("xuenian");
																			co_ps2.setString(1, Gonghao);
																			co_rs2 = co_ps2.executeQuery();
																			if (co_rs2.next()) {
																				$totalNumber = co_rs2.getInt(1); //总记录数

																			}

																			int $totalPage = (int) Math.ceil((float) $totalNumber / (float) $pagesize); //总页数
																			if (request.getParameter("p") != null) {
																				$page = Integer.parseInt(request.getParameter("p"));
																			}

																			String sel_co_sql = "SELECT top " + $pagesize
																					+ " jingsaimingcheng  FROM co_jbqk_zhidaojingsai WHERE gonghao=? and ID NOT IN(select top "
																					+ $jump + " ID FROM co_jbqk_zhidaojingsai WHERE gonghao=" + Gonghao + ")  ";

																			String sel_ketang_sql = "SELECT *  FROM zhidaojingsai WHERE jingsaimingcheng=? ";

																			if (time2 == null) {
																				co_ps = con.prepareStatement(sel_co_sql);
																				co_ps.setString(1, Gonghao);
																			}

																			else {
																				int timenum = Integer.parseInt(time2) + 1;
																				ss = "'" + time2 + "-" + timenum + "学年'";//2017-2018学年

																				String sel_co_sql2 = "SELECT top " + $pagesize
																						+ " jingsaimingcheng  FROM co_jbqk_zhidaojingsai WHERE gonghao=" + Gonghao + " and xuenian="
																						+ ss + " and ID NOT IN(select top " + $jump
																						+ " ID FROM co_jbqk_zhidaojingsai WHERE gonghao=" + Gonghao + ")  ";
																				String sel_co_sql3 = "SELECT jingsaimingcheng  FROM co_jbqk_zhidaojingsai WHERE gonghao='" + Gonghao
																						+ "' and   xuenian=" + ss + "  ";
																				co_ps = con.prepareStatement(sel_co_sql3);

																			}
																			co_rs = co_ps.executeQuery();

																			while (co_rs.next()) {

																				String jingsaimingcheng = co_rs.getString("jingsaimingcheng");
																				//String xuenian=co_rs.getString("xuenian");
																				ketang_ps = con.prepareStatement(sel_ketang_sql);
																				ketang_ps.setString(1, jingsaimingcheng);
																				ketang_rs = ketang_ps.executeQuery();
																				while (ketang_rs.next()) {

																					String jingsaijibie = ketang_rs.getString("jingsaijibie");
																					String huojiangqingkuang = ketang_rs.getString("huojiangqingkuang");
																					String zhidaoxingshi = ketang_rs.getString("zhidaoxingshi");
																					String beizhu = ketang_rs.getString("beizhu");
																					String xuenian = ketang_rs.getString("xuenian");
																					String shenheqingkuang = ketang_rs.getString("shenheqingkuang");
																	%>
																	<form id='ketang_ID' method='post'>
																		<tbody>
																			<tr>
																				<td class="text-center"><%=jingsaimingcheng%></td>
																				<td class="text-center"><%=jingsaijibie%></td>
																				<td class="text-center"><%=huojiangqingkuang%></td>

																				<td class="text-center"><%=zhidaoxingshi%></td>

																				<td class="text-center"><%=beizhu%></td>
																				<td class="text-center"><%=xuenian%></td>
																				<td class="text-center"><%=shenheqingkuang%></td>
																				<td class="text-center"><nter">
																					<a
																						href="../../do_jsp/zhidaojingsaiOP/zhidaojingsai_update_page.jsp?p=<%=jingsaimingcheng%>">更新</a>||<a
																						class="del"
																						href="../../do_jsp/zhidaojingsaiOP/do_delet_zhidaojingsai.jsp?p=<%=jingsaimingcheng%>">删除</a></td>








																			</tr>
																		</tbody>
																	</form>


																	<%
																		}

																			}
																	%>
























																	<!--翻页-->
																	<form
																		action="../../do_jsp/zhidaojingsaiOP/do_insert_zhidaojingsai.jsp"
																		method="get">
																		<tbody id="yingsheng" style="display: none">

																			<tr>

																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="jingsaimingcheng"></td>
<!-- 																				<td class="text-center"><input -->
<!-- 																					style="border: 0; background-color: #F9F9F9" -->
<!-- 																					type="text" size=3 name="jingsaijibie"></td> -->
																				<td class="text-center"><select
																					name='jingsaijibie'>
																						<option value="全国">全国</option>
																						<option value="大区">大区</option>
																						<option value="省级">省级</option>
																						<option value="院级">院级</option>
																						<option value="系级">系级</option>
</select></td>
<!-- 																				<td class="text-center"><input -->
<!-- 																					style="border: 0; background-color: #F9F9F9" -->
<!-- 																					type="text" size=3 name="huojiangqingkuang"></td> -->
																				<td class="text-center"><select
																					name='huojiangqingkuang'>
																						<option value="特等奖">特等奖</option>
																						<option value="一等奖">一等奖</option>
																						<option value="二等奖">二等奖</option>
																						<option value="三等奖">三等奖</option>
																						<option value="优秀奖">优秀奖</option>
																						</select></td>
																						
<!-- 																				<td class="text-center"><input -->
<!-- 																					style="border: 0; background-color: #F9F9F9" -->
<!-- 																					type="text" size=3 name="zhidaoxingshi"></td> -->
																				<td class="text-center"><select
																					name='zhidaoxingshi'>
																						<option value="第一指导">第一指导</option>
																						<option value="第二指导">第二指导</option>
																						<option value="参与指导">参与指导</option>
																						<option value="培训指导">培训指导</option>
																						<option value="组织管理">组织管理</option>
																						</select></td>

<!-- 																				<td class="text-center"><input -->
<!-- 																					style="border: 0; background-color: #F9F9F9" -->
<!-- 																					type="text" size=3 name="beizhu"></td> -->
																				<td class="text-center"><select
																					name='beizhu'>
																						<option value="第一指导">首次参赛</option>
																						<option value="第二指导">零的突破</option>
																						<option value="参与指导">好于往年</option>
																						</select></td>
																				<td class="text-center"><select id="sel3"
																					name='time2'></td>
																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="jietishijian_y"></td>
																				<!-- 审核情况 -->
																				<td class="text-center"><input type="submit"
																					value="确认添加"
																					class="btn btn-primary login__input pass"></td>

																			</tr>

																		</tbody>

																	</form>
																	<tbody>
																		<td colspan='15' class="text-center"><input
																			class="btn btn-primary" type='button' name='user'
																			onclick="select_all()" value="+" /></td>
																	</tbody>

																	<script type='text/javascript'>
																		$(function() {
																			$(
																					"#dg  .del")
																					.click(
																							function() {
																								var url = $(
																										this)
																										.attr(
																												'href');
																								if (window
																										.confirm('确认删除')) {
																									location.href = url;
																								}
																								return false;
																							});
																		});

																		function select_all() {

																			var trs = $("td[class='text-center douxuan']");
																			for (var i = 0; i <= trs.length; i++) {

																			}
																			//$(".pdiv").children().hide();
																			$(
																					"#yingsheng")
																					.toggle();
																		}
																	</script>


																</table>
															</div>
														</td>

													</tr>
												</tbody>
											</table>


											<form action='#' method='post'>
												<tr>
													一页显示几个:
													<input type='text' name='pa' size=3 />
												</tr>
												<input type='submit' value='确定' />
											</form>



											<!--翻页-->
											<div class="row" style="padding: 0px; margin: 0px;">
												<div class="pull-left">
													<div class="pagination">
														<%
															if ($page <= 1) {
														%>
														<li class="disabled"><a href="javascript:;">«</a></li>
														<%
															} else {
														%>
														<li><a href="指导竞赛.jsp?p=<%=$page - 1%>">«</a></li>
														<%
															}
														%>
														<!-- <li class="active"><a href="javascript:;">1 <span class="sr-only">(current)</span></a></li>-->
														<%
															int i = 1;
																for (i = $page; i <= $page + 2; i++) {
																	if (i <= $totalPage) {
														%>
														<li <%if (i == $page) {%> class="active" <%}%>><a
															href="指导竞赛.jsp?p=<%=i%>"><%=i%></a></li>
														<%
															}
																}
														%>
														<%
															if ($page < $totalPage) {
														%>

														<li><a href="指导竞赛.jsp?p=<%=$page + 1%>">»</a></li>



														<%
															} else {
														%>
														<li class="disabled"><a class='del'
															href="javascript:;">»</a></li>
														<%
															}
														%>
														<li><a href="indexdy.php">查看全部</a></li>
													</div>
												</div>
												<div class="pull-right">
													<div class="pagination">
														共
														<%=$totalNumber%>
														个，每页
														<%=$pagesize%>个
													</div>
												</div>
											</div>
											<!--翻页 end-->

											<div class="clears"></div>
										</div>



										<!--end navbar -->





















										<%
											}

											//以下代码捕捉异常
											catch (Exception e) {
												System.out.println(e.getMessage());
											}

											//以下代码是用来关掉数据库的是必须要写的，照写OK
											finally {

												if (ketang_ps != null) {
													try {
														ketang_ps.close();
													} catch (Exception e) {
														e.printStackTrace();
													}
												}
												if (co_ps != null) {
													try {
														co_ps.close();
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




										<%=ss %>
										<br />
								</body>
</html>
