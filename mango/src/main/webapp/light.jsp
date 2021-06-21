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


<title>Diffuso</title>

<style>
#wcat {
	text-align: center;
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



<body class="sub_page">
	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">
			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container pt-3">
					<a class="navbar-brand" href="index.html"> <img
						src="images/logo.png" alt="" />
					</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div
							class="d-flex ml-auto flex-column flex-lg-row align-items-center">
							<ul class="navbar-nav  ">
								<li class="nav-item "><a class="nav-link" href="index.html">Home
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item active"><a class="nav-link"
									href="light.jsp"> Light </a></li>
								<li class="nav-item"><a class="nav-link"
									href="perfume.jsp"> Perfume </a></li>
								<li class="nav-item"><a class="nav-link"
									href="music.jsp"> Music </a></li>
								<li class="nav-item"><a class="nav-link"
									href="contact.jsp">Contact Us</a></li>
								<li class="nav-item">
									<button class="nav-link" id="modal_open">Login</button>
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
		<!-- end header section -->
	</div>
	<!-- end hero area -->

	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
		
	</script>
	<script type="text/javascript" src="js/custom.js"></script>

	<!-- mood lamp area -->
	
	<br>
	<br>


	<div id="wcat">
		<img src="img/wcat.png" width="400">
	</div>

	<div class="container">


		<div class="panel panel-default">
			<div class="pannel-heading"></div>
			<div class="panel-body" align="center">

				<!--슬라이더로 선택할 input-->
				<input id="mini" type="text" data-slider-min="0" data
					slider-max="10" data-slider-step="1" data-slidr-value="0"><span>
					<br>현재 선택 값: <span id="miniVal">0</span>
				</span>
			</div>
		</div>
	</div>

	<section class=" footer_section">
		<div class="container">
			<p>
				&copy; <span id="displayYear"></span> Copyright2021. Mango <span>All
					pictures cannot be copied without permission.</span>
			</p>
		</div>
	</section>

s
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-slider.js"></script>


	<script>
		// Without JQuery

		$('#mini').on("slide", function(sliderValue) {
			var val = $('#mini').val();
			document.getElementById("miniVal").textContent = val;
		});
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
	width: 50%;
	margin-left: 20%;
	margin-top: 10%;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.19), 0 6px 6px
		rgba(0, 0, 0, 0.23);
	z-index: 1200;
}

.blankt {
	width: 20%;
	height: 10%;
}
</style>

	<!--id menu-->
	<div class="modal hidden">
		<div class="modal__overlay"></div>
		<div class="modal__content">
			<button style="margin-left: 100%;">X</button>

			<ul style='list-style: none;'>
				<li><h5
						style='font-family: Nanum Gothic, sans-serif; font-weight: bold'>로그인</h5></li>
				<form action="#">
					<li><input type="text" name=id placeholder="Email을 입력하세요"></li>
					<li><input type="password" name=pw placeholder="PW를 입력하세요"></li>
					<li><input type="submit" value="LogIn" class="button fit"></li>
				</form>
			</ul>
			<div class=blankt></div>
			<ul style='list-style: none;'>
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
</body>

</html>