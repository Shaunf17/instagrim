<%-- 
    Document   : header
    Created on : 17-Nov-2016, 14:05:30
    Author     : shaunfalconer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    
    <body>
        <div class="w3-top">
    <ul class="w3-navbar w3-black w3-card-2 w3-left-align"> 
    <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
        <a class="w3-padding-large" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    </li>
    
    <li><a href="/Instagrim" class="w3-hover-none w3-hover-text-grey w3-padding-large">HOME</a></li>
    <li class="w3-hide-small w3-right"><a href="javascript:void(0)" class="w3-padding-large w3-hover-red"><i class="fa fa-search"></i></a></li>
    
            <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getlogedin()) {
            %>
        <li class="w3-hide-small w3-right"><a href="logout.jsp" class="w3-padding-large">LOGOUT</a></li>
        <li class="w3-hide-small w3-right"><a href="upload.jsp" class="w3-padding-large">UPLOAD</a></li>        
        <li class="w3-hide-small w3-right"><a href="/Instagrim/Images/<%=lg.getUsername()%>" class="w3-padding-large">YOUR IMAGES</a></li>
            <%}
               }else{
            %>
         <li class="w3-hide-small w3-right"><a href="register.jsp" class="w3-padding-large">REGISTER</a></li>
         <li class="w3-hide-small w3-right"><a href="login.jsp" class="w3-padding-large">LOGIN</a></li>
        <%


            }%>
    </div>
    </body>
</html>
