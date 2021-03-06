<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}

/* Slideshow container */
.slideshow-container {
  position: relative;
  background: black;
}

/* Slides */
.mySlides {
  display: none;
  padding: 80px;
  text-align: center;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -30px;
  padding: 16px;
  color: #888;
  font-weight: bold;
  font-size: 20px;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  position: absolute;
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
  color: white;
}

/* The dot/bullet/indicator container */
.dot-container {
    text-align: center;
    padding: 20px;
    background: #ddd;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

/* Add a background color to the active dot/circle */
.active, .dot:hover {
  background-color: #717171;
}

/* Add an italic font style to all quotes */
q {font-style: italic;
color: white;
font-size: 25px;}
.registerbtn {
    background-color: #3f586b;
    color: white;
    padding: 16px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 40%;
    opacity: 0.9;
}

.registerbtn:hover {
    opacity: 1;
}

/* Add a blue color to the author */
.author {color: cornflowerblue;
	font-size: 50px;}








.navbar {
    overflow: auto;
    background-color: #3f586b;
}



.navbar a {
    float: left;
    display: block;
    color: white;
    text-align: center;
    padding: 14px 20px;
    text-decoration: none;
}

/* Right-aligned link */
.navbar a.right {
    float: right;
}

.navbar a.right {
    float: right;
}
/* Change color on hover */
.navbar a:hover {
    background-color: #ddd;
    color: black;
}


.active {
    background-color: black;
    color: black;
}
/* style inputs and link buttons */
input,
.btn {
  width: 100%;
  padding: 12px;
  border: none;
  border-radius: 4px;
  margin: 5px 0;
  opacity: 0.85;
  display: inline-block;
  font-size: 17px;
  line-height: 20px;
  text-decoration: none; /* remove underline from anchors */
}

input:hover,
.btn:hover {
  opacity: 1;
}


</style>
</head>
<body>
<div class="navbar">
  <a href="index.html">Home</a>
  <a class="active">Events</a>
  <a href="news.html">News</a>
  <a href="about.html">About</a>
<a href="contact.html">Contact</a>
  <a href="login.html">Log In</a>
</div> 

<div class="slideshow-container">

<div class="mySlides">
<img src = "a2.png"><br><br><br>



 <%@ page import="java.sql.*" %>

            <%
                try{
                     Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");
		
              Statement stmt = conn.createStatement();

             ResultSet r = stmt.executeQuery("select event_name,description from event where end_date>NOW() ");
	while(r.next()){
	
            %>

                <p class="author"><%=r.getString("event_name") %></p>
<q><%=r.getString("description") %></q>
                <hr>
             </div>

</div>




  <q>First solve the problem then write the code.</q>
  <p class="author">- CO-"DIE"!!</p>
<a href = "reg.html"><button type="submit" class="registerbtn" font-size="10">Register</button><a>
</div>

<div class="mySlides">
<img src = "d.jpg"><br><br><br>
  <q>Make a man, not a Robot.</q>
  <p class="author">- Roboman!</p>
<a href = "reg.html"><button type="submit" class="registerbtn" font-size="10">Register</button></a>
</div>

<div class="mySlides">
<img src = "2.png"><br><br><br>
  <q>Walk back as fast as Front.</q>
  <p class="author">- Rev-front!</p>
<a href = "reg.html"><button type="submit" class="registerbtn" font-size="10">Register</button></a>
</div>

<a class="prev" onclick="plusSlides(-1)"><</a>
<a class="next" onclick="plusSlides(1)">></a>
<%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            
</div>

<div class="dot-container">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html> 

