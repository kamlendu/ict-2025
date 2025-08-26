<%-- 
    Document   : upper
    Created on : 26-Aug-2025, 10:59:41 am
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>
<jsp:doBody var="content"/>

<%-- any content can be specified here e.g.: --%>
<h2>
    <%
    
        String str = jspContext.getAttribute("content").toString();
        
        out.println(str.toUpperCase());
    
    %>
</h2>