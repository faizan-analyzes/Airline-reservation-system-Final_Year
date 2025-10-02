<%@ page import = "java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* If you wish to remove the astonish.js file, then also be sure to remove these styles. */
             .astonish {
                  visibility: visible;
              }
        
              @media (min-width: 768px) {
                  .astonish {
                       visibility: hidden;
                   }
                   .animated {
                        visibility: visible;
                   }
               }               
        </style>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="home1.css">
    <link rel="stylesheet" href="https://necolas.github.io/normalize.css/8.0.1/normalize.css">
    <script defer src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script defer src="https://rawgit.com/Jesus-E-Rodriguez/cityscapes-landing-page/master/js/astonish.js"></script>
    <script defer src="https://rawgit.com/Jesus-E-Rodriguez/cityscapes-landing-page/master/js/menu.js"></script>
    <script defer src="https://rawgit.com/Jesus-E-Rodriguez/cityscapes-landing-page/master/js/nav.js"></script>
    <script defer src="https://rawgit.com/Jesus-E-Rodriguez/cityscapes-landing-page/master/js/scroll.js"></script> 
    <title>Document</title>
</head>
<body>
    <!-- Main Navigation -->
<nav class="main-nav" id="main-nav">
    <div class="content-wrapper-sm">
     <a href="#" class="navbar-brand">FindFlights</a>
     <div id="menu-button">
      <div class="bar1"></div>
      <div class="bar2"></div>
      <div class="bar3"></div>
     </div>
     <ul class="nav-links">
        <li><a href="#">Home</a></li>   
        <li><a href="#about">About us</a></li>
        <li><a href="#contact">Coustomer Support</a></li>
        <li><a href="login/login.jsp">Login</a></li>
     </ul>
    </div>
   </nav>
   
   <!-- Main header -->
   <header>
    <!-- First replaceble image -->
    <img class="img-absolute" src="https://wallpaperaccess.com/full/878630.jpg">
    <div class="wrapper astonish animated fadeInDown">
     <h1><strong>Find</strong>Flights</h1>
     <h2>Experience the royalty with us<br>Your journey starts here.</h2>
    </div>
   </header>
   
   <!-- Main content -->
   <main>
    <div class="content-wrapper" id="about">
     <!-- second replaceble image -->
     <img class="img-absolute" src='images/book.jpg' alt="City 2">
     <div class="grid">
      <div class="grid-col-sm-10 grid-col-md-6 astonish" data-animation="fadeInLeft">
       <h2 class="section-title">About FindFlights</h2>
       <p>Welcome to FindFlights, your premier destination for hassle-free flight bookings. Founded in 2020, we embarked on a mission to revolutionize air travel booking, making it accessible, efficient, and customer-centric.</p>
        <p>From our humble beginnings in Ahmednagar, Maharashtra, our journey has been one of relentless innovation and dedication to our customers. We pride ourselves on offering a seamless experience, powered by cutting-edge technology and a passionate team dedicated to helping you reach your destinations with ease.</p>
        <p>With a user-friendly platform, competitive pricing, and a commitment to exceptional service, FindFlights has grown into a trusted name in the travel industry. Whether you're planning a business trip, a family vacation, or an impromptu adventure, we're here to ensure your flight booking experience is smooth and enjoyable.</p>
        <p>Join us as we continue to soar to new heights, connecting you to the world, one flight at a time.</p>
      </div>
     </div>
    </div>
   
    <!--<div class="content-wrapper" id="reserve">
        <img class="img-absolute" src="https://images.pexels.com/photos/730778/pexels-photo-730778.jpeg" alt="City 2">
    </div>-->
    

   
    <div class="content-wrapper" id="contact">
     <!-- Third replaceble image -->
     <img class="img-absolute" src='images/receptionists-5975962.jpg' alt="City 3">
   
     <!-- Custom form, important note: you will need additional code in order to make this form work -->
     <form class="contact-form astonish" action="#" method="post" data-animation="fadeInRight">
      <h2 class="section-title">Contact Us</h2>
      <div class="grid">
       <div class="grid-col-sm-12 grid-col-md-6">
        <div class="form-group">
         <input type="text" name="firstName" required>
         <label for="firstName">Name:</label>
        </div>
       </div>
       <div class="grid-col-sm-12 grid-col-md-6">
        <div class="form-group">
         <input type="text" name="phone" required>
         <label for="lasttName">Phone:</label>
        </div>
       </div>
       <div class="grid-col-sm-12">
        <div class="form-group">
         <input type="text" name="email" required>
         <label for="email">Email:</label>
        </div>
       </div>
       <div class="grid-col-sm-12">
        <div class="form-group">
         <textarea name="message" required></textarea>
         <label for="message">Message:</label>
        </div>
       </div>
      </div>
      <input class="btn btn-outline-teal" name="send" type="submit" value="Send">
     </form>
    </div>

   
    <!-- This is an embedded Google map, this is easily customizable especially if you get a Google API key, this will allow for more customizable features. -->
    <!--<iframe id="map" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d81584.50435706123!2d-80.8378430874413!3d35.23358937843391!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1514142608486" frameborder="0" style="border:0" allowfullscreen></iframe>
   </main>-->
   
   <!-- Main footer -->
   <footer>
    <div class="content-wrapper-sm display-flex-between">
     <!-- Easily replaceble copyright information -->
     <small>Your copyright 2024.</small>
   
     <!-- Make sure to edit the links so that they go to your social media. -->
     <div class="social-links">
      <ul>
       <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
       <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
       <li><a href="#"><i class="fa fa-snapchat-square" aria-hidden="true"></i></a></li>
       <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
      </ul>
     </div>
    </div>
   </footer>
</body>
</html>
<%
try{    
        Connection con = null;
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/FindFlights","root","");
        PreparedStatement psmt = null; 

        String send = request.getParameter("send");
        if(send!=null)
        {
            String name = request.getParameter("firstName");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String message = request.getParameter("message");

            psmt = con.prepareStatement("insert into complaints values(?,?,?,?)");
            psmt.setString(1,name);
            psmt.setString(2,phone);
            psmt.setString(3,email);
            psmt.setString(4,message);

            int cnt = psmt.executeUpdate();
            if(cnt>=1)
                out.println("<script> alert('Complaint raised') </script>");
            else
                out.println("<script> alert('Complaints not raised') </script>");
        }
   }
   catch(Exception e)
   {
    out.println(""+e);
   }
%>