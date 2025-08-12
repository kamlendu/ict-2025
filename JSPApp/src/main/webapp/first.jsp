<%-- 
    Document   : first
    Created on : 12-Aug-2025, 10:51:20 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>I am the first page</h1>
        
       
        
         <jsp:forward page="second.jsp">
             <jsp:param name="user" value="Suresh"/>            
         </jsp:forward>
            
        
        
        
    </body>
</html>
