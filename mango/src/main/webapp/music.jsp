<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
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
    당신의 아침 망고와 함께
  </title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Raleway:400,700&display=swap" rel="stylesheet" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  
  <!-- querys -->
  <script src="js/jquery-3.6.0.min.js"></script>
  <style>
  	#playList {
  		
  		background-image: url('img/music/list2.jpg');
  		background-repeat: no-repeat;
  		background-size: cover;
  		margin-top: 0px;
  	
  	}
  	
  	#modal_open {
  	
		border-color: transparent;
		BACKGROUND-COLOR: transparent;
		
	}
	
	.custom_nav-container.navbar-expand-lg .navbar-nav .nav-item .nav-link2 {
    margin-left: 22px;
    color: #514f4f;
    text-align: center;
    text-transform: uppercase;
    border-radius: 5px;
    
    display: inline-block;
    font-weight: bold;
    color: #488bce;
    
	}
  </style>
</head>
<body class="sub_page demo-1">

	<div class="container" style = "margin-left : 0">
			<canvas id="container" style= "position: absolute;  left: -0.5vw;  width: 100.5vw; height: 100vh;"></canvas>
	<div class="slide" id="slide-1" data-weather="rain" style = "padding:0">
<body class="sub_page" >
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container-fluid" style="padding-right: 32px; padding-left: 32px;">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3" style=" display: inherit; flex-direction: row;">
          <a class="navbar-brand" href="home.jsp">
            <img src="img/mango_logo2.png" alt="logo" style = "width:220px; margin-top:15px;">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item ">
                  <a class="nav-link3" href="home.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link3" href="light.jsp">
                    Light
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link3" href="perfume.jsp">
                    Perfume
                  </a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link3" href="music.jsp" style = "color:black;">
                    Music
                  </a>
                </li>
                
                <li class="nav-item">
				  <button class="nav-link3" id="modal_open" style = "color:black;">Login</button>
				</li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </header>
    <!-- end header section -->
  </div>
  <!-- end hero area -->

  <!-- portfolio section -->

  <section class="portfolio_section layout_padding2-top" style="
    padding-top: 23px;">
    <div class="container">
      <div class="heading_container">
        <h2>MU<span>SIC</span></h2>
        <p>
         오늘 당신의 하루는 어떤가요. 당신만을 위한 음악을 준비 했습니다.
        </p>
      </div>
    </div>
      
	<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <div id="wrapper">
    
    	<div id = "playList" style = "float: right; position: relative; 
        width: 600px; height: 600px; box-sizing: border-box; padding: 90px; max-width:100%;">
            <ul>
                <li><h1 style = "text-align: left">PlayList</h1></li>
                <li>1. BTS - BUTTER</li>
                <li>2. Aespa - Next Level</li>
                <li>3. Brave Girls - 치맛바람</li>
                <li>4. IU - Lilac</li>
                <li>5. SG워너비 - Timeless</li>
                <li>6. 세븐틴 - Falling for U</li>
                <li>7. 오마이걸 - Dun Dun Dance</li>
                <li>8. BTS - Dynamite</li>
                <li>9. IU - 잠못드는 밤 비는 내리고</li>
                <li>10. ITZY - 마.피.아. In the morning</li>
            </ul>

        </div>
    
        <div id="slider-wrap" style = "max-width: 100%">
            <ul id="slider">
                <li>
                    <div>
                        <h3>BTS</h3>
                        <span>BUTTER</span>
                    </div>
                    <img src="img/music/BTS_BUTTER.jpg">
                </li>

                <li>
                    <div>
                        <h3>Aespa</h3>
                        <span>Next Level</span>
                    </div>
                    <img src="img/music/Aespa_nextLevel.jpg">
                </li>

                <li>
                    <div>
                        <h3>Brave Girls</h3>
                        <span>치맛바람</span>
                    </div>
                    <img src="./img/music/BraveGirs_chiMaBaRam.jpg">
                </li>

                <li>
                    <div>
                        <h3>IU</h3>
                        <span>Lilac</span>
                    </div>
                    <img src="./img/music/IU_lilac.jpg">
                </li>

                <li>
                    <div>
                        <h3>SG워너비</h3>
                        <span>Timeless</span>
                    </div>
                    <img src="./img/music/SGwannabe_timeless.jpg">
                </li>

                <li>
                    <div>
                        <h3 style = "color: black">세븐틴</h3>
                        <span>Falling for U</span>
                    </div>
                    <img src="./img/music/Falling_for_U.jpg">
                </li>
                
                <li>
                    <div>
                        <h3 style = "color: black">오마이걸</h3>
                        <span>Dun Dun Dance</span>
                    </div>
                    <img src="./img/music/OMG_DunDunDance.jpg">
                </li>
                
                <li>
                    <div>
                        <h3 style = "color: black">BTS</h3>
                        <span>Dynamite</span>
                    </div>
                    <img src="./img/music/BTS_DYNAMITE.jpg">
                </li>
                
                <li>
                    <div>
                        <h3 style = "color: black">IU</h3>
                        <span>잠못드는밤 비는 내리고</span>
                    </div>
                    <img src="./img/music/IU_NIGHT.jpg">
                </li>
                
                <li>
                    <div>
                        <h3 style = "color: black">ITZY</h3>
                        <span>마.피.아. In the morning</span>
                    </div>
                    <img src="./img/music/ITZY_MAFIA.jpg">
                </li>


            </ul>

            <!--controls-->
            <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
            <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
            <div id="counter"></div>

            <div id="pagination-wrap">
                <ul>
                </ul>
            </div>
            <!--controls-->

        </div>

    </div>
      
  </section>

  <!-- end portfolio section -->

    <!-- footer section -->
    <section class=" footer_section">
      <div class="container">
        <p>
          &copy; <span id="displayYear"></span> Copyright2021. Mango 
          <span>All pictures cannot be copied without permission.</span>
        </p>
      </div>
    </section>
    
    </div>
	</div>
    <!-- footer section -->

  <!-- end info section -->
<<<<<<< HEAD
	
 <style>
=======
		<script src="js/index.min.js"></script>
		
		
  <style>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-IoT-4/Mango.git
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

/* ::placeholder {
	color : white;
} */

</style>

	<!--id menu-->
	<div class="modal hidden" >
		<div class="modal__overlay"></div>
<<<<<<< HEAD
		<div class="modal__content" 
			style = 
			"background-image: url('img/login3.jpg');
	 		background-repeat: no-repeat;
	  		background-size: cover;
	  		background-position: center;
	  		">
			<button style="margin-left: 100%; display: none;" >X</button>
=======
		<div class="modal__content">
			<button style="margin-left: 100%; display: none;">X</button>
>>>>>>> branch 'master' of https://github.com/2021-SMHRD-KDT-IoT-4/Mango.git

			<ul style='list-style: none;'>
				<li><h5
						style='font-family: Nanum Gothic, sans-serif; font-weight: bold; margin-top: 18px;'>LOGIN</h5></li>
				<form action="#">
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
				<li><h5 style='font-family: Nanum Gothic, sans-serif; font-weight: bold'>회원가입</h5></li>
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