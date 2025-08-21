<%-- 
    Document   : Scopes
    Created on : 21-Aug-2025, 10:51:38 am
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
        <h2>
    <%    
       pageContext.setAttribute("name1", "Suresh");
       request.setAttribute("name1", "Rakesh");
       session.setAttribute("name1", "Arvind");
       application.setAttribute("name1", "Kalpna");
        
        
     %>   
     <br/> The page Value is ${pageScope.name1}
     <br/> The request Value is ${requestScope.name1}
     <br/> The page Value is ${sessionScope.name1}
     <br/> The page Value is ${applicationScope.name1}
     
     
     
        
        </h2>  
        <h1>Hello World!</h1>
    </body>
</html>
