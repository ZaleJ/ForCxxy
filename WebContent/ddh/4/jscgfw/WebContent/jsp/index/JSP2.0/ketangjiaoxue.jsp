
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
	
	function addForm(){
		
		// ----首先通过ID获取到我们需要的增加记录的form表单
		var addForm = document.getElementById("addForm");
		
		// ----通过id获取到我们需要判断是否勾选的checkbox
		
			// 课程性质相关的5个可选框
		var tongshijichu = document.getElementById("tongshijichu");
		var zhuanyejichu = document.getElementById("zhuanyejichu");
		var zhuanyezhugan = document.getElementById("zhuanyezhugan");
		var suzhileixuanxiuke = document.getElementById("suzhileixuanxiuke");
		var zhuanyefangxiang = document.getElementById("zhuanyefangxiang");
		
			// 授课形式相关的3个可选框
		var jiangshouweizhu = document.getElementById("jiangshouweizhu");
		var lilunheshijianduiban = document.getElementById("lilunheshijianduiban");
		var shijianweizhu = document.getElementById("shijianweizhu");
			// 是否的三个多选框
		var kaixinke = document.getElementById("kaixinke");
		var xinkaike = document.getElementById("xinkaike");
		var zhengheke = document.getElementById("zhengheke");
		
		
		
		//然后将勾选的checkbox中的value放入一个字符串中
			// 课程性质相关的字符串拼接
		var kechengxingzhi = "";
		if(tongshijichu.checked){
			kechengxingzhi+=tongshijichu.value;
		}
		if(zhuanyejichu.checked){
			kechengxingzhi+="  "+zhuanyejichu.value;
		}
		if(zhuanyezhugan.checked){
			kechengxingzhi+="  "+zhuanyezhugan.value;
		}
		if(suzhileixuanxiuke.checked){
			kechengxingzhi+="  "+suzhileixuanxiuke.value;
		}
		if(zhuanyefangxiang.checked){
			kechengxingzhi+="  "+zhuanyefangxiang.value;
		}
		
			// 授课形式相关的字符串拼接
		var shoukexingshi = "";
		if(jiangshouweizhu.checked){
			shoukexingshi+=jiangshouweizhu.value;
		}
		if(lilunheshijianduiban.checked){
			shoukexingshi+="  "+lilunheshijianduiban.value;
		}
		if(shijianweizhu.checked){
			shoukexingshi+="  "+shijianweizhu.value;
		}
		
		
		var shifou = "";
		if(kaixinke.checked){
			shifou+=kaixinke.value;
		}
		if(xinkaike.checked){
			shifou+="  "+xinkaike.value;
		}
		if(zhengheke.checked){
			shifou+="  "+zhengheke.value;
		}
		
		// 将已经勾选的checkbox中的内容放入隐藏的input中的value，然后将这个表单提交给后台服务进行处理
		document.getElementById("kechengxingzhi").value = kechengxingzhi;
		document.getElementById("shoukexingshi").value = shoukexingshi;
		document.getElementById("shifou").value = shifou;
		addForm.submit();
	}
</script>
</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
<body>
	<div class="manage_right cl">
		<h1 class="sub_title">课堂教学</h1>
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

<!-- 											<th class="text-center">课程ID</th> -->
											<th class="text-center">课程名称</th>
											<th class="text-center">课程性质</th>
											<th class="text-center">授课形式</th>
											<th class="text-center">是否</th>
											<th class="text-center">学分</th>
											<th class="text-center">学时</th>
											<th class="text-center">授课班个数</th>
											<th class="text-center">平行班个数</th>
											<th class="text-center">作业次数</th>
											<th class="text-center">批改次数</th>
											<th class="text-center">答疑次数</th>
											<th class="text-center">备注</th>
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
											String $sql = "SELECT count(*)  FROM ketangjiaoxue WHERE gonghao=? ";
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

																String sel_co_sql = "SELECT top "+ $pagesize+" *  FROM ketangjiaoxue WHERE gonghao=?";

