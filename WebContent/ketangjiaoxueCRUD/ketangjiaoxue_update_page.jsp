<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>课堂教学更新</title>
</head>
<body>
		<form name="jbqk_insert"  action="ketangjiaoxue_insert_back.jsp" method="get">
			<table width="400">
					
					<tr><td align="right">课堂名称：</td><td align="left"><input type="text" name="ketangmingcheng"></td></tr>
					<tr><td align="right">课程性质：</td><td align="left"><input type="text" name="kechengxingzhi"></td></tr>
					<tr><td align="right">授课形式：</td><td align="left"><input type="text" name="shoukexingshi"></td></tr>
					<tr><td align="right">是否：</td><td align="left"><input type="text" name="shifou"></td></tr>
					<tr><td align="right">学分：</td><td align="left"><input type="text" name="xuefen"></td></tr>
					<tr><td align="right">学时：</td><td align="left"><input type="text" name="xueshi"></td></tr>
					<tr><td align="right">授课班个数：</td><td align="left"><input type="text" name="shoukebangeshu"></td></tr>
					<tr><td align="right">平行班个数：</td><td align="left"><input type="text" name="pingxingbangeshu"></td></tr>
					<tr><td align="right">作业次数：</td><td align="left"><input type="text" name="zuoyecishu"></td></tr>
					<tr><td align="right">批改次数：</td><td align="left"><input type="text" name="pigaicishu"></td></tr>
					<tr><td align="right">答疑次数：</td><td align="left"><input type="text" name="dayicishu"></td></tr>
					<tr><td align="right">备注：</td><td align="left"><input type="text" name="beizhu"></td></tr>
			</table>
			<table width="400"><tr><input type="submit" value="插入"></td></tr></table>
		</form>

</body>
</html>