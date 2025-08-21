<%-- 
    Document   : Welcome
    Created on : 19-Aug-2025, 11:05:03 am
    Author     : kamlendu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <h2> Full Name :  ${param.first} &nbsp;&nbsp; ${param.last} 
            
            <br/><!-- comment -->
            
            <c:forEach var="q" items="${paramValues.qual}">
                <br> ${q}
            </c:forEach>
        
        </h2>
        
        <c:set var="x" value="70"/>
        <c:set var="y" value="60"/>
        
        <c:out value="The value of x is ${x}"/>
        
        <br/> <h2> The sum of ${x} and ${y}  is ${x+y}
            
            <br>
            <c:forEach var="i" begin="1" end="10">
                <br/> The square of ${i}  is ${i*i}
                
            </c:forEach>
                
   <br/>
   
   <c:if test="${x>50}">
       <h3> X is greater than 50
   </c:if>
           <c:if test="${x<50}">
       <h3> X is less than 50
   </c:if>
   <c:if test="${x eq 50}">
       <h3> X is equal to 50
   </c:if>
                
           <c:choose>
               
               <c:when test="${x>50}">
                   <h3> Switch Case - X is greater than 50
               </c:when>
               
              <c:when test="${x<50}">
                   <h3> Switch Case - X is less than 50
               </c:when> 
                       <c:otherwise>
                           <h3>    Switch Case - X is equal to 50     </h3>
                       </c:otherwise>  
               
           </c:choose>               
                
                
            
        
        <br/>
        <h1>Hello World!</h1>
    </body>
</html>
