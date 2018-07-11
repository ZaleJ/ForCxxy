

<%@ page contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>  
    <html>  
    <head>  
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%


if( session.getAttribute("gonghao")==null) {


 %>
 <script type='text/javascript'>
            alert('请先登陆');
            location.href = '../login/login.jsp';
        </script>
 
<% }%>