<%-- 
    Document   : curdate
    Created on : 26-Aug-2025, 10:53:30 am
    Author     : kamlendu
--%>

<%@tag description="put the tag description here" import="java.util.Date" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="message"%>

<%-- any content can be specified here e.g.: --%>
<h2>
    <%
        out.println("The current date is "+ new Date().toString());
        %>
</h2>