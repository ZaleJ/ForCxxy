

<%@ page contentType="text/html; charset=UTF-8" %>
    <!DOCTYPE html>  
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
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%


if( session.getAttribute("gonghao")==null) {


 %>
 <script type='text/javascript'>
            alert('请先登陆');
            location.href = '../login/login.jsp';
        </script>
 
<% }%>