// 											String sel_ketang_sql = "SELECT top " + $pagesize + " *  FROM ketangjiaoxue WHERE kechengmingcheng=? ";

											if (time2 == null) {
																    co_ps = con.prepareStatement(sel_co_sql);
																	co_ps.setString(1, Gonghao);
											}

											else {
												int timenum = Integer.parseInt(time2) + 1;
												ss = "'" + time2 + "-" + timenum + "学年'";//2017-2018学年

												// 				  String sel_co_sql2 = "SELECT top "+ $pagesize+" kechengmingcheng  FROM co_jbqk_ketangjiaoxue WHERE gonghao="+Gonghao+" and xuenian="+ss+" and ID NOT IN(select top "+$jump+" ID FROM co_jbqk_ketangjiaoxue WHERE gonghao="+Gonghao+")  ";
												String sel_co_sql3 = "SELECT *  FROM ketangjiaoxue WHERE gonghao='" + Gonghao
														+ "' and   xuenian=" + ss + "  ";
												co_ps = con.prepareStatement(sel_co_sql3);

											}
											co_rs = co_ps.executeQuery();

											while (co_rs.next()) {
												String ID = co_rs.getString("ID");
												String kechengmingcheng = co_rs.getString("kechengmingcheng");
												//String xuenian=co_rs.getString("xuenian");
// 												ketang_ps = con.prepareStatement(sel_ketang_sql);
// 												ketang_ps.setString(1, kechengmingcheng);
// 												ketang_rs = ketang_ps.executeQuery();
// 												while (ketang_rs.next()) {

													String kechengxingzhi = co_rs.getString("kechengxingzhi");
													String shoukexingshi = co_rs.getString("shoukexingshi");
													String shifou = co_rs.getString("shifou");
													String xuefen = co_rs.getString("xuefen");
													String xueshi = co_rs.getString("xueshi");
													String shoukebangeshu = co_rs.getString("shoukebangeshu");
													String pingxingbangeshu = co_rs.getString("pingxingbangeshu");
													String zuoyecishu = co_rs.getString("zuoyecishu");
													String pigaicishu = co_rs.getString("pigaicishu");
													String dayicishu = co_rs.getString("dayicishu");
													String beizhu = co_rs.getString("beizhu");
													String xuenian = co_rs.getString("xuenian");
													String shenheqingkuang = co_rs.getString("shenheqingkuang");
									%>
									<form id='ketang_ID' method='post'>
										<tbody>
											<tr>
<%-- 											<td class="text-center"><%=ID%></td> --%>
												<td class="text-center"><%=kechengmingcheng%></td>
												<td class="text-center"><%=kechengxingzhi%></td>

												<td class="text-center"><%=shoukexingshi%></td>

												<td class="text-center"><%=shifou%></td>
												<td class="text-center"><%=xuefen%></td>
												<td class="text-center"><%=xueshi%></td>
												<td class="text-center"><%=shoukebangeshu%></td>
												<td class="text-center"><%=pingxingbangeshu%></td>
												<td class="text-center"><%=zuoyecishu%></td>
												<td class="text-center"><%=pigaicishu%></td>
												<td class="text-center"><%=dayicishu%></td>
												<td class="text-center"><%=beizhu%></td>
												<td class="text-center"><%=xuenian%></td>
												<td class="text-center"><%=shenheqingkuang%></td>
												<td class="text-center"><a
													href="../../do_jsp/ketangjiaoxueOP/ketangjiaoxue_update_page.jsp?p=<%=ID%>">更新</a>||<a
													class="del"
													href="../../do_jsp/ketangjiaoxueOP/do_delet_ketangjiaoxue.jsp?p=<%=ID%>">删除</a></td>


											</tr>
										</tbody>
									</form>


									<%
										

											}
									%>
























									<!--翻页-->
									<form action="../../do_jsp/ketangjiaoxueOP/do_inset_ketangjiaoxue.jsp"
										method="get" id="addForm">
										<tbody id="yingsheng" style="display: none">

											<tr>
<!-- 												<td class="text-center">系统生成课程ID</td> -->
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="kechengmingcheng" id = "kechengmingcheng"></td>
<!-- 												<td class="text-center"><input -->
<!-- 													style="border: 0; background-color: #F9F9F9" type="text" -->
<!-- 													size=3 name="kechengxingzhi"></td> -->
												<td>
													<input type="hidden" name="kechengxingzhi" id="kechengxingzhi"></input>
													<input type="checkbox" id="tongshijichu" value="通识基础" />通识基础
													<br/>
													<input type="checkbox" id="zhuanyejichu" value="专业基础" />专业基础
													<br/>
													<input type="checkbox" id="zhuanyezhugan" value="专业主干" />专业主干
													<br/>
													<input type="checkbox" id="zhuanyefangxiang" value="专业方向" />专业方向
													<br/>
													<input type="checkbox" id="suzhileixuanxiuke" value="素质类选修课" />素质类选修课
												</td>


												<td class="text-center" align="left">
												<input type="hidden" name="shoukexingshi" id="shoukexingshi"></input>
													<input type="checkbox" id="jiangshouweizhu" value="讲授为主" />讲授为主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<br/>
													<input type="checkbox" id="lilunheshijianduiban" value="理论和实践对半" />理论和实践对半
													<br/>
													<input type="checkbox" id="shijianweizhu" value="实践为主" />实践为主&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													<br/>
													
													
													</td>

												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="hidden"
													size=6 name="shifou" id="shifou">
													<input type="checkbox" id="kaixinke" value="开新课" /><br/>开新课
													<br/>
													<input type="checkbox" id="xinkaike" value="新开课" /><br/>新开课
													<br/>
													<input type="checkbox" id="zhengheke" value="整合课" /><br/>整合课
													
													</td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="xuefen"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=1 name="xueshi"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=1 name="shoukebangeshu"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=1 name="pingxingbangeshu"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=1 name="zuoyecishu"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="pigaicishu"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="dayicishu"></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="beizhu"></td>

												<td class="text-center"><select id="sel3" name='time2'></td>
												<td class="text-center"><input
													style="border: 0; background-color: #F9F9F9" type="text"
													size=3 name="jietishijian_y"></td>
												<!-- 审核情况 -->
												<td class="text-center"><input type="button"
													value="确认添加" class="btn btn-primary login__input pass" onclick="addForm()"></td>

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
						<li><a href="ketangjiaoxue.jsp?p=<%=$page - 1%>">«</a></li>
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
							href="ketangjiaoxue.jsp?p=<%=i%>"><%=i%></a></li>
						<%
							}
								}
						%>
						<%
							if ($page < $totalPage) {
						%>

						<li><a href="ketangjiaoxue.jsp?p=<%=$page + 1%>">»</a></li>



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
