<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="../2col_leftNav.css" type="text/css" />


</head>
<!-- The structure of this file is exactly the same as 2col_rightNav.html;
     the only difference between the two is the stylesheet they use -->
<body>
	<div id="masthead">
		<h1 id="siteName">教师信息</h1>
	</div>
	<!-- end masthead -->
	<div id="content">
		<h2 id="pageName">教学工作</h2>
		<div class="feature">
			<h3>课堂教学</h3>

			<p>

				<form name="ketangjiaoxue_insert"
					action="ketangjiaoxue_insert_back.jsp" method="post">
					<table width="100%" height="50%" border="0">
						<tr>
							<td width="360">课程名称： <input type='text'
								name="kechengmingcheng" size="10" />
							</td>
						</tr>
						<tr>
							<td colspan="6">课程性质： <input type="radio"
								name="kechengxingzhi" value="通识基础">通识基础&nbsp; <input
									type="radio" name="kechengxingzhi" value="专业基础">专业基础&nbsp;
										<input type="radio" name="kechengxingzhi" value="专业主干">专业主干&nbsp;
											<input type="radio" name="kechengxingzhi" value="专业方向">专业方向&nbsp;
												<input type="radio" name="kechengxingzhi" value="素质类选修">素质类选修&nbsp;
													<input type="radio" name="kechengxingzhi" value="其他">其他<input
														type='text' name="others" size="5" /></td>
						</tr>


						<tr>
							<td>授课形式： <input type="radio" name="shoukexingshi" value="讲授为主">讲授为主&nbsp;
									<input type="radio" name="shoukexingshi" value="理论和实践对半">理论和实践对半&nbsp;
										<input type="radio" name="shoukexingshi" value="实践为主">实践为主&nbsp;
									</td>
						</tr>
						<tr>
							<td colspan="6">是否： <input type="radio" name="shifou"
								value="开新课">开新课&nbsp; <input type="radio"
									name="shifou" value="新开课">新开课&nbsp; <input
										type="radio" name="shifou" value="整合课">整合课&nbsp;
									</td>
						</tr>


						<tr>
							<td>学分： <input type='text' name="xuefen" size="5" />
							</td>
						</tr>
						<tr>
							<td width="184">学时： <input type='text' name="xueshi" size="5" />
							</td>
						</tr>

						<tr>
							<td width="175">授课班人数： <input type='text' name="shoukebangeshu"
								size="5" />
							</td>
						</tr>

						<tr>
							<td width="166">平行班个数： <input type='text' name="pingxingbangeshu"
								size="5" />
							</td>
						</tr>


						<tr>
							<td width="199">作业次数： <input type='text' name="zuoyecishu"
								size="5" />
							</td>
						</tr>

						<tr>

							<td width="173">批改次数： <input type='text' name="pigaicishu"
								size="5" />
							</td>
						</tr>

						<tr>
							<td width="171">答疑次数： <input type='text' name="dayicishu"
								size="5" />
							</td>
						</tr>


					</table>
					<input type="submit" value="提交更新" name="button1"
					> <input
					type="button" value="取消" name="button1"
					onclick="location.href='../../index/jsp/ketangjiaoxue.jsp'">
				</form>

				
			</p>
		</div>
	</div>
	<!--end content -->
	
	<div id="siteInfo">
		<img src="" width="44" height="22" /> <a href="#">About Us</a> | <a
			href="#">Site Map</a> | <a href="#">Privacy Policy</a> | <a href="#">Contact
			Us</a> | &copy;2003 Company Name
	</div>
	<br />
</body>
</html>
