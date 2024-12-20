<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<style>
	* {
		font-family: "Noto Sans KR", sans-serif;
	}
	body {
		background-color: #EBF7FF;
		margin: 0px;
	}
	.mid {
		display: flex;
		align-items: center;
		justify-content: center;
		height: 100vh;
	}
	.loginForm {
		background-color: #8EACCD;
		border-radius: 7px;
		text-align: center;
		padding: 10px 20px;
	}
	form {
		padding-right: 15px;
		padding-left: 15px;
	}
	input {
		padding: 15px;
		margin: 10px;
		border: none;
		font-size: 1.2em;
		border-radius: 7px;
	}
	input[type="submit"] {
		width: 271px;
		background-color: #F9F3CC;
		cursor: pointer;
	}
	input[type="submit"]:hover {
	  	background-color: #ffcc99;
	}
	a {
		margin: 20px 10px;
		text-decoration: none;
		color: black;
	}
</style>
</head>
<body>
	<div class="mid">
		<div class="loginForm">
			<p>로그인</p>
			<form action="loginCheck.jsp" method="post">
				<input type="text" name="userID" placeholder="아이디" required="required"/><br/>
				<input type="password" name="userPWD" placeholder="비밀번호" required="reauired"/><br/>
				<input type="submit" value="로그인"/>
			</form>
<%
	String errMSG = (String)request.getAttribute("errMSG");
	if(errMSG != null) {
%>
	<%=errMSG+"<br/>" %>
<%
	} else {
%>
	<%="<br/>" %>
<%
	}
%>
			<a href="home.jsp">HOME</a>
			<a href="joinForm.jsp">회원가입</a>
		</div>
	</div>
</body>
</html>