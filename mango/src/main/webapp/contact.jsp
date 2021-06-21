<%@page import="jdk.internal.misc.FileSystemOption"%>
<%@page import="MODEL.Time_Temp"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Rain Effect Experiments | Demo 1 | Codrops</title>
	<meta name="description" content="Some WebGL experiments with raindrop effects" />
	<meta name="keywords" content="webgl, raindrops, effect, rain, web, video, background" />
	<meta name="author" content="Lucas Bebber for Codrops" />
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/style1.css" />

  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  
  <title>
    team MANGO
  </title>
 

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700&display=swap" rel="stylesheet" />

  <!-- bootstrap core css -->
<!--   <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /> -->

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<!-- 
<body class="sub_page, demo-3">
<video class="videobg" src="images/video.mp4" poster="images/video.jpg" autoplay loop muted>
		<source src="images/video.webm" type="video/web">
		<source src="images/video.mp4" type="video/mp4">
	</video>
	<div class="container">
		<canvas id="container" width="1255" height="1003" style=" position: absolute; *//* width: 1255px; *//* height: 1003px; ">
		</canvas>	
	/container
	<script src="js/index3.min.js"></script>
	
	
	
	
  <div class="hero_area">
    header section strats
    <header class="header_section">
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          <a class="navbar-brand" href="index.html">
            <img src="images/logo.png" alt="" />
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item ">
                  <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.html">
                    About
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="service.html">
                    Services
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="portfolio.html">
                    Portfolio
                  </a>
                </li>
                
                <li class="nav-item active">
                  <a class="nav-link" href="contact.html">Contact Us</a>
                </li>
                  <li class = "nav-item">
                  <button class = "nav-link" id ="modal_open">Login</button>
                </li>
              </ul>
              <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
              </form>
            </div>
          </div>
        </nav>
      </div>
    </header>
    end header section
  </div>
  end hero area


  contact section

  <section class="contact_section layout_padding-bottom layout_padding2-top">
    <div class="container px-0">
      <div class="heading_container">
        <h2 class="">
          Con<span>ta</span>ct Us
        </h2>
      </div>

    </div>

    
    <div class="container container-bg">
      <div class="row">
        <div class="col-lg-8 col-md-7 px-0">
          <div class="map_container">
            <div class="map-responsive">
              <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=Eiffel+Tower+Paris+France" width="600" height="300" frameborder="0" style="border:0; width: 100%; height:100%" allowfullscreen></iframe>
              <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=60+Songamro+Namgu+Gwangju+Korea" width="600" height="300" frameborder="0" style="border:0; width: 100%; height:100%" allowfullscreen></iframe>

            </div> 
          </div>
        </div>
        <div class="col-md-5 col-lg-4 px-0">
          <form action="test">
            <div>
              <input type="text" name = "id" value =/>
            </div>
            <div>
              <input type="text" name = placeholder="Email" />
            </div>
            <div>
              <input type="text" name = "memo" placeholder="Phone" />
            </div>
            <div>
              <input type="text"  name = "receive" class="message-box" placeholder="Message" />
            </div>
            <div class="d-flex ">
              <button type= submit>
                SEND
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  end contact section

  client section

  <section class="client_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>
          What <span>says</span> our clients
        </h2>
      </div>
      <div class="box">
        <div class="client_id">
          <div class="name">
            <h4>
              Sandy <br>
              Nor
            </h4>
          </div>
          <div class="img-box">
            <img src="images/client.jpg" alt="">
          </div>
        </div>
        <div class="detail-box">
          <p>
            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem
          </p>
          <img src="images/quote.png" alt="">
        </div>
      </div>
    </div></div>
  </section>

  end client section


  info section

  <section class="info_section  layout_padding2-top">
    <div class="social_container">
      <div class="social_box">
        <a href="">
          <img src="images/fb.png" alt="">
        </a>
        <a href="">
          <img src="images/twitter.png" alt="">
        </a>
        <a href="">
          <img src="images/linkedin.png" alt="">
        </a>
        <a href="">
          <img src="images/youtube.png" alt="">
        </a>
      </div>
    </div>
    <div class="info_container ">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <h6>
              ABOUT US
            </h6>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet,
            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              Instagram
            </h6>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipi
              scing elit, sed doLorem ipsum dolor sit
            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              NEED HELP
            </h6>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet, consectetur adipiscing elit, sed doLorem ipsum dolor sit amet,
            </p>
          </div>
          <div class="col-md-6 col-lg-3">
            <h6>
              CONTACT US
            </h6>
            <div class="info_link-box">
              <a href="">
                <img src="images/location.png" alt="">
                <span> Gb road 123 london Uk </span>
              </a>
              <a href="">
                <img src="images/call.png" alt="">
                <span>+01 12345678901</span>
              </a>
              <a href="">
                <img src="images/mail.png" alt="">
                <span> demo@gmail.com</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    footer section
    <section class=" footer_section">
      <div class="container" style = "height : 5vh !important;">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="https://html.design/">Free Html Templates</a>
        </p>
      </div>
    </section>
    footer section

  </section>

  end info section


