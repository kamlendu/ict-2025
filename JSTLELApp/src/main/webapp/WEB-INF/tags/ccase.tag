<%-- 
    Document   : ccase
    Created on : 26-Aug-2025, 11:05:47 am
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="type"%>
<jsp:doBody var="content"/>
<%-- any content can be specified here e.g.: --%>
<h2>
    <%
     String str = jspContext.getAttribute("content").toString();
     
     String atr = jspContext.getAttribute("type").toString();
     
     if(atr.equals("upper"))
     out.println(str.toUpperCase());
     else if(atr.equals("lower"))
     out.println(str.toLowerCase());
     else
     out.println("Error");
    
    
    %>
</h2>