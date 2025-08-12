<%-- 
    Document   : Sample
    Created on : 11-Aug-2025, 11:00:26 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" import="java.io.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%!
            int x =5;
            int y = 10;
            String fname;
            String lname;
            String fullname;
            
            
            %>
      <%-- Java Logic  Goes Here --%> 
            
            <%
                int sum = x+ y;
                
                out.println(" The Sum is "+ sum);
                
               fname = request.getParameter("fname");
               lname = request.getParameter("lname");
                fullname = fname + " "+ lname;
                %>
            
                <h2> Full Name : <%=fullname%> 
        
        
        <%@include  file="included.jsp" %>
        
        <h1>Hello World!</h1>
        
        <h1>
            Current date is <%= new java.util.Date() %>
        </h1>
        
    </body>
</html>
