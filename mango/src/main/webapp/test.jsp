<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%String result = request.getParameter("rere");%>
	<script>
	window.onload = function(){
		var re = <%=result%>;
		window.location.href = '${pageContext.request.contextPath}/motor?re='+re;
	}
	</script>	
	


</body>
</html>