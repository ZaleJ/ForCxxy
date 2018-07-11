<%@ page contentType="text/html;charset=UTF-8" language="java"
	errorPage=""%>
	
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变-->
<%@include file="../inc/conn.jsp" %>
<%
	
	

	try {
		request.setCharacterEncoding("utf-8");
		
		


		String ketimingcheng = request.getParameter("ketimingcheng");
		String ketilaiyuan = request.getParameter("ketilaiyuan");
		String renwujuese = request.getParameter("renwujuese");
		String ketixingzhi = request.getParameter("ketixingzhi");
		String xiangmuzhuangkuang = request.getParameter("xiangmuzhuangkuang");
		String lixiangshijian = request.getParameter("lixiangshijian_y")+"-"+request.getParameter("lixiangshijian_m")+"-"+request.getParameter("lixiangshijian_d");
		String jietishijian = request.getParameter("jietishijian_y")+"-"+request.getParameter("jietishijian_m")+"-"+request.getParameter("jietishijian_d");
		String xiangmuzhiliang = request.getParameter("xiangmuzhiliang");
		String beizhu = request.getParameter("beizhu");
		String xuenian = request.getParameter("xuenian");
		  DateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
		String ins_sql = "INSERT INTO chengdanjiaoyanjiaogaiketi VALUES(?,?,?,?,?,?,?,?,?,?)";
	  java.util.Date ustime = format.parse(lixiangshijian);
      java.util.Date ustime2 = format.parse(jietishijian);
  java.sql.Date stime = new java.sql.Date(ustime.getTime());
   java.sql.Date stime2 = new java.sql.Date(ustime2.getTime());
	

	

	ps = con.prepareStatement(ins_sql);

ps.setString(1, ketimingcheng);
ps.setString(2, ketilaiyuan);
ps.setString(3, renwujuese);
ps.setString(4, ketixingzhi);
ps.setString(5, xiangmuzhuangkuang);
ps.setDate(6, stime);
ps.setDate(7, stime2);
ps.setString(8, xiangmuzhiliang);
ps.setString(9, beizhu);
ps.setString(10, xuenian);

		ps.executeUpdate();

		

	
 %>
 
   <meta http-equiv='refresh'  content='1;../index/jsp/承担教研教改课题.jsp'/>

 
 <%  }  
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

