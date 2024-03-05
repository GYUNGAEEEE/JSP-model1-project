<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
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
	form {
		padding: 10px 15px;
	}
	input {
		width: 200px;
		padding: 10px 15px;
		font-size: 1.2em;
		border: none;
		border-radius: 7px;
		cursor: pointer;
		background-color: #F9F3CC;
	}
	input:hover {
	  	background-color: #ffcc99;
	}
</style>
</head>
<body>
	<div class="mid">
		<div class="welcome">
			<h1>Welcome to WOODY!</h1>
			<form action="loginForm.jsp" method="post">
				<input type="submit" value="로그인"/>
			</form>
			<form action="joinForm.jsp" method="post">
				<input type="submit" value="회원가입"/>
			</form>
		</div>
	</div>
</body>
</html>