<script>

</script>


  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script type="text/javascript" src="js/custom.js"></script>
</body> -->

<body class="demo-1" id = "body">
	<div class="image-preload">
		<img src="img/drop-color.png" alt="">
		<img src="img/drop-alpha.png" alt="">
		<img src="img/weather/texture-rain-fg.png" />
		<img src="img/weather/texture-rain-bg.png" />
		<img src="img/weather/texture-sun-fg.png" />
		<img src="img/weather/texture-sun-bg.png" />
		<img src="img/weather/texture-fallout-fg.png" />
		<img src="img/weather/texture-fallout-bg.png" />
		<img src="img/weather/texture-drizzle-fg.png" />
		<img src="img/weather/texture-drizzle-bg.png" />
	</div>
	<div class="container">
	
	
		<header class="codrops-header">
			<div class="codrops-links">
				<a class="codrops-icon codrops-icon--prev" href="http://tympanus.net/Development/CardStackEffects/" title="Previous Demo"><span>Previous Demo</span></a>
				<a class="codrops-icon codrops-icon--drop" href="http://tympanus.net/codrops/?p=25417" title="Back to the article"><span>Back to the Codrops article</span></a>
			</div>
			<h1>Team Mango</h1>
			<nav class="codrops-demos">
				<a class="current-demo" href="index.html">Home</a>
				<a href="index2.html">Perfume</a>
				<a href="index3.html">Memo</a>
			</nav>
		</header>
		<div class="slideshow">
			<canvas width="1" height="1" id="container" style="position:absolute"></canvas>
			<!-- style="position:absolute" -->
			<!-- Heavy Rain -->
			<div class="slide" id="slide-1" data-weather="rain">
				<div class="slide__element slide__element--date">Sunday, 24<sup>th</sup> of October 2043</div>
				<div class="slide__element slide__element--temp">12¡Æ<small>C</small></div>
			</div>
			<!-- Drizzle -->
			<div class="slide" id="slide-2" data-weather="drizzle">
				<div class="slide__element slide__element--date">Saturday, 25<sup>th</sup> of October 2043</div>
				<div class="slide__element slide__element--temp">18¡Æ<small>C</small></div>
			</div>
			<!-- Sunny -->
			<div class="slide" id="slide-3" data-weather="sunny">
				<div class="slide__element slide__element--date">Monday, 26<sup>th</sup> of October 2043</div>
				<div class="slide__element slide__element--temp">25¡Æ<small>C</small></div>
			</div>
			<!-- Heavy rain -->
			<div class="slide" id="slide-5" data-weather="storm">
				<div class="slide__element slide__element--date">Wednesday, 28<sup>th</sup> of October 2043</div>
				<div class="slide__element slide__element--temp">20¡Æ<small>C</small></div>
			</div>
			<!-- Fallout (greenish overlay with slightly greenish/yellowish drops) -->
			<div class="slide" id="slide-4" data-weather="fallout">
				<div class="slide__element slide__element--date">Tuesday, 27<sup>th</sup> of October 2043</div>
				<div class="slide__element slide__element--temp">34¡Æ<small>C</small></div>
			</div>
			<nav class="slideshow__nav">	
	<%
	 /* Time_Temp t;
	 System.out.print(t.getT());  */
	Calendar cal = Calendar.getInstance();
	int day = cal.get(Calendar.DAY_OF_MONTH);
	int month = cal.get(Calendar.MONTH)+1;
	%>
				<a class="nav-item" href="#slide-1"><i class="icon icon--rainy"></i><span><%=month %>/<%=day %></span></a>
				<a class="nav-item" href="#slide-2"><i class="icon icon--drizzle"></i><span><%=month %>/<%=day+1 %></span></a>
				<a class="nav-item" href="#slide-3"><i class="icon icon--sun"></i><span><%=month %>/<%=day+2 %></span></a>
				<a class="nav-item" href="#slide-5"><i class="icon icon--storm"></i><span><%=month %>/<%=day+3 %></span></a>
				<a class="nav-item" href="#slide-4"><i class="icon icon--radioactive"></i><span><%=month %>/<%=day+4 %></span></a>
			</nav>
		</div>
		<p class="nosupport">Sorry, but your browser does not support WebGL!</p>
	</div>
	<!-- /container -->
	<script src="js/index.min.js"></script>
</body>


</html>
