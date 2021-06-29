<%@page import="java.net.URL"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<link rel="stylesheet" type="text/css" href="css/style1.css" />
  


<title>당신의 하루 망고와 함께</title>

<style>
	#wcat {
		text-align: center;
		background-image: url('img/night_star.jpg');
	  	background-repeat: no-repeat;
	  	background-size: cover;
	  	width: 60%;
	  	margin-left: 20%;
	}

	#modal_open {
		border-color: transparent;
		BACKGROUND-COLOR: transparent;
		
	}
	
	#onOff {
		
		width: 100px; 
		height: 35px; 
		margin: 10px;
		background-color: black;
		border-color: transparent;
		color: white;
		margin-top: 25px;
			
	}
	
	@font-face {
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
	}
	
	@font-face {
     font-family: 'S-CoreDream-6Bold';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
     font-weight: normal;
     font-style: normal;
	}
	
	h1 {
	
	font-family: 'S-CoreDream-6Bold';
	
	}
	
	#onOff:hover {
	
		background-color: white;
		color: black;
	
	}
	

</style>


<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700&display=swap"
	rel="stylesheet" />

<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />

<!-- Bootstrap CSS-->
<link href="css/bootstrap.min.css" rel="stylesheet">
<!-- Bootstrap slider CSS-->
<link href="css/bootstrap-slider.css" rel="stylesheet">


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

<div class="container" style = "margin-left : 0">
			<canvas id="container" style= "position: fixed;  left: -0.5vw;  width: 100.5vw; height: 100vh;"></canvas>
	<div class="slide" id="slide-1" data-weather="<%=dataR%>" style = "padding:0">
	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">
			<div class="container-fluid" style="padding-right: 2em; padding-left: 4em; padding-top: 1.25em;">
				<nav class="navbar navbar-expand-lg custom_nav-container pt-3" style=" /* display: inherit; */ flex-direction: row;">
					<a class="navbar-brand" href="home.jsp"> <img
						src="img/mango_logo2.png" alt="logo" style = "width:220px; margin-top:15px;">
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent"">
						<div
							class="d-flex ml-auto flex-column flex-lg-row align-items-center">
							<ul class="navbar-nav  " style = "padding-top: 5px;">
								<li class="nav-item "><a class="nav-link2" href="home.jsp">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item active"><a class="nav-link2"
									href="light.jsp" style = "color: black;"> Light </a></li>
								<li class="nav-item"><a class="nav-link2"
									href="perfume.jsp"> Perfume </a></li>
								<li class="nav-item"><a class="nav-link2"
									href="music.jsp"> Music </a></li>
								<li class="nav-item">
								<% String id = null;
									id = (String) session.getAttribute("id");
									if(id == null){%>
									<a href = "join.jsp" class="nav-link2" style = "margin-left: 15px;" >JOIN</a>
									<button class="nav-link2" id="modal_open" style = "color: black; border: none; margin-left: 13px;">Login</button>
								<%}else{ %>
								<a class="nav-link2" href = "mypage.jsp" style="marign-left:0.9em;">MY PAGE</a>
								<a class="nav-link2" href = "LogoutCon.do" style = "margin-left: 1em;">LOGOUT</a>
								<%} %>
								</li>
							</ul>
							<!-- <form class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
								<button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"></button>
							</form> -->
						</div>
					</div>
				</nav>
			</div>
		</header>
		<!-- end header section -->
	</div><br>
	<!-- end hero area -->
	
	 <div class="container">
      <div class="heading_container">
        <h1 style = "color: #293040;">Li<span style = "color: #6475BC;">ght</span></h1>
        <p style = "font-family: 'S-CoreDream-3Light'; color: #5F5F5F;">
         <span style = "color: #A60F1B;">당신</span>의 <span style = "color: #A60F1B;">일상</span>을 밝게 비춰줄게요.
        </p>
      </div>
    </div>

	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
		
	</script>
	<script type="text/javascript" src="js/custom.js"></script>

	<!-- mood lamp area -->
	
	<div id="wcat">
		<img src="img/wcat.png" width="600" style = "padding: 5%">
	</div>
	
	<div>
		<button id = "onOff" onclick = "check()"> Off </button>
		<button id = "onOff" onclick = "location.href = 'http://192.168.137.144/'"> Off </button>
	</div>
	
	<script>
	var ch = false;
	function check(){
		if(ch){
			ch = false; 
			ShowSliderValue(1);document.querySelector("#wcat>img").style.opacity = 0;}
			else{
			ch = true;
			ShowSliderValue(100);document.querySelector("#wcat>img").style.opacity = 100;
			}
		
		
	};
	</script>
	
	<div class="container">
		
		<div class="panel panel-default">
			<div class="pannel-heading"></div>
			<div class="panel-body" align="center" style = "margin-top: 30px;">

				<!--슬라이더로 선택할 input-->
				<div class="Container">
			        <input oninput = 'ShowSliderValue(this.value);document.querySelector("#wcat>img").style.opacity = this.value/100;'  type = "range" min='1' max='100' value='100' id = ch style = "text-align: center;">
			        <font size = 3 id = "slider_value_view" style = "text-align: center;">100</font>	
			    </div>
			</div>
		</div>
	</div>

	<section class=" footer_section">
		<div class="container">
			<p style = "border-top: 1.5px solid #A60F1B; color: black; padding-top: 0px;">
				<h6 style = "font-family: S-CoreDream-3Light;">&copy; <span id="displayYear"></span> Copyright2021. Mango <span>All
					pictures cannot be copied without permission.</span></h6>
			<br>
		</div>
	</section>
