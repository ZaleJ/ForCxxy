<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage=""%>
<%@include file="../../inc/conn.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Calendar"%>
<%@ page import="java.math.BigDecimal"%>
<!--下面%里的内容就是java语句来连接数据库，所以注释也要跟着变--><!DOCTYPE 

span PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%

   
  

try 
{
	String sel_fufen_sql = "select *  from Manager_Table";
	PreparedStatement fufen_ps = con.prepareStatement(sel_fufen_sql);
	ResultSet fufen_rs = fufen_ps.executeQuery();

	String Inter1 = "0";
	String Inter2 = "0";
	String Inter3 = "0";

	String Nation1 = "0";
	String Nation2 = "0";
	String Nation3 = "0";

	String Province1 = "0";
	String Province2 = "0";
	String Province3 = "0";

	String City1 = "0";
	String City2 = "0";
	String City3 = "0";

	String College1 = "0";
	String College2 = "0";
	String College3 = "0";
	while (fufen_rs.next()) {

		Inter1 = fufen_rs.getString("leStuAcc_Inter_1");
		Inter2 = fufen_rs.getString("leStuAcc_Inter_2");
		Inter3 = fufen_rs.getString("leStuAcc_Inter_3");
		
		Nation1 = fufen_rs.getString("leStuAcc_National_1");
		Nation2 = fufen_rs.getString("leStuAcc_National_2");
		Nation3 = fufen_rs.getString("leStuAcc_National_3");
		
		Province1 = fufen_rs.getString("leStuAcc_Provence_1");
		Province2 = fufen_rs.getString("leStuAcc_Provence_2");
		Province3 = fufen_rs.getString("leStuAcc_Provence_3");
		
		City1 = fufen_rs.getString("leStuAcc_City_1");
		City2 = fufen_rs.getString("leStuAcc_City_2");
		City3 = fufen_rs.getString("leStuAcc_City_3");
		
		College1 = fufen_rs.getString("leStuAcc_College_1");
		College2 = fufen_rs.getString("leStuAcc_College_2");
		College3 = fufen_rs.getString("leStuAcc_College_3");
	}

	
	
	
	
	
	
	
	
	
	String ID = request.getParameter("ID");
  String beizhu=request.getParameter("beizhu");

 
 %><%
// 	String xuefen =request.getParameter("xuefen");
 
 String jingsaimingcheng = request.getParameter("jingsaimingcheng");
	String jingsaijibie = request.getParameter("jingsaijibie");
//	String huojiangqingkuang = request.getParameter("huojiangqingkuang");

	String tedengjiangrenshu = request.getParameter("tedengjiangrenshu");
	String yidengjiangrenshu = request.getParameter("yidengjiangrenshu");
	String erdengjiangrenshu = request.getParameter("erdengjiangrenshu");
	String sandengjiangrenshu = request.getParameter("sandengjiangrenshu");
	String youxiujiangrenshu = request.getParameter("youxiujiangrenshu");
	
	String zhidaoxingshi = request.getParameter("zhidaoxingshi");
	String zhidaojiaoshirenshu = request.getParameter("zhidaojiaoshirenshu");
	String xuenian = request.getParameter("xuenian");
	String shenheqingkuang = request.getParameter("shenheqingkuang");
	
//Integer.parseInt(zuoyecishu)
   String ins_sql = "UPDATE  zhidaojingsai SET jingsaimingcheng=?, jingsaijibie=?, tedengjiangrenshu=?, yidengjiangrenshu=?, erdengjiangrenshu=?, "+
   "sandengjiangrenshu=?, youxiujiangrenshu=?, zhidaoxingshi=?, zhidaojiaoshirenshu=? , beizhu=?, fufen=? "+
   "WHERE ID=? ";
  
  

   ps=con.prepareStatement(ins_sql);

 ps.setString(1,jingsaimingcheng);
 ps.setString(2,jingsaijibie);
 ps.setString(3,tedengjiangrenshu);
 ps.setString(4,yidengjiangrenshu);
 
ps.setString(5,erdengjiangrenshu );
 
ps.setString(6,sandengjiangrenshu);
 ps.setString(7,youxiujiangrenshu);
 ps.setString(8,zhidaoxingshi);
 ps.setString(9,zhidaojiaoshirenshu);
 ps.setString(10,beizhu);
 
 

	double fufenLevel = 0.00;
	double tedeng = Double.parseDouble(tedengjiangrenshu);
	double yideng = Double.parseDouble(yidengjiangrenshu);
	double erdeng = Double.parseDouble(erdengjiangrenshu);
	double sandeng = Double.parseDouble(sandengjiangrenshu);
	double youxiu = Double.parseDouble(youxiujiangrenshu);
	if(jingsaijibie.equals("国际")){
		fufenLevel += tedeng*Double.parseDouble(Inter1);
		fufenLevel += yideng*Double.parseDouble(Inter1);
		fufenLevel += erdeng*Double.parseDouble(Inter2);
		fufenLevel += sandeng*Double.parseDouble(Inter3);
		fufenLevel += youxiu*Double.parseDouble(Inter3);
	}else if(jingsaijibie.equals("全国")){
		fufenLevel += tedeng*Double.parseDouble(Nation1);
		fufenLevel += yideng*Double.parseDouble(Nation1);
		fufenLevel += erdeng*Double.parseDouble(Nation2);
		fufenLevel += sandeng*Double.parseDouble(Nation3);
		fufenLevel += youxiu*Double.parseDouble(Nation3);
	}else if(jingsaijibie.equals("省级")  || jingsaijibie.equals("大区")){
		fufenLevel += tedeng*Double.parseDouble(Province1);
		fufenLevel += yideng*Double.parseDouble(Province1);
		fufenLevel += erdeng*Double.parseDouble(Province2);
		fufenLevel += sandeng*Double.parseDouble(Province3);
		fufenLevel += youxiu*Double.parseDouble(Province3);
	}else if(jingsaijibie.equals("市级")){
		fufenLevel += tedeng*Double.parseDouble(City1);
		fufenLevel += yideng*Double.parseDouble(City1);
		fufenLevel += erdeng*Double.parseDouble(City2);
		fufenLevel += sandeng*Double.parseDouble(City3);
		fufenLevel += youxiu*Double.parseDouble(City3);
	}else if(jingsaijibie.equals("院级")){
		fufenLevel += tedeng*Double.parseDouble(College1);
		fufenLevel += yideng*Double.parseDouble(College1);
		fufenLevel += erdeng*Double.parseDouble(College2);
		fufenLevel += sandeng*Double.parseDouble(College3);
		fufenLevel += youxiu*Double.parseDouble(College3);
	}
	
	if(Integer.parseInt(zhidaojiaoshirenshu)>1){
			double M = Double.parseDouble(zhidaojiaoshirenshu);
		if("项目负责人".equals(zhidaoxingshi) || "主要贡献者".equals(zhidaoxingshi)){
			fufenLevel = 2.00/M*fufenLevel;
		}else{
			fufenLevel = 1.00/M*fufenLevel;
		}
	}
		ps.setString(11, Double.toString(fufenLevel));
 
 
 
 
 ps.setString(12,ID);

   
   	ps.executeUpdate();
   	if(ps.executeUpdate()!=0){
   	%>
   	
   	
	<span style='color:green'>修改成功</span>
	

   	<%
   	
   
   	
    }
  	
%>

<meta http-equiv='refresh'  content='1;../../index/JSP2.0/指导竞赛.jsp'/>
<%
} 

//以下代码捕捉异常
catch (Exception e) 
{
   System.out.println(e.getMessage());
   
} 
    
//以下代码是用来关掉数据库的是必须要写的，照写OK
finally 
{

  
   if (ps != null) 
   {
    try {ps.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
   if (con != null) 
   {
    try {con.close();} 
    catch (Exception e) {e.printStackTrace();}
   }
}
%>

