
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
<link rel="stylesheet" type="text/css" href="../../../font/font.css">
<link href="../../css/../amazeui.css" rel="stylesheet">
<link href="../../css/../折叠面板.css" rel="stylesheet">
<script type="text/javascript" src="../../../js/jquery-1.11.2.min.js"></script>
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
		<h1 class="sub_title">指导大创</h1>
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

											<th class="text-center">项目ID</th>
											<th class="text-center">项目名称</th>
											<th class="text-center">项目级别</th>
											<th class="text-center">选题来源</th>
											<th class="text-center">项目状况</th>
											<th class="text-center">结题等级</th>
											<th class="text-center">学生年级</th>
											<th class="text-center">学生人数</th>
											<th class="text-center">项目影响</th>
											<td class="text-center">备注</td>
											<td class="text-center">指导人数</td>
											<td class="text-center">指导等级</td>
											<td class="text-center">学年</td>
											<th class="text-center">审核情况</th>
											<th class="text-center">赋分分值</th>
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

										int pa = 4;
										String paa = null;
										paa = request.getParameter("pa");
										if (paa != null) {
											pa = Integer.parseInt(request.getParameter("pa"));
										}
										int $pagesize = pa; //每页显示8条主录
										int $jump = ($page - 1) * $pagesize;
										//int pagecount=(int)Math.ceil((float)totaluser/(float)pagesize);

										try {
											String $sql = "SELECT count(*)  FROM zhidaodachuang WHERE gonghao=? ";
											int $totalNumber = 6;
											co_ps2 = con.prepareStatement($sql);
											String Gonghao = (String) session.getAttribute("gonghao");
											String Inkey = (String) session.getAttribute("inkey");
											co_ps2.setString(1, Gonghao);
											co_rs2 = co_ps2.executeQuery();
											if (co_rs2.next()) {
												$totalNumber = co_rs2.getInt(1); //总记录数

											}

											int $totalPage = (int) Math.ceil((float) $totalNumber / (float) $pagesize); //总页数
											if (request.getParameter("p") != null) {
												$page = Integer.parseInt(request.getParameter("p"));
											}

																String sel_co_sql = "SELECT top "+ $pagesize+" *  FROM zhidaodachuang WHERE gonghao=?";

// 											String sel_ketang_sql = "SELECT top " + $pagesize + " *  FROM zhidaodachuang WHERE kechengmingcheng=? ";

											if (time2 == null) {
																    co_ps = con.prepareStatement(sel_co_sql);
																	co_ps.setString(1, Gonghao);
											}

											else {
												int timenum = Integer.parseInt(time2) + 1;
												ss = "'" + time2 + "-" + timenum + "学年'";//2017-2018学年

												// 				  String sel_co_sql2 = "SELECT top "+ $pagesize+" kechengmingcheng  FROM co_jbqk_zhidaodachuang WHERE gonghao="+Gonghao+" and xuenian="+ss+" and ID NOT IN(select top "+$jump+" ID FROM co_jbqk_zhidaodachuang WHERE gonghao="+Gonghao+")  ";
												String sel_co_sql3 = "SELECT *  FROM zhidaodachuang WHERE gonghao='" + Gonghao
														+ "' and   xuenian=" + ss + "  ";
												co_ps = con.prepareStatement(sel_co_sql3);

											}
											co_rs = co_ps.executeQuery();

											while (co_rs.next()) {
												String ID = co_rs.getString("ID");
												String xiangmumingcheng = co_rs.getString("xiangmumingcheng");
	
												String xiangmujibie = co_rs.getString("xiangmujibie");
												String xuantilaiyuan = co_rs.getString("xuantilaiyuan");
												String xiangmuzhuangkuang = co_rs.getString("xiangmuzhuangkuang");
												String jietidengji = co_rs.getString("jietidengji");
												String xueshengnianji = co_rs.getString("xueshengnianji");
												String xiangmuyingxiang = co_rs.getString("xiangmuyingxiang");
												String beizhu = co_rs.getString("beizhu");
												String zhidaojiaoshirenshu = co_rs.getString("zhidaojiaoshirenshu");
												String zhidaojiaoshijibie = co_rs.getString("zhidaojiaoshijibie");
												String xueshengrenshu = co_rs.getString("xueshengrenshu");
												String xuenian = co_rs.getString("xuenian");
												String fufen = co_rs.getString("fufen");
												String shenheqingkuang = co_rs.getString("shenheqingkuang");																			
									%>
									<form id='ketang_ID' method='post'>
										<tbody>
											<tr>
											<td class="text-center"><%=ID%></td>
												<td class="text-center"><%=xiangmumingcheng%></td>
												<td class="text-center"><%=xiangmujibie%></td>
												<td class="text-center"><%=xuantilaiyuan%></td>

												<td class="text-center"><%=xiangmuzhuangkuang%></td>

												<td class="text-center"><%=jietidengji%></td>

												<td class="text-center"><%=xueshengnianji%></td>
												<td class="text-center"><%=xueshengrenshu%></td>
												<td class="text-center"><%=xiangmuyingxiang%></td>
												<td class="text-center"><%=beizhu%></td>
												<td class="text-center"><%=zhidaojiaoshirenshu%></td>
												<td class="text-center"><%=zhidaojiaoshijibie%></td>
												<td class="text-center"><%=xuenian%></td>
												<td class="text-center"><%=shenheqingkuang%></td>
												<td class="text-center"><%=fufen%></td>
												<td class="text-center"><nter"> <a
														href="../../do_jsp/zhidaodachuangOP/zhidaodachuang_update_page.jsp?p=<%=ID%>">更新</a>||<a
														class="del"
														href="../../do_jsp/zhidaodachuangOP/do_delet_zhidaodachuang.jsp?p=<%=ID%>">删除</a></td>



											</tr>
										</tbody>
									</form>


									<%
										

											}
									%>
























									<!--翻页-->
									<form action="../../do_jsp/zhidaodachuangOP/do_insert_指导大创.jsp"
										method="get">
										<tbody id="yingsheng" style="display: none">

											<tr>
												<td class="text-center">不可填</td>
																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="xiangmumingcheng"></td>
																				<!-- 																				<td class="text-center"><input -->
																				<!-- 																					style="border: 0; background-color: #F9F9F9" -->
																				<!-- 																					type="text" size=3 name="xiangmujibie"></td> -->
																				<td class="text-center"><select
																					name='xiangmujibie'>
																						<option value="省级">省级</option>
																						<option value="院级">院级</option>
																				</select></td>

																				<!-- 																				<td class="text-center"><input -->
																				<!-- 																					style="border: 0; background-color: #F9F9F9" -->
																				<!-- 																					type="text" size=3 name="xuantilaiyuan"></td> -->
																				<td class="text-center"><select
																					name='xuantilaiyuan'>
																						<option value="教师">教师</option>
																						<option value="学生">学生</option>
																				</select></td>

																				<!-- 																				<td class="text-center"><input -->
																				<!-- 																					style="border: 0; background-color: #F9F9F9" -->
																				<!-- 																					type="text" size=3 name="xiangmuzhuangkuang"></td> -->
																				<td class="text-center"><select
																					name='xiangmuzhuangkuang'>
																						<option value="在研">在研</option>
																						<option value="结题">结题</option>
																				</select></td>
																				<!-- 																				<td class="text-center"><input -->
																				<!-- 																					style="border: 0; background-color: #F9F9F9" -->
																				<!-- 																					type="text" size=3 name="jietidengji"></td> -->
																				<td class="text-center"><select
																					name='jietidengji'>
																						<option value="优秀">优秀</option>
																						<option value="良好">良好</option>
																						<option value="中等">中等</option>
																						<option value="通过">通过</option>
																						<option value="未通过">未通过</option>
																				</select></td>

																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="xueshengnianji"></td>
																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="xueshengrenshu"></td>
																				<!-- 																				<td class="text-center"><input -->
																				<!-- 																					style="border: 0; background-color: #F9F9F9" -->
																				<!-- 																					type="text" size=3 name="xiangmuyingxiang"></td> -->
																				<td class="text-center"><select
																					name='xiangmuyingxiang'>
																						<option value="院报">院报</option>
																						<option value="媒体">媒体</option>
																				</select></td>


																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="beizhu"></td>

																				<td class="text-center"><select
																					name='zhidaojiaoshirenshu'>
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
																				</select></td>


																				<td class="text-center"><select
																					name='zhidaojiaoshijibie'>
																						<option value="项目负责人">项目负责人</option>
																						<option value="主要贡献者">主要贡献者</option>
																						<option value="参与者">参与者</option>
																				</select></td>




																				<td class="text-center"><select id="sel3"
																					name='time2'></td>
																				<td class="text-center"><input
																					style="border: 0; background-color: #F9F9F9"
																					type="text" size=3 name="jietishijian_y"></td>

																				<!-- 																					赋分分值 -->
																				<td class="text-center"></td>
																				<!-- 审核情况 -->
																				<td class="text-center"><input type="submit"
																					value="确认添加"
																					class="btn btn-primary login__input pass"></td>


											</tr>

										</tbody>

									</form>
									<tbody>
										<td colspan='16' class="text-center"><input
											class="btn btn-primary" type='button' name='user'
											onclick="select_all()" value="+" /></td>
									</tbody>

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
						<li><a href="指导大创.jsp?p=<%=$page - 1%>">«</a></li>
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
							href="指导大创.jsp?p=<%=i%>"><%=i%></a></li>
						<%
							}
								}
						%>
						<%
							if ($page < $totalPage) {
						%>

						<li><a href="指导大创.jsp?p=<%=$page + 1%>">»</a></li>



						<%
							} else {
						%>
						<li class="disabled"><a class='del' href="javascript:;">»</a></li>
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
		<div id="siteInfo">
			<img src="" width="44" height="22" /> <a href="#">About Us</a> | <a
				href="#">Site Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact
				Us</a> | &copy;2003 Company Name
		</div>




















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




		<%=ss%>
		<br />
</body>
</html>
