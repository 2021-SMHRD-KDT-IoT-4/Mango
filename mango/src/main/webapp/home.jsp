<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.parser.ParseException"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="MODEL.OtherDTO"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>당신의 하루 망고와 함께</title>
	<meta name="description" content="Some WebGL experiments with raindrop effects" />
	<meta name="keywords" content="webgl, raindrops, effect, rain, web, video, background" />
	<meta name="author" content="Lucas Bebber for Codrops" />
	<link rel="shortcut icon" href="favicon.ico">
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,500,900' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
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
  <!-- <link rel="stylesheet" type="text/css" href="css/bootstrap.css" /> -->

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />

	
</head>
<body class="demo-1" id = "body">
	
	<%
	OtherDTO date = new OtherDTO();
	int gYear = date.getYear();
	String gMonth = date.getMonth();
	%>
			<%String downJson=""; %>

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
	
	
		<header class="codrops-header" >
			<div class="codrops-links">
				<!-- <a class="codrops-icon codrops-icon--prev" href="http://tympanus.net/Development/CardStackEffects/" title="Previous Demo"><span>Previous Demo</span></a>
				<a class="codrops-icon codrops-icon--drop" href="http://tympanus.net/codrops/?p=25417" title="Back to the article"><span>Back to the Codrops article</span></a> -->
			</div>
			<h1>Team Mango<%=downJson%></h1>
			<nav class="codrops-demos">
				<a class="current-demo" href="home.jsp">HOME</a>
				<a href="light.jsp">LIGHT</a>
				<a href="perfume.jsp">PERFUME</a>
				<a href="music.jsp">MUSIC</a>
				<% String id = null;
				id = (String) session.getAttribute("id");
				if(id == null){%>
				<button id = "modal_open">LOGIN</button>
				<a href = "join.jsp">JOIN</a><%}else{ %>
				<a href = "#">MY PAGE</a>
				<a href = "LogoutCon.do">LOGOUT</a>
				<%} %>
			</nav>
		</header>
		

		
<%	
String URI = "http://api.openweathermap.org/data/2.5/forecast?q=Gwangju&appid=01302211c0ad8247844362fd2d8280f7";

URL url = new URL(URI);
BufferedReader bf;
String line;
String result="";

bf = new BufferedReader(new InputStreamReader(url.openStream()));

while((line=bf.readLine())!=null){
    result=result.concat(line);
    
}

////문자열을 JSON으로 파싱
JSONParser jsonParser = new JSONParser();
JSONObject jsonObj = null;
try {
	jsonObj = (JSONObject) jsonParser.parse(result);
} catch (ParseException e) {
	e.printStackTrace();
}


JSONArray arr = (JSONArray)jsonObj.get("list");

double temp = 0;
ArrayList<String> finalResult = new ArrayList<String>();


for(int i=0;i<arr.size();i+=7){
	JSONObject tmp = (JSONObject)arr.get(i);//인덱스 번호로 접근해서 가져온다.

	
	JSONObject weather = (JSONObject)tmp.get("main");

	double ktemp = Double.parseDouble(weather.get("temp").toString());
	temp = ktemp-273.15;
	
	finalResult.add(String.format("%.1f", temp));
	
}

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
/* System.out.println("날씨 : "+wea.get("main")); */


