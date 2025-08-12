<%-- 
    Document   : second
    Created on : 12-Aug-2025, 10:51:36 am
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
        <h1>I am the Second Page</h1>
        
        <h2>The username is <%= request.getParameter("user") %></h2>
    </body>
</html>
