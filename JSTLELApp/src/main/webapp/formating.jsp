<%-- 
    Document   : formating
    Created on : 22-Aug-2025, 11:04:17 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setAttribute("curdate", new java.util.Date());
            %>
            <fmt:setLocale value="en_US"/>
         
            <fmt:setBundle basename="myvalues" var="val"/>
            
            <fmt:message key="welcome" bundle="${val}"/>    
            
       <br/>     
             <fmt:setLocale value="hi_IN"/>
         
            <fmt:setBundle basename="myvalues" var="val"/>
            
            <fmt:message key="welcome" bundle="${val}"/>    
            
       <br/> 
            The date is ${curdate}

<br/>            <fmt:formatDate value="${curdate}" type="date"/> 
<br/>            <fmt:formatDate value="${curdate}" type="time"/> 
<br/>            <fmt:formatDate value="${curdate}" type="both"/> 
<br/>            <fmt:formatDate pattern="dd-MMM-yyyy hh:mm:ss" value="${curdate}" /> 

<br/>            <c:set var="num" value="3219.456712"/> 
<br/>            <fmt:formatNumber maxFractionDigits="2" value="${num}"/> 
<br/>            <fmt:formatNumber maxIntegerDigits="2" value="${num}"/> 
<br/>            <fmt:formatNumber type="currency" currencySymbol="$" value="${num}"/> 

            
            
        
        
        <h1>Hello World!</h1>
    </body>
</html>
