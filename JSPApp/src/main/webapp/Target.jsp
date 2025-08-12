<%-- 
    Document   : Target
    Created on : 12-Aug-2025, 11:12:00 am
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
        <h1>
            <br/> Empno = <%=emp.getEmpno()%>
            <br/> Ename = <%=emp.getEname()%>
            <br/> Salary = <%=emp.getSalary()%>
            
            
            
            
            
        </h1>
        
        
    </body>
</html>