</div>
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-slider.js"></script>
	<script src="js/index.min.js"></script>
	
	<script>
	
	$(function() {
	    $('#onOff').click( function() {
	        if( $(this).html() == 'On' ) {
	        $(this).html('Off');
	        }
	        else {
	        $(this).html('On');
	        }
	    });
	    });
	
	</script>
	

	<script>
		// Without JQuery

		$('#mini').on("slide", function(sliderValue) {
			var val = $('#mini').val();
			document.getElementById("miniVal").textContent = val;
		});
		
		function ShowSliderValue(sVal)
	    {
	        var obValueView = document.getElementById("slider_value_view");
	        obValueView.innerHTML = sVal
	    }
	</script>


	<script type="text/javascript">
		$(function() {

			$('#mini').slider({
				formatter : function(value) {
					return '현재값:' + value;
				}
			});

			$('#mini').on("slide", function(slideEvt) {
				$("miniVal").text(slideEvt.value);
			});
		});
	</script>

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
		<div class="modal__content" style = 
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
			
		</div>
	</div>



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

<script src="js/index.min.js"></script>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script type="text/javascript" src="js/custom.js"></script>
  
  
  <script>

        //current position
        var pos = 0;
        //number of slides
        var totalSlides = $('#slider-wrap ul li').length;
        //get the slide width
        var sliderWidth = $('#slider-wrap').width();


        $(document).ready(function () {


            /*****************
             BUILD THE SLIDER
            *****************/
            //set width to be 'x' times the number of slides
            $('#slider-wrap ul#slider').width(sliderWidth * totalSlides);

            //next slide  
            $('#next').click(function () {
                slideRight();
            });

            //previous slide
            $('#previous').click(function () {
                slideLeft();
            });



            /*************************
             //*> OPTIONAL SETTINGS
            ************************/
            // automatic slider
            // var autoSlider = setInterval(slideRight, 3000);

            //for each slide 
            $.each($('#slider-wrap ul li'), function () {

                //create a pagination
                var li = document.createElement('li');
                $('#pagination-wrap ul').append(li);
            });

            //counter
            countSlides();

            //pagination
            pagination();

            //hide/show controls/btns when hover
            //pause automatic slide when hover
            $('#slider-wrap').hover(
                function () { $(this).addClass('active'); /* clearInterval(autoSlider); */ },
                function () { $(this).removeClass('active'); /* autoSlider = setInterval(slideRight, 3000); */ }
            );



        });//DOCUMENT READY



        /***********
         SLIDE LEFT
        ************/
        function slideLeft() {
            pos--;
            if (pos == -1) { pos = totalSlides - 1; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));

            //*> optional
            countSlides();
            pagination();
        }


        /************
         SLIDE RIGHT
        *************/
        function slideRight() {
            pos++;
            if (pos == totalSlides) { pos = 0; }
            $('#slider-wrap ul#slider').css('left', -(sliderWidth * pos));

            //*> optional 
            countSlides();
            pagination();
        }




        /************************
         //*> OPTIONAL SETTINGS
        ************************/
        function countSlides() {
            $('#counter').html(pos + 1 + ' / ' + totalSlides);
        }

        function pagination() {
            $('#pagination-wrap ul li').removeClass('active');
            $('#pagination-wrap ul li:eq(' + pos + ')').addClass('active');
        }



    </script>
</body>

</html>