<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
<style>
	body {
		background-color: #EBF7FF;
	}
	.mid {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
	}
	.welcome {
		text-align: center;
	}
</style>
</head>
<body>
<%
	String userName = (String)session.getAttribute("USERNAME");
%>

<script>
    <%--페이지 로딩 후 5000 밀리초(5초) 후에 지정한 URL로 이동--%>
    setTimeout(function() {
        window.location.href = "home.jsp";
    }, 5000); <%--// 5000 밀리초 = 5초--%>
</script>

<div class="mid">
	<div class="welcome">
		<h1><%=userName %>님! 환영합니다.</h1><br/>
		<h2>5초 후 자동으로 이동합니다.</h2>
	</div>
</div>
</body>
</html>