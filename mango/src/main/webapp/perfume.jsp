<%@page import="java.net.URL"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>

<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  
    
  <link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/style1.css" />
  
  
  
  <title>
    당신의 하루 망고와 함께
  </title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
  
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700&display=swap" rel="stylesheet" />

  <!-- bootstrap core css -->
 
  <link rel="stylesheet" type="text/css" href="css/style2.css" />
   <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />	

  <!-- Custom styles for this template -->
  <link rel="stylesheet" href="css/style.css"/>
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  
  <style>
  
	  #modal_open {
		border-color: transparent;
		BACKGROUND-COLOR: transparent;
		
	  }
	  
	  #btn{

		width: 200px; 
		height: 35px; 
		margin: 10px;
		background-color: black;
		border-color: transparent;
		color: white;
		
	  }	
	  
		
  </style>
  
</head>

<body class="sub_page demo-1">
<%
String urlstr = "http://api.openweathermap.org/data/2.5/weather?q=Gwangju&appid="+"01302211c0ad8247844362fd2d8280f7";
URL url2 = new URL(urlstr);
BufferedReader bf2;
String line2;
String result2="";

bf2 = new BufferedReader(new InputStreamReader(url2.openStream()));

while((line2=bf2.readLine())!=null){
    result2=result2.concat(line2);
}

JSONParser jsonParser2 = new JSONParser();
JSONObject jsonObj2 = null;
try {
	jsonObj2 = (JSONObject) jsonParser2.parse(result2);
} catch (ParseException e) {
	e.printStackTrace();
}


JSONArray weatherArray2 = (JSONArray) jsonObj2.get("weather");
JSONObject wea = (JSONObject) weatherArray2.get(0);

String dataW = "";
			String dataR = "";
			String todayW = (String)wea.get("main");
			if(todayW.equals("Thunderstorm"))dataR = "storm";
			if(todayW.equals("Drizzle"))dataR = "drizzle";
			if(todayW.equals("Rain"))dataR = "rain";
			if(todayW.equals("Clear"))dataR = "sunny";
			if(todayW.equals("Clouds"))dataR = "fallout";
%>
<div class="container" style = "margin-left : 0; width: 100.5vw; height: 100vh ">
			<canvas id="container" style= "position: absolute;  left: -0.5vw;  width: 100.5vw; height: 100vh;"></canvas>
	<div class="slide" id="slide-1" data-weather="<%=dataR%>" style = "padding:0">
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid" style="padding-right: 2em; padding-left: 4em; padding-top: 1.25em;">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3" style=" /* display: inherit; */ flex-direction: row;">
          <a class="navbar-brand" href="home.jsp">
            <img src="img/mango_logo2.png" alt="logo" style = "width:220px; margin-top:15px;">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  " style = "padding-top: 5px;">
                <li class="nav-item ">
                  <a class="nav-link2" href="home.jsp">Home<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link2" href="light.jsp">
                    Light
                  </a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link2" href="perfume.jsp" style = "color:black;">
                    Perfume
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link2" href="music.jsp">
                    Music
                  </a>
                </li>
                <li class="nav-item">
				 <% String id = null;
					id = (String) session.getAttribute("id");
					if(id == null){%>
				  <a href = "join.jsp " class="nav-link2" style = "margin-left: 15px;" >JOIN</a>
				  <button class="nav-link2" id="modal_open" style = "color:black; border: none; margin-left: 13px;">Login</button>
				<%}else{ %>
				<a class="nav-link2" href = "mypage.jsp">MY PAGE</a>
				<a class="nav-link2" href = "LogoutCon.do" style = "margin-left: 1em;">LOGOUT</a>
				<%} %>
				</li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div><br>
  <!-- end hero area -->
 <div class="container">
      <div class="heading_container" style = "margin-bottom: -50px;">
        <h2>SCENT <span>NOTE</span></h2>
        <p>
         향기의 종류는 정말 다양해요. 각 향기마다 가지고 있는 매력적인 특징에 대해 알아볼까요?
        </p>
      </div>
    </div>
	<!-- service section -->

 <section class="slider-1">
  <div class="slider-1">
    <div class="slides">
        <div class="active" style="background-image:url(images/perfume/floral_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/citrus_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/fruity_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/woody_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/green_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/herbal_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/spicy_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/animalic_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/powdery_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/mossy_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/oriental_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/tabacco_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/gourmand_info.jpg?auto=compress,format); margin: 4em;"></div>
        <div style="background-image:url(images/perfume/aqua_info.jpg?auto=compress,format); margin: 4em;"></div>
    </div>
    <div class="page-btns">
        <div class="active"></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
        <div></div>
    </div>
    <div class="side-btns">
        <div>
            <span><i class="fas fa-angle-left"></i></span>
        </div>
        <div>
            <span><i class="fas fa-angle-right"></i></span>
        </div>
    </div>