%>


		<div class="slideshow">
			<canvas width="1" height="1" id="container" style="position:absolute" ></canvas>
			<!-- style="position:absolute" -->
			<%String dataW = "";
			String dataR = "";
			String todayW = (String)wea.get("main");
			if(todayW.equals("Thunderstorm"))dataR = "storm";
			if(todayW.equals("Drizzle"))dataR = "drizzle";
			if(todayW.equals("Rain"))dataR = "rain";
			if(todayW.equals("Clear"))dataR = "sunny";
			if(todayW.equals("Clouds"))dataR = "fallout";
			
	 %>
			<!-- Heavy Rain -->
			<div class="slide" style= "padding : 35vh 0 0 0" id="slide-1" data-weather="<%=dataR%>">
				<div class="slide__element slide__element--date"><%=date.getDay(0) %>, <%=date.getDayOfWeek(0)%> <sup>th</sup> of <%=gMonth %> <%=gYear%></div>
			
				<div id ="javatest"></div>
				<script>
			<%-- 	var timer = setInterval(function(){
				var dTime = "<%=date.getTime()%>";
				document.getElementById("javatest").innerText = dTime;
				},2000);
				  --%>
				
				var now_day = new Date();
				var nDay = now_day.getHours();
				if(nDay>=17 && nDay<=18) console.log("아침입니다");
				else {
					console.log("메세지 기능 활성화");
					 document.getElementById("javatest").innerHTML = "<a href = 'message.jsp'>Message</a>";}
			
				</script>
				<div class="slide__element slide__element--temp"></div>
			</div>
			<!-- Drizzle -->
			<div class="slide" style= "padding : 35vh 0 0 0" id="slide-2" data-weather="drizzle">
				<div class="slide__element slide__element--date"><%=date.getDay(1) %>, <%=date.getDayOfWeek(1)%> <sup>th</sup> of <%=gMonth %> <%=gYear%></div>
				<div class="slide__element slide__element--temp"><%=finalResult.get(0)%>°<small>C</small></div>
			</div>
			<!-- Sunny -->
			<div class="slide" style= "padding : 35vh 0 0 0" id="slide-3" data-weather="sunny">
				<div class="slide__element slide__element--date"><%=date.getDay(2)%>, <%=date.getDayOfWeek(2)%> <sup>th</sup> of <%=gMonth %> <%=gYear%></div>
				<div class="slide__element slide__element--temp"><%=finalResult.get(1)%>°<small>C</small></div>
			</div>
			<!-- Heavy rain -->
			<div class="slide" style= "padding : 35vh 0 0 0" id="slide-5" data-weather="storm">
				<div class="slide__element slide__element--date"><%=date.getDay(3) %>, <%=date.getDayOfWeek(3)%> <sup>th</sup> of <%=gMonth %> <%=gYear%></div>
				<div class="slide__element slide__element--temp"><%=finalResult.get(2)%>°<small>C</small></div>
			</div>
			<!-- Fallout (greenish overlay with slightly greenish/yellowish drops) -->
			<div class="slide" style= "padding : 35vh 0 0 0" id="slide-4" data-weather="fallout">
				<div class="slide__element slide__element--date"><%=date.getDay(4) %>, <%=date.getDayOfWeek(4)%> <sup>th</sup> of <%=gMonth %> <%=gYear%></div>
				<div class="slide__element slide__element--temp"><%=finalResult.get(3)%>°<small>C</small></div>
			</div>
			<nav class="slideshow__nav" style = "margin-bottom: 50px;">	
	
				<a class="nav-item" href="#slide-1" style = "margin:17.5px;"><i class="icon icon--rainy"></i><span><%=gMonth%>/<%=date.getDay(0)%></span></a>
				<a class="nav-item" href="#slide-2" style = "margin:17.5px;"><i class="icon icon--drizzle"></i><span><%=gMonth%>/<%=date.getDay(1)%></span></a>
				<a class="nav-item" href="#slide-3" style = "margin:17.5px;"><i class="icon icon--sun"></i><span><%=gMonth%>/<%=date.getDay(2)%></span></a>
				<a class="nav-item" href="#slide-5" style = "margin:17.5px;"><i class="icon icon--storm"></i><span><%=gMonth%>/<%=date.getDay(3)%></span></a>
				<a class="nav-item" href="#slide-4" style = "margin:17.5px;"><i class="icon icon--radioactive"></i><span><%=gMonth%>/<%=date.getDay(4)%></span></a>
			</nav>
		</div>
		<p class="nosupport">Sorry, but your browser does not support WebGL!</p>
	</div>
	<!-- /container -->
	<script src="js/index.min.js"></script>
	<script src="js/jquery-3.6.0.min.js"></script>
	
	<script>
var apiURI = "http://api.openweathermap.org/data/2.5/weather?q=Gwangju&appid="+"01302211c0ad8247844362fd2d8280f7";
$.ajax({
    url: apiURI,
    dataType: "json",
    type: "GET",
    async: "false",
    success: function(data) {
    	
        console.log("현재온도 : "+ (data.main.temp- 273.15) );
        console.log("현재습도 : "+ data.main.humidity);
        console.log("날씨 : "+ data.weather[0].main );
        console.log("상세날씨설명 : "+ data.weather[0].description );
        console.log("날씨 이미지 : "+ data.weather[0].icon );
        console.log("바람   : "+ data.wind.speed );
        console.log("나라   : "+ data.sys.country );
        console.log("도시이름  : "+ data.name );
        console.log("구름  : "+ (data.clouds.all) +"%" );       
        
        $('#slide-1>.slide__element--temp').html((data.main.temp- 273.15).toFixed(1)+'°<small>C</small>');
    }
})
</script>

 <style>
.modal {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	z-index: 900;
	 display: none !important;
	
}

#modal_open {
	
	height: 30px;
    width: 60px;
    border-radius: 10px;
    color: #252445;
    font-weight: bold;
    background-color: #D7F1FA;
    border-color: transparent;
    background: transparent;
   

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
			modal.setAttribute("style", "display:block !important");
			modal.classList.remove(HIDDEN);
		}

		overlayModal.addEventListener('click', closeModal);
		modalCloseBtn.addEventListener('click', closeModal);
		modalOpenBtn.addEventListener('click', openModal);
	</script>

</body>
</html>
