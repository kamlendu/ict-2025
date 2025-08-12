<%-- 
    Document   : Beans
    Created on : 12-Aug-2025, 11:08:52 am
    Author     : kamlendu
--%>
<jsp:useBean id="emp" class="bean.Employee" scope="request"/>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:setProperty name="emp" property="empno" value="1"/>
         <jsp:setProperty name="emp" property="ename" value="Rakesh"/> 
         <jsp:setProperty name="emp" property="salary" value="5000.00"/>
        
         <jsp:forward page="Target.jsp"/> 
        
        
        <h1>Hello World!</h1>
    </body>
</html>