</div>
 
 
  <!-- end service section -->
  
  <!-- setting section -->
  
  <!-- end setting section -->

  <!-- logo section -->
  
  <section class="logo_section layout_padding" style="padding-bottom: 60px; padding-top: 30px;">
    <div class="container">
      <div class="heading_container">
        <h2>
          RECOMMEND <span>THIS</span> PERFUME <br>
        </h2>
        <p>
          당신의 마음을 사로잡은 향은 무엇이었나요?
        </p>
      </div>
    </div>
    
    <div>
    	<form action = "recommend.jsp">
			<button id = "btn">나에게 맞는 향 찾기</button>    
    	</form>
    </div>
    
    <div class="logo_container layout_padding">
      <div class="carousel-wrap">
        <div class="owl-carousel">
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/floral.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Floral
                </h4>
              </div>
          </div>
        </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                 <img src="images/perfume/citrus.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Citrus
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/fruity.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Fruity
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/woody.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Woody
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/green.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Green
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/animalic.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Animalic
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/oriental.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Oriental
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/aqua.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Aqua
                </h4>
              </div>
            </div>
          </div>
           <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/spicy.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Spicy
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/gourmand.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Gourmand
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/powdery.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Powdery
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/herbal.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Herbal
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box  b1">
              <div class="img-box">
                <img src="images/perfume/mossy.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Mossy
                </h4>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box b2">
              <div class="img-box">
                <img src="images/perfume/tabacco_leather.jpg" alt="">
              </div>
              <div class="detail-box">
                <h4>
                  Tabacco leather
                </h4>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  
  <section class="footer_section">
		<div class="container">
			<p>
				&copy; <span id="displayYear"></span> Copyright2021. Mango <span>All
					pictures cannot be copied without permission.</span>
			</p>
		</div>
  </section>
        
        		</div>
	</div>
        
  <!-- end logo section -->

	<script src="js/index.min.js"></script>

	<style>
.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 900;
}
.modal__overlay {
	background-color: rgba(0, 0, 0, 0.8);
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 1000;
}
.modal__content {
	background-color: white;
	padding: 80px 80px;
	text-align: center;
	position: relative;
	margin-top: 300px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px
		rgba(0, 0, 0, 0.23);
	z-index: 1200;
}
.blankt {
	width: 20%;
	height: 10%;
}
.ip {

	width: 15em;
/* 	height: 2em; */
	padding: 5px;
	margin: 5px;
	border: none;
	border-bottom: 2px solid black;
	background-color: transparent;

}

.button, fit {

	width: 60px; 
	height: 35px; 
	margin: 10px;
	background-color: black;
	border-color: transparent;
	color: white;
	

}
</style>

	<!--id menu-->
	<div class="modal hidden">
		<div class="modal__overlay"></div>
		<div class="modal__content"
			style = 
			"background-image: url('img/login3.jpg');
	 		background-repeat: no-repeat;
	  		background-size: cover;
	  		background-position: center;
	  		">
			<button style="margin-left: 100%; display: none;" >X</button>

			<ul style='list-style: none;'>
				<li><h5
						style='font-family: Nanum Gothic, sans-serif; font-weight: bold; margin-top: 18px;'>LOGIN</h5></li>
				<form action="LoginCon.do" method = post>
					<li><input type="text" name=id class = "ip" placeholder="ID을 입력하세요."></li>
					<li><input type="password" name=pw class = "ip" placeholder="Password를 입력하세요."></li>
					<li>
						<input type="submit" value="LogIn" class="button fit">
						<input type="submit" value="join" class="button fit">
					</li>
					
				</form>
			</ul>
			<div class=blankt></div>
			
			<!-- <ul style='list-style: none;'>
				<li><h5
						style='font-family: Nanum Gothic, sans-serif; font-weight: bold'>회원가입</h5></li>
				<form action="#" method=post>
					<li><input type="text" name=id placeholder="Email을 입력하세요"></li>
					<li><input type="password" name=pw placeholder="PW를 입력하세요"></li>
					<li><input type="text" name=tel placeholder="전화번호를 입력하세요"></li>
					<li><input type="text" name=addr placeholder="집주소를 입력하세요"></li>
					<li><input type="submit" value="JoinUs" class="button fit"></li>
				</form>
			</ul>
			<div class=blankt></div> -->

		</div>
	</div>
<!--id menu end-->
<!-- recommend sales menu -->

<!-- end recommend sales menu -->

	<script>
		const modalOpenBtn = document.getElementById('modal_open');
		const modal = document.querySelector('.modal');
		const overlayModal = modal.querySelector('.modal__overlay');
		const modalCloseBtn = modal.querySelector('button');
		const HIDDEN = "hidden";
	
		
		function closeModal() {
			modal.setAttribute("style", "display:none");
			modal.classList.add(HIDDEN);
		}

		function openModal() {
			modal.setAttribute("style", "display:block");
			modal.classList.remove(HIDDEN);
		}
		
		overlayModal.addEventListener('click', closeModal);
		modalCloseBtn.addEventListener('click', closeModal);
		modalOpenBtn.addEventListener('click', openModal);
		
		
	</script>	
 
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script src="js/slider.js"></script>
  
  
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script type="text/javascript" src="js/custom.js"></script>
</body>

</html>