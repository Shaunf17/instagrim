<%-- 
    Document   : logout
    Created on : 17-Nov-2016, 14:13:15
    Author     : shaunfalconer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%@include file="head.jsp" %>
    
    <body>
        
        <%@include file="header.jsp" %>
        
        <%
            //Sets the Logged In object to null, invalidates the session and then redirects to
            //the index page
            lg = null;
            session.invalidate();
            response.sendRedirect("/Instagrim/");       
        %>   
    </body>
</html>
