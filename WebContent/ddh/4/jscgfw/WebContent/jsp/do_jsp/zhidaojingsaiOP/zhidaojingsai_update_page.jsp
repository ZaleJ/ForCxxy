<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
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
							<link href="../../css/../æå é¢æ¿.css" rel="stylesheet">
								<script type="text/javascript"
									src="../../../js/jquery-1.11.2.min.js"></script>
								<script src="../../../js/amazeui.js" language="JavaScript"
									charset="utf-8"></script>
								<title>指导竞赛更新</title>
</head>
<body>


	<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->

	<div class="manage_right cl">
		<h1 class="sub_title">更新</h1>
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

											<th class="text-center">指导竞赛-更新</th>


										</tr>
									</thead>

									<div></div>

									<%@include file="../../inc/conn.jsp"%>
									<%
										try {

											String Xuenian = (String) session.getAttribute("xuenian");
											String ID = request.getParameter("p");
											String sea_sql = "select * from zhidaojingsai  where ID=? ";

											ps = con.prepareStatement(sea_sql);
											ps.setString(1, ID);
											rs = ps.executeQuery();

											// 	out.println(Gonghao);
											// 	out.println(Inkey);
											if (rs == null) {
									%>
									<td class="text-center" colspan='17'>
										<div class="alert alert-info">没有初始信息</div>
									</td>
									<%
										}

											while (rs.next()) {
												// 		String xiangmumingcheng = rs.getString("xiangmumingcheng");
												String jingsaimingcheng = rs.getString("jingsaimingcheng");
												String jingsaijibie = rs.getString("jingsaijibie");
												String tedengjiangrenshu = rs.getString("tedengjiangrenshu");
												String yidengjiangrenshu = rs.getString("yidengjiangrenshu");
												String erdengjiangrenshu = rs.getString("erdengjiangrenshu");
												String sandengjiangrenshu = rs.getString("sandengjiangrenshu");
												String youxiujiangrenshu = rs.getString("youxiujiangrenshu");
												String zhidaoxingshi = rs.getString("zhidaoxingshi");
												String zhidaojiaoshirenshu = rs.getString("zhidaojiaoshirenshu");
												String beizhu = rs.getString("beizhu");
									%>

									<form name="jbqk" action="zhidaojingsai_update_back.jsp"
										method="get">
										<tbody>
										
										
										<tr>

												<td>竞赛ID：<input
													style="border: 0; background-color: #F9F9F9" type="text"
													name="ID" value="<%=ID%>"></td>

											</tr>


											<tr>

												<td>竞赛名称：<input
													style="border: 0; background-color: #F9F9F9" type="text"
													name="jingsaimingcheng" value="<%=jingsaimingcheng%>"></td>

											</tr>
											<tr>

<!-- 												<td>项目级别:<input -->
<!-- 													style="border: 0; background-color: #F9F9F9" type="text" -->
<%-- 													name="xiangmujibie" value="<%=xiangmujibie%>"></td> --%>
												<td>竞赛级别: <select
																					name='jingsaijibie'>
																					<option value="<%=jingsaijibie%>"><%=jingsaijibie%></option>
																					<option value="国际">国际</option>
																						<option value="全国">全国</option>
																						<option value="大区">大区</option>
																						<option value="省级">省级</option>
																						<option value="省级">市级</option>
																						<option value="院级">院级</option>
																						<option value="系级">系级</option>
																		</select></td>

											</tr>
											<tr>

<!-- 												<td>选题来源:<input -->
<!-- 													style="border: 0; background-color: #F9F9F9" type="text" -->
<%-- 													name="xuantilaiyuan" value="<%=xuantilaiyuan%>"></td> --%>
												<td class="text-center">
<!-- 																				<select -->
<!-- 																					name='huojiangqingkuang'> -->
<!-- 																						<option value="特等奖">特等奖</option> -->
<!-- 																						<option value="一等奖">一等奖</option> -->
<!-- 																						<option value="二等奖">二等奖</option> -->
<!-- 																						<option value="三等奖">三等奖</option> -->
<!-- 																						<option value="优秀奖">优秀奖</option> -->
<!-- 																						</select> -->
																						特等奖人数：
																					<select
																					name='tedengjiangrenshu'>
																						<option value="<%=tedengjiangrenshu%>"><%=tedengjiangrenshu%></option>
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select>
																						<br />
																						
																						一等奖人数：
																					<select
																					name='yidengjiangrenshu'>
																					<option value="<%=yidengjiangrenshu%>"><%=yidengjiangrenshu%></option>
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select>
																						<br />
																						
																						二等奖人数：
																					<select
																					name='erdengjiangrenshu'>
																					<option value="<%=erdengjiangrenshu%>"><%=erdengjiangrenshu%></option>
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select>
																						<br />
																						
																							三等奖人数：
																					<select
																					name='sandengjiangrenshu'>
																					<option value="<%=sandengjiangrenshu%>"><%=sandengjiangrenshu%></option>
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select>
																						<br />
																						
																								优秀奖人数：
																					<select
																					name='youxiujiangrenshu'>
																					<option value="<%=youxiujiangrenshu%>"><%=youxiujiangrenshu%></option>
																						<option value="0">0</option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select>
																						<br />
																						
																						
																						</td>
											</tr>
											<tr>

<!-- 												<td>项目状况:<input -->
<!-- 													style="border: 0; background-color: #F9F9F9" type="text" -->
<%-- 													name="xiangmuzhuangkuang" value="<%=xiangmuzhuangkuang%>"></td> --%>
												<td class="text-center">指导形式：<select
																					name='zhidaoxingshi'>
																					<option value="<%=zhidaoxingshi%>"><%=zhidaoxingshi%></option>
																						<option value="第一指导">第一指导</option>
																						<option value="第二指导">第二指导</option>
																						<option value="参与指导">参与指导</option>
																						<option value="培训指导">培训指导</option>
																						<option value="组织管理">组织管理</option>
																						</select></td>
											</tr>	
											<tr>
											</tr>
											<tr>

<!-- 												<td>结题等级:<input -->
<!-- 													style="border: 0; background-color: #F9F9F9" type="text" -->
<%-- 													name="jietidengji" value="<%=jietidengji%>"></td> --%>
												<td class="text-center">指导教师人数：<select
																					name='zhidaojiaoshirenshu'>
																						<option value="<%=zhidaojiaoshirenshu%>"><%=zhidaojiaoshirenshu%></option>
																						<option value="1">1</option>
																						<option value="2">2</option>
																						<option value="3">3</option>
																						<option value="4">4</option>
																						<option value="5">5</option>
																						<option value="6">6</option>
																						<option value="7">7</option>
																						<option value="8">8</option>
																						<option value="9">9</option>
																						<option value="10">10</option>
																						<option value="11">11</option>
																						<option value="12">12</option>
																						<option value="13">13</option>
																						<option value="14">14</option>
																						<option value="15">15</option>
																						<option value="16">16</option>
																						
																						</select></td>
											</tr>
											<tr>

												<td class="text-center">备注：<select
																					name='beizhu'>
																						<option value="首次参赛">首次参赛</option>
																						<option value="零的突破">零的突破</option>
																						<option value="好于往年">好于往年</option>
																						</select></td>
											</tr>
											
											<tr>

												<td><input type="submit" value="确定修改" name="button3"
													class="btn btn-primary"></td>

											</tr>
									</form>
									</tbody>


									<%
										}
									%>
									<script type='text/javascript'>
										function select_all() {

											$("#xianshi2").toggle();

											$("#yingsheng2").toggle();
										}
									</script>
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

















									<script type='text/javascript'>
										$(function() {
											$("#dg  .del").click(function() {
												var url = $(this).attr('href');
												if (window.confirm('确认删除')) {
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
											$("#yingsheng").toggle();
										}
									</script>


								</table>
							</div>
						</td>

					</tr>
				</tbody>
			</table>


			<!--翻页-->
			<div class="row" style="padding: 0px; margin: 0px;">
				<div class="pull-left">
					<div class="pagination"></div>
				</div>
				<div class="pull-right"></div>
			</div>
			<!--翻页 end-->
			<div class="clears"></div>
		</div>







		<!--right end-->
		<script src="common/scripts/jquery-1.11.2.min.js"></script>
		<script src="common/scripts/bootstrap.min.js"></script>
		<!--[if lt IE 9]>
  <script src="common/scripts/respond.min.js"></script>
<![endif]-->
		<script src="common/scripts/date/jquery.datetimepicker.js"></script>
		<script src="common/scripts/houtai.js"></script>

		<div id="siteInfo">
			<img src="" width="44" height="22" /> <a href="#"> </a> | <a
				href="#">Site Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact
				Us</a> | &copy;
		</div>
		<br />

		<script src="../../../common/scripts/jquery-1.11.2.min.js"></script>
		<script src="../../../common/scripts/bootstrap.min.js"></script>
		<!--[if lt IE 9]>  
  <script src="../../../common/scripts/respond.min.js"></script> 
<![endif]-->
		<script src="../../../common/scripts/date/jquery.datetimepicker.js"></script>
		<script src="../../../common/scripts/houtai.js"></script>
	</html>