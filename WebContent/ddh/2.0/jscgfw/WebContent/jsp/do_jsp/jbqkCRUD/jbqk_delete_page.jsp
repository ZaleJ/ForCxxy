<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><style type="text/css">
table.imagetable {
    font-family: verdana,arial,sans-serif;
    font-size:11px;
    color:#333333;
    border-width: 1px;
    border-color: #999999;
    border-collapse: collapse;
}
table.imagetable th {
    background:#b5cfd2 url('cell-blue.jpg');
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
table.imagetable td {
    background:#dcddc0 url('cell-grey.jpg');
    border-width: 1px;
    padding: 8px;
    border-style: solid;
    border-color: #999999;
}
</style>
<meta charset="UTF-8">
<title>基本情况录入</title>
</head>
<body>
		<form name="jbqk_delete"  action="jbqk_delete_back.jsp" method="get">
			<table width="400">
					<tr><td align="right">工号：</td><td align="left"><input type="text" name="gonghao"></td></tr>
			</table>
			<table width="400"><tr><td><input type="submit" value="删除"></td></tr></table>
		</form>

</body>
</html>