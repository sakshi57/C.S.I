<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Homepage</title>

    <!-- Bootstrap Core CSS -->
    <link href="../homed/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../homed/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="../homed/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../homed/css/stylish-portfolio.min.css" rel="stylesheet">
<style>
* {
    box-sizing: border-box;
}

body {
   
    font-family: Helvetica, sans-serif;
}
a {
    color: dodgerblue;
}
/* The actual timeline (the vertical ruler) */
.timeline {
    position: relative;
    max-width: 900px;
    margin: 0 auto;
}

/* The actual timeline (the vertical ruler) */
.timeline::after {
    content: '';
    position: absolute;
    width: 6px;
    background-color: white;
    top: 0;
    bottom: 0;
    left: 50%;
    margin-left: -3px;
}

/* Container around content */
.container1 {
    padding: 10px 40px;
    position: relative;
    background-color: inherit;
    width: 50%;
}

/* The circles on the timeline */
.container1::after {
    content: '';
    position: absolute;
    width: 25px;
    height: 25px;
    right: -17px;
    background-color: white;
    border: 4px solid #3f586b;
    top: 15px;
    border-radius: 5%;
    z-index: 1;
}

/* Place the container to the left */
.left {
    left: 0;
}

/* Place the container to the right */
.right {
    left: 50%;
}

/* Add arrows to the left container (pointing right) */
.left::before {
    content: " ";
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    right: 30px;
    border: medium solid #3f586b;
    border-width: 10px 0 10px 10px;
    border-color: transparent transparent transparent white;
}

/* Add arrows to the right container (pointing left) */
.right::before {
    content: " ";
    height: 0;
    position: absolute;
    top: 22px;
    width: 0;
    z-index: 1;
    left: 30px;
    border: medium solid #3f586b;
    border-width: 10px 10px 10px 0;
    border-color: transparent white transparent transparent;
}

/* Fix the circle for containers on the right side */
.right::after {
    left: -16px;
}

/* The actual content */
.content {
    padding: 20px 30px;
    background-color: white;
    border: solid #08c;
    position: relative;
    border-radius: 6px;
    color: #08c;
}

/* Media queries - Responsive timeline on screens less than 600px wide */
@media screen and (max-width: 600px) {
  /* Place the timelime to the left */
  .timeline::after {
    left: 31px;
  }
  
  /* Full-width containers */
  .container1 {
    width: 100%;
    padding-left: 70px;
    padding-right: 25px;
  }
  
  /* Make sure that all arrows are pointing leftwards */
  .container1::before {
    left: 60px;
    border: medium solid white;
    border-width: 10px 10px 10px 0;
    border-color: transparent white transparent transparent;
  }

  /* Make sure all circles are at the same spot */
  .left::after, .right::after {
    left: 15px;
  }
  
  /* Make all right containers behave like the left ones */
  .right {
    left: 0%;
  }

}
</style>
</head>
<body style="background-color: black";>

   <a class="menu-toggle rounded" href="#">
      <i class="fas fa-bars"></i>
    </a>
    <nav id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <li class="sidebar-brand">
          <a class="js-scroll-trigger" href="#page-top">Menu</a>
        </li>
        <li class="sidebar-nav-item">
          <a class="js-scroll-trigger" href="#page-top">Events</a>
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
          <a class="js-scroll-trigger" href="Login_v8/login.html">Login</a>
        </li>
      </ul>
    </nav>


        <%@ page import="java.sql.*" %>

        <h2 align="center"><font><strong>NEWS IT UP!!!</strong></font></h2>
    <div class="timeline">
            <%
                try{
                     Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");
		
              Statement stmt = conn.createStatement();

             ResultSet r = stmt.executeQuery("select title,description,start_date,end_date from newsfeed where end_date>NOW() ");
	while(r.next()){
	
            %>
<div class="container1 left">
                    <div class="content">

                <h2><%=r.getString("title") %></h2>
                <hr>
                <p><%=r.getString("description") %></p>
 <hr>
                <p><%=r.getString("start_date") %> - <%=r.getString("end_date") %></p>

                    </div>
                </div>
             <%
                 r.next();
                   %>
                   <div class="container1 right">
                    <div class="content">

                <h2><%=r.getString("title") %></h2>
                <hr>
                <p><%=r.getString("description") %></p>
 <hr>
                <p><%=r.getString("start_date") %> - <%=r.getString("end_date") %></p>

                    </div>
                </div>
                   
                   
               <%    
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
            </div>

</div>
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

