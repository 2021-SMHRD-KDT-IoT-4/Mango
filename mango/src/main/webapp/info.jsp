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

  <title>
    ����� ��ħ ����� �Բ�
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
  	
  	#modal_open {
		border-color: transparent;
		BACKGROUND-COLOR: transparent;
		
	  }

	  #setting {
	  	text-align: center;
	  }
	  
	  #setTable {
	  	
	  	width: 50%;
	  	height: 30%;
	  	margin: auto;
	  
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
<body class="sub_page" style = "background:white">
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
        <h2>INFOR<span>MATION</span></h2>
        <p>
         ȸ������
        </p>
      </div>
    </div>
    
    <p>
	   <input type="button" value="����">
	   <input type="button" value="ȸ����������">
	</p>
      
    <div id = "setting">
	   <form>
			<table id = "setTable" border = "1">
				<tr>
					<td>����1</td>
					<td>���1</td>
					<td>����1</td>
					<td>�ð�1</td>
					<td>����1</td>
				</tr>
				
				<tr>
					<td>����2</td>
					<td>���2</td>
					<td>����2</td>
					<td>�ð�2</td>
					<td>����2</td>
				</tr>
				
				<tr>
					<td>����3</td>
					<td>���3</td>
					<td>����3</td>
					<td>�ð�3</td>
					<td>����3</td>
				</tr>
				
				<tr>
					<td>����4</td>
					<td>���4</td>
					<td>����4</td>
					<td>�ð�4</td>
					<td>����4</td>
				</tr>
				
				<tr>
					<td>����5</td>
					<td>���5</td>
					<td>����5</td>
					<td>�ð�5</td>
					<td>����5</td>
				</tr>
				
			</table>   
	  
		  <select name="setting" >
		    <option value="none" selected>=== �ɼ� ===</option>
		    <option value="s1">����1</option>
		    <option value="s2">����2</option>
		    <option value="s3">����3</option>
		    <option value="s4">����4</option>
		    <option value="s5">����5</option>
		  </select>
		  
		  <select name="perfume" >
		    <option value="none" selected>==== ��� ====</option>
		    <option value="p1">Floral</option>
		    <option value="p2">Citrus</option>
		    <option value="p3">Fruity</option>
		    <option value="p4">Woody</option>
		    <option value="p5">Green</option>
		    <option value="p6">Musk</option>
		    <option value="p7">Oriental</option>
		    <option value="p8">Aqua</option>
		    <option value="p9">Spicy</option>
		    <option value="p10">Gourmand</option>
		    <option value="p11">Powdery</option>
		    <option value="p12">Chypre</option>
		    <option value="p13">Aldehyde</option>
		    <option value="p14">Fougere</option>
		    <option value="p15">Fresh</option>
		    <option value="p16">Tabacco leather</option>
		  </select>
		  
		  <select name="weather" >
		    <option value="none" selected>=== ���� ===</option>
		    <option value="w1">����</option>
		    <option value="w2">��</option>
		    <option value="w3">�帲</option>
		    <option value="w4">��</option>
		  </select>
		  
		  <select name="time" >
		    <option value="none" selected>=== �ð� ===</option>
		    <option value="t6">06:00</option>
		    <option value="t7">07:00</option>
		    <option value="t8">08:00</option>
		    <option value="t9">09:00</option>
		    <option value="t10">10:00</option>
		    <option value="t11">11:00</option>
		    <option value="t12">12:00</option>
		    <option value="t13">13:00</option>
		    <option value="t14">14:00</option>
		    <option value="t15">15:00</option>
		    <option value="t16">16:00</option>
		    <option value="t17">17:00</option>
		    <option value="t18">18:00</option>
		    <option value="t19">19:00</option>
		    <option value="t20">20:00</option>
		    <option value="t21">21:00</option>
		    <option value="t22">22:00</option>
		    <option value="t23">23:00</option>
		    <option value="t24">24:00</option>
		  </select>
		  
		  <select name="music" >
		    <option value="none" selected>=== ���� ===</option>
		    <option value="m1">Ʈ��1</option>
		    <option value="m2">Ʈ��2</option>
		    <option value="m3">Ʈ��3</option>
		    <option value="m4">Ʈ��4</option>
		    <option value="m5">Ʈ��5</option>
		    <option value="m6">Ʈ��6</option>
		    <option value="m7">Ʈ��7</option>
		    <option value="m8">Ʈ��8</option>
		    <option value="m9">Ʈ��9</option>
		    <option value="m10">Ʈ��10</option>
		    <option value="m11">Ʈ��11</option>
		    <option value="m12">Ʈ��12</option>
		    <option value="m13">Ʈ��13</option>
		    <option value="m14">Ʈ��14</option>
		    <option value="m15">Ʈ��15</option>
		  </select>
		  
	      <p>
	      	<input type="submit" value="����">
	      </p>
	   
	   </form>
	   
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
    <!-- footer section -->

  <!-- end info section -->
	
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

/* ::placeholder {
	color : white;
} */

</style>

	<!--id menu-->
	<div class="modal hidden" >
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
				<form action="#">
					<li><input type="text" name=id class = "ip" placeholder="Email�� �Է��ϼ���."></li>
					<li><input type="password" name=pw class = "ip" placeholder="Password�� �Է��ϼ���."></li>
					<li>
						<input type="submit" value="LogIn" class="button fit">
						<input type="submit" value="join" class="button fit">
					</li>
					
				</form>
			</ul>
			<div class=blankt></div>
			
			<!-- <ul style='list-style: none;'>
				<li><h5 style='font-family: Nanum Gothic, sans-serif; font-weight: bold'>ȸ������</h5></li>
				<form action="#" method=post>
					<li><input type="text" name=id placeholder="Email�� �Է��ϼ���"></li>
					<li><input type="password" name=pw placeholder="PW�� �Է��ϼ���"></li>
					<li><input type="text" name=tel placeholder="��ȭ��ȣ�� �Է��ϼ���"></li>
					<li><input type="text" name=addr placeholder="���ּҸ� �Է��ϼ���"></li>
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