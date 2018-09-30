<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Homepage</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/stylish-portfolio.min.css" rel="stylesheet">
	<style>
            .imm{
                width: 25%;
                height: 60%;
            }
             .imm1{
                font-size: 30;
                text-align: center;
            }
	.color{
		color:white;
                font: sans-serif; 
	}
	
	</style>
  </head>

  <body id="page-top">

    <!-- Navigation -->
    <div class="color">
    <a class="menu-toggle rounded" href="#">
      <i class="fas fa-bars"></i></a>
    <nav id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#page-top">Menu</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#portfolio">Events</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="../news.jsp">News</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#services">Contact</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#portfolio">About</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="../Login_v8/login.html">Login</a>
        </li>
      </ul>
    </nav>
        <div>

    <!-- Header -->
   
    <header class="masthead d-flex">
    
        <div class="container text-center my-auto"><!--
   <hr> <img class ="imm" src = "img/download.jpg">    -->    
   
<div class="color"> 
        <h1 class="mb-0"></h1>
      
 <h3 class="mb-6">
          <em><hr>Computer Society Of India - PICT Student Branch  was established in 2016 with an objective to facilitate research, knowledge sharing, learning and career enhancement. 
              We arrange a three day event every year -"ENTHUSIA!!!"</em>
        </h3>
<div>
       <!-- <a class="btn btn-primary btn-xl js-scroll-trigger" href="../login.html">Log In</a>
      --></div>
      <div class="overlay"></div>
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGFSURBVGhD7ZZfToNAEIc5Cey2/jfqjTxEX72FCOjtarVafWlZ+miiM2QWkqXQInRhk/mSTdpldub3tckGj2EYhmEYhmEYjQyzG/o4GJ0zyEg9wPoR0faetqyDszEDZqGtduQScfabr4FkCokyRzsZGWWz4nDZxKpMRaLIkc2oZD8i2d6JOPuuNrEjUyeBmTAblR0GmN8OIdMkgZmorB14W9iUaZQIO95c06fsWkTqy2zet0ytBMzGDFTWjWPLWJHQ+Im6gsYrc1hXmQaJFc6ksn4JInUpY/VpDv2vTJ0EzsBZVHYc+pIZVEITvKgLCPFRCXGgTK0E9MTeVGYHEafn8Ostd4RplGn4J5bYk8rs0lZmlBIaGaZnEO69Es6QqZXAs9CDyoZlkqSnIlZvO0LmMnUSeAbPUptx0CTjjITm5HkzhYALM7S5sAZr6dg42SfjhITGjzcTeMV4rUjAHj6jMjfwH9cSrtV5KaLmuEeP3aKUcVhCEyRrgYu+MgzDMAzDMM7heX9IbdOB7TiZ5wAAAABJRU5ErkJggg=="> </header>

  
    
   
    <!-- Call to Action -->
    <section class="content-section bg-primary text-white">
      <div class="container text-center">
        <h2 class="mb-4">Become a PICT-CSI member now!!</h2>
        <a href="../Login_v8/login.html" class="btn btn-xl btn-light mr-4">Sign - in!</a>
        <a href="#" class="btn btn-xl btn-dark">Sign - up!</a>
      </div>
    </section>

    
    
     <!-- Portfolio -->
    <section class="content-section" id="portfolio">
      <div class="container">
        <div class="content-section-heading text-center">
          <h3 class="text-secondary mb-0">Irresistible</h3>
          <h2 class="mb-5">E.V.E.N.T.S</h2>
        </div>


 <%@ page import="java.sql.*" %>

            <%
                try{
                     Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");
		
              Statement stmt = conn.createStatement();

             ResultSet r = stmt.executeQuery("select event_name,description from event where end_date>NOW() ");
	while(r.next()){
	
            %>




        <div class="row no-gutters">
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                 <%r.next();%>
              <img class="img-fluid" src="img/portfolio-2.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                 <%r.next();%>
              <img class="img-fluid" src="img/portfolio-3.jpg" alt="">
            </a>
          </div>
          <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                <%r.next();%>
              <img class="img-fluid" src="img/portfolio-4.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
              <div class="col-lg-6">
            <a class="portfolio-item" href="#">
              <span class="caption">
                <span class="caption-content">
                  <h2><%=r.getString("event_name") %></h2>
                  <p class="mb-0"><%=r.getString("description") %></p>
                </span>
              </span>
                  <%r.next();%>
              <img class="img-fluid" src="img/portfolio-1.jpg" alt="">
            </a>
          </div>
        </div>
      </div>
                  <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
    </section>

   
    <!-- Footer -->
    

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/stylish-portfolio.min.js"></script>

  </body>

</html>
