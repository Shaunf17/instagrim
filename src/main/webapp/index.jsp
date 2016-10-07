<%-- 
    Document   : index
    Created on : Sep 28, 2014, 7:01:44 PM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uk.ac.dundee.computing.aec.instagrim.stores.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Instagrim</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="https://5a5a57ff32a328601212-ee0df397c56b146e91fe14be42fa361d.ssl.cf1.rackcdn.com/icon/instagram_logos_app_icon/YyepHGHDvkl1wFkUHw8Y/Instagram-v051916_200.png">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <style>
    body {font-family: "Lato", sans-serif}
    .mySlides {display: none}
    </style>
</head>

<body>

<!-- Navbar -->
    <div class="w3-top">
    <ul class="w3-navbar w3-black w3-card-2 w3-left-align"> 
    <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
        <a class="w3-padding-large" href="javascript:void(0)" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    </li>
    
    <li><a href="#" class="w3-hover-none w3-hover-text-grey w3-padding-large">HOME</a></li>
    <li class="w3-hide-small w3-right"><a href="javascript:void(0)" class="w3-padding-large w3-hover-red"><i class="fa fa-search"></i></a></li>
    <li class="w3-hide-small w3-right"><a href="upload.jsp" class="w3-padding-large">UPLOAD</a></li>
            <%
                LoggedIn lg = (LoggedIn) session.getAttribute("LoggedIn");
                if (lg != null) {
                    String UserName = lg.getUsername();
                    if (lg.getlogedin()) {
            %>

        <li class="w3-hide-small w3-right"><a href="/Instagrim/Images/<%=lg.getUsername()%>" class="w3-padding-large">YOUR IMAGES</a></li>
            <%}
               }else{
            %>
         <li class="w3-hide-small w3-right"><a href="register.jsp" class="w3-padding-large">REGISTER</a></li>
         <li class="w3-hide-small w3-right"><a href="login.jsp" class="w3-padding-large">LOGIN</a></li>
        <%


            }%>
        
        
        
        <!--<footer>
            <ul>
                <li class="footer"><a href="/Instagrim">Home</a></li>
                <li>&COPY; Andy C</li>
            </ul>
        </footer>-->
    </body>
</html>



<br>
<br>
<br>
<br>
<br>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity w3-light-grey w3-xlarge">
  <a href="#" class="w3-hover-text-indigo"><i class="fa fa-facebook-official"></i></a>
  <a href="#" class="w3-hover-text-red"><i class="fa fa-pinterest-p"></i></a>
  <a href="#" class="w3-hover-text-light-blue"><i class="fa fa-twitter"></i></a>
  <a href="#" class="w3-hover-text-grey"><i class="fa fa-flickr"></i></a>
  <a href="#" class="w3-hover-text-indigo"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">Powered by <a href="http://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

<script>
// Automatic Slideshow - change image every 4 seconds
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 4000);
}

// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}

// When the user clicks anywhere outside of the modal, close it
var modal = document.getElementById('ticketModal');
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>

</body>
</html>



</body>
</html>


