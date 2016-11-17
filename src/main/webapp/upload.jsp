<%-- 
    Document   : upload
    Created on : Sep 22, 2014, 6:31:50 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="head.jsp" %>
    <body>
        <%@include file="header.jsp" %>
        <br>
        <br>
        <div>
            <nav>
                <ul>
                    <li class="nav"><a href="upload.jsp">Upload</a></li>
                    <li class="nav"><a href="/Instagrim/Images/majed">Sample Images</a></li>
                </ul>
            </nav>
        </div>
 
        <article>
            <h3>File Upload</h3>
            <form method="POST" enctype="multipart/form-data" action="Image">
                File to upload: <input type="file" name="upfile"><br/>

                <br/>
                <input type="submit" value="Press"> to upload the file!
            </form>

        </article>
        <%@include file="footer.jsp" %>
    </body>
</html>
