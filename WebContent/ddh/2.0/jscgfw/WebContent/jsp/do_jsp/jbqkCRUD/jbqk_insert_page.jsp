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
		<form name="jbqk_insert"  action="jbqk_insert_back.jsp" method="get">
			<table width="400">
					<tr><td align="left">姓名：</td><td align="left"><input type="text" name="xingming"></td></tr>
					<tr><td align="left">性别：</td><td align="left"><input type="text" name="xingbie"></td></tr>
					<tr><td align="left">出生年月：</td><td align="left"><input type="text" name="chushengnianyue"></td></tr>
					<tr><td align="left">学历：</td><td align="left"><input type="text" name="xueli"></td></tr>
					<tr><td align="left">学位：</td><td align="left"><input type="text" name="xuewei"></td></tr>
					<tr><td align="left">职称：</td><td align="left"><input type="text" name="zhicheng"></td></tr>
					<tr><td align="left">职务：</td><td align="left"><input type="text" name="zhiwu"></td></tr>
					<tr><td align="left">政治面貌：</td><td align="left"><input type="text" name="zhengzhimianmao"></td></tr>
					<tr><td align="left">签订合同情况：</td><td align="left"><input type="text" name="qiandinghetong"></td></tr>
					<tr><td align="left">工号：</td><td align="left"><input type="text" name="gonghao"></td></tr>
					<tr><td align="left">所在系部：</td><td align="left"><input type="text" name="suozaixibu"></td></tr>
					<tr><td align="left">进校时间：</td><td align="left"><input type="text" name="jinxiaoshijian"></td></tr>
					<tr><td align="left">高校工龄：</td><td align="left"><input type="text" name="gaoxiaogongling"></td></tr>
					<tr><td align="left">本科毕业学校：</td><td align="left"><input type="text" name="benkebiyexuexiao"></td></tr>
					<tr><td align="left">获得最高学历的院校或机构：</td><td align="left"><input type="text" name="huodezuigaoxuelideyuanxiaohuojigou"></td></tr>
					<tr><td align="left">获得最高学位的院校或机构：</td><td align="left"><input type="text" name="huodezuigaoxueweideyuanxiaohuojigou"></td></tr>
					<tr><td align="left">工程实践经历：</td><td align="left"><input type="text" name="gongchengshijianjingli"></td></tr>
					<tr><td align="left">备注：</td><td align="left"><input type="text" name="beizhu"></td></tr>
					
			</table>
			<table width="400"><tr><input type="submit" value="插入"></td></tr></table>
		</form>

</body>
</